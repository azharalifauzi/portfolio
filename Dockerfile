# Use the official Node.js 22 image required by the current Astro release
FROM node:22-alpine AS base

# Enable corepack globally
RUN corepack enable

WORKDIR /usr/src/app

# Create a non-root user and group
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Install dependencies into a temporary directory
# This will cache them and speed up future builds
FROM base AS install
RUN mkdir -p /temp/dev
COPY package.json yarn.lock .yarnrc.yml /temp/dev/
# Enable corepack and install dependencies
RUN cd /temp/dev && yarn install --immutable

# Copy node_modules from temp directory
# Then copy all (non-ignored) project files into the image
FROM base AS prerelease
COPY --from=install /temp/dev/node_modules ./node_modules
COPY --from=install /temp/dev/.yarnrc.yml ./.yarnrc.yml
COPY . .

# Run build
RUN yarn build

# Copy runtime dependencies and the built server into the final image
FROM base AS release

# The Astro Node adapter keeps some dependencies external at runtime.
COPY --from=install /temp/dev/node_modules /usr/src/app/node_modules
COPY --from=prerelease /usr/src/app/dist /usr/src/app/

# Change ownership of the application folder to the non-root user
RUN chown -R appuser:appgroup /usr/src/app

# Switch to the non-root user
USER appuser

# Run the app
ENV HOST=0.0.0.0
ENV PORT=4321
EXPOSE 4321/tcp
CMD [ "node", "./server/entry.mjs" ]
