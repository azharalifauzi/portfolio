# Repository Guidelines

## Project Structure & Module Organization

This repository is an Astro portfolio site with Vue components and Tailwind CSS.

- `src/pages/` contains route entry points, including `index.astro` and project pages.
- `src/layouts/` contains shared page shells; `src/components/` contains reusable UI.
- `src/features/` groups feature-specific Vue components, constants, and assets (for example, `home/` and `projects/`).
- `src/utils/` holds shared TypeScript helpers, while `src/env.d.ts` contains environment typings.
- `public/` contains files served unchanged, such as the favicon.
- `astro.config.mjs`, `tailwind.config.mjs`, and `tsconfig.json` define the build, styling, and TypeScript setup.

Keep feature code and its assets together where practical; use the `@/*` alias for imports from `src`.

## Build, Test, and Development Commands

Use Yarn 4 (`packageManager` is pinned in `package.json`) from the repository root:

- `yarn install --immutable` installs the exact lockfile dependencies.
- `yarn dev` starts the local Astro server at `http://localhost:4321`.
- `yarn build` runs `astro check` and creates the production server in `dist/`.
- `yarn preview` serves the built output locally.
- `docker build -t portfolio .` builds the production container; `docker run -p 4321:4321 portfolio` runs it.

There is currently no separate unit-test or lint script. Run `yarn build` before submitting changes to catch type and Astro validation errors.

## Coding Style & Naming Conventions

Use two-space indentation, semicolons, single quotes, and TypeScript for shared logic. Follow the existing conventions: PascalCase for Vue components, lowercase or kebab-case for route files, and descriptive camelCase for variables and functions. Prefer Tailwind utility classes for styling and keep page-specific styles close to their component.

## Testing Guidelines

No test framework or coverage threshold is configured. For UI changes, run `yarn build` and manually verify affected routes with `yarn dev` or `yarn preview`, including responsive behavior when relevant.

## Commit & Pull Request Guidelines

Commits use short, imperative-style conventional prefixes such as `feat:`, `fix:`, and `chore:` (for example, `fix: prevent video playback failure on iOS`). Keep commits focused. Pull requests should explain the user-facing change, list validation commands, link related issues when applicable, and include screenshots or recordings for visual changes.

## Configuration & Deployment Notes

The site builds as a standalone Node server through `@astrojs/node`. Keep secrets out of tracked files, document required environment variables, and preserve the Docker runtime defaults (`HOST=0.0.0.0`, `PORT=4321`) unless deployment requirements change.
