<script setup lang="ts">
import aiImageEditorMedia from './assets/piktochart/ai-image-editor.png?url';
import aiInfographicEditorMedia from './assets/piktochart/ai-infographic-editor.png?url';
import shapeToolsDemo from './assets/piktochart/shape-tools-demo.webm?url';

const aiImageEditorChallenges = [
  'Connected AI entry points across the context menu, property bar, and sidebar.',
  'Managed long-running operations such as background removal, including loading, locked actions, and safe re-entry into the active tool.',
  'Preserved canvas behaviors such as selection, drag-and-drop, scaling, and rotation while switching into AI tool views.',
];

const shapePhases = [
  {
    phase: 'Phase 1',
    title: 'Initial shape tools',
    description: 'Built the first version of the shape-editing system from proof of concept through production.',
  },
  {
    phase: 'Phase 2',
    title: 'Border manipulation',
    description: 'Added border radius and border styles across rectangles, stars, pentagons, octagons, arrows, trapeziums, and other polygons.',
  },
  {
    phase: 'Phase 3',
    title: 'Text inside shapes',
    description: 'Added the ability to place and edit text directly inside a shape.',
  },
];

const studioContributions = [
  {
    date: 'Q4 2023',
    title: 'Early AI Editor experience',
    description: 'Built the format-selection UI, home page layout, editor-page UI, and template-selection sidebar. Integrated the UI with the core generation logic developed by other engineers.',
  },
  {
    date: 'May 2024',
    title: 'Adaptive Block',
    description: 'Created the frontend workflow that matched AI-generated content to tagged template blocks and automatically copied and populated the required pages.',
  },
  {
    date: 'March 2025',
    title: 'Additional Instructions',
    description: 'Added an instruction field and passed its value into the generation prompt so users could provide more context.',
  },
];
</script>

<template>
  <main class="overflow-hidden">
    <section class="px-4 md:px-6 pt-32 pb-20 md:pt-40 md:pb-28">
      <div class="max-w-7xl mx-auto">
        <a
          href="/#project"
          class="inline-flex items-center gap-2 font-mono text-[11px] uppercase tracking-[0.16em] hover:text-[#3984ff] transition-colors"
        >
          ← Back to selected work
        </a>
        <div class="grid grid-cols-2 md:grid-cols-4 border-y border-black/15 mt-10 font-mono text-[10px] uppercase tracking-[0.14em]">
          <div class="py-3 border-r border-black/15">001 / Piktochart</div>
          <div class="py-3 px-3 border-r border-black/15">Professional work</div>
          <div class="hidden md:block py-3 px-3 border-r border-black/15">2022 — present</div>
          <div class="col-span-2 border-t border-black/15 py-3 px-0 text-left md:col-span-1 md:border-t-0 md:px-3 md:text-right">Three initiatives</div>
        </div>
        <div class="grid lg:grid-cols-[1.1fr_0.9fr] gap-10 lg:gap-20 pt-16 md:pt-24">
          <div>
            <p class="font-mono text-xs uppercase tracking-[0.18em] text-[#3984ff]">Product work at Piktochart</p>
            <h1 class="text-6xl md:text-8xl lg:text-[8.5rem] leading-[0.78] tracking-[-0.1em] font-semibold mt-7">
              Tools for<br />the <span class="text-[#3984ff]">creative</span><br />next move.
            </h1>
          </div>
          <div class="flex flex-col justify-end">
            <p class="text-xl md:text-3xl leading-[1.05] tracking-[-0.045em] max-w-xl">
              A collection of frontend-led initiatives I helped build across
              Piktochart’s main editor and Pikto AI Studio.
            </p>
            <a
              href="https://piktochart.com/generative-ai/editor/?format=image-generator"
              target="_blank"
              rel="noopener noreferrer"
              class="mt-10 inline-flex self-start items-center gap-3 bg-[#171817] text-[#f5f1e8] px-5 py-4 font-mono text-xs uppercase tracking-[0.16em] hover:bg-[#3984ff] transition-colors"
            >
              View Pikto AI Studio →
            </a>
          </div>
        </div>
      </div>
    </section>

    <section id="ai-image-editor" class="bg-[#171817] text-[#f5f1e8] px-4 md:px-6 py-20 md:py-28">
      <div class="max-w-7xl mx-auto">
        <div class="grid md:grid-cols-[0.18fr_0.82fr] gap-5 mb-12 md:mb-16">
          <p class="font-mono text-sm md:text-base font-medium text-[#d8ff3e]">01</p>
          <div>
            <p class="font-mono text-sm md:text-base uppercase tracking-[0.18em] text-[#d8ff3e]">Pikto AI Studio / AI Image Editor</p>
            <h2 class="mt-5 text-5xl md:text-7xl tracking-[-0.08em] leading-[0.84] font-semibold max-w-4xl">
              AI image tools,<br />inside the editor.
            </h2>
          </div>
        </div>
        <div class="grid lg:grid-cols-[1.1fr_0.9fr] gap-5">
          <div class="relative self-start overflow-hidden bg-[#d8ff3e] p-3 md:p-6">
            <div class="absolute -right-16 -top-16 h-52 w-52 rounded-full border-[2rem] border-[#3984ff]"></div>
            <div class="absolute -bottom-8 -left-8 h-24 w-24 rotate-45 bg-[#171817]"></div>
            <div class="media-frame-16-9 relative z-10 overflow-hidden border border-black/15 bg-white shadow-[10px_10px_0_#171817]">
              <img
                :src="aiImageEditorMedia"
                alt="Piktochart AI Image Editor showing the image upscaler tool"
                class="absolute inset-0 h-full w-full object-contain"
              />
            </div>
          </div>
          <div class="border border-white/20 p-6 md:p-8">
            <p class="text-lg md:text-2xl leading-snug tracking-[-0.025em]">
              I was the frontend lead and primary implementer for bringing AI image capabilities into the main Piktochart Editor. The team had two frontend developers and one backend developer; I also helped choose Replicate as the underlying AI technology.
            </p>
            <div class="grid grid-cols-2 gap-x-5 gap-y-8 mt-12 font-mono text-[10px] uppercase tracking-[0.14em]">
              <div>
                <p class="text-white/45 mb-2">Role</p>
                <p>Frontend lead</p>
              </div>
              <div>
                <p class="text-white/45 mb-2">Team</p>
                <p>2 FE · 1 BE</p>
              </div>
              <div>
                <p class="text-white/45 mb-2">Timeline</p>
                <p>Jun — Aug 2025</p>
              </div>
              <div>
                <p class="text-white/45 mb-2">Technology</p>
                <p>Replicate</p>
              </div>
            </div>
            <div class="border-t border-white/20 mt-12 pt-5">
              <p class="font-mono text-[10px] uppercase tracking-[0.16em] text-[#d8ff3e]">Capabilities</p>
              <p class="mt-4 text-white/75 leading-relaxed">Image generation, object erasing, image upscaling, image restoration, and background removal.</p>
            </div>
          </div>
        </div>
        <div class="grid md:grid-cols-2 gap-5 mt-5">
          <div class="border border-white/20 p-6 md:p-8">
            <p class="font-mono text-[10px] uppercase tracking-[0.16em] text-[#d8ff3e]">Frontend challenge</p>
            <ul class="mt-6 space-y-5 text-white/75 leading-relaxed">
              <li v-for="challenge in aiImageEditorChallenges" :key="challenge" class="grid grid-cols-[1.2rem_1fr] gap-3">
                <span class="text-[#d8ff3e]">•</span>
                <span>{{ challenge }}</span>
              </li>
            </ul>
          </div>
          <div class="outcome-card bg-[#d8ff3e] p-6 md:p-8">
            <p class="font-mono text-[10px] uppercase tracking-[0.16em] text-[#171817]">Outcome</p>
            <p class="mt-6 text-2xl md:text-3xl leading-tight tracking-[-0.04em] font-semibold text-[#171817]">Enabled the successful launch of Pikto AI Studio, which received strong Product Hunt feedback and became one of Piktochart’s main product selling points. The broader launch increased visual generations among AI Image users by 34% and AI App sign-ups by +1,000%.</p>
            <p class="mt-5 font-mono text-[10px] uppercase tracking-[0.14em] text-[#171817]">Approx. #4 on Product Hunt · 73% of generated visuals downloaded</p>
          </div>
        </div>
      </div>
    </section>

    <section id="shape-tools" class="px-4 md:px-6 py-20 md:py-28">
      <div class="max-w-7xl mx-auto">
        <div class="grid md:grid-cols-[0.18fr_0.82fr] gap-5 mb-12 md:mb-16">
          <p class="font-mono text-sm md:text-base font-medium text-[#3984ff]">02</p>
          <div>
            <p class="font-mono text-sm md:text-base uppercase tracking-[0.18em] text-[#3984ff]">Advanced shape tools</p>
            <h2 class="mt-5 text-5xl md:text-7xl tracking-[-0.08em] leading-[0.84] font-semibold max-w-4xl">
              Precision without<br />breaking the flow.
            </h2>
          </div>
        </div>
        <div class="grid lg:grid-cols-[0.9fr_1.1fr] gap-5">
          <div class="border border-black/15 p-6 md:p-8 order-2 lg:order-1">
            <p class="text-lg md:text-2xl leading-snug tracking-[-0.025em]">
              As the sole frontend developer on Shape Tools, I took the work from the initial proof of concept through production. The feature improved editing flexibility and helped our designers create templates for users more productively.
            </p>
            <div class="border-t border-black/15 mt-12 pt-5">
              <p class="font-mono text-[10px] uppercase tracking-[0.16em] text-[#3984ff]">Three phases · Jun — Sep 2023</p>
              <div class="mt-6">
                <div v-for="phase in shapePhases" :key="phase.phase" class="grid grid-cols-[5rem_1fr] gap-4 border-b border-black/15 py-5 first:pt-0 last:border-b-0">
                  <p class="font-mono text-[10px] uppercase tracking-[0.14em] text-black/45">{{ phase.phase }}</p>
                  <div>
                    <p class="font-semibold tracking-[-0.02em]">{{ phase.title }}</p>
                    <p class="mt-2 text-sm leading-relaxed text-black/60">{{ phase.description }}</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="relative self-start overflow-hidden bg-[#3984ff] p-3 md:p-6 order-1 lg:order-2">
            <div class="absolute -right-16 -top-16 h-52 w-52 rounded-full border-[2rem] border-[#d8ff3e]"></div>
            <div class="absolute -bottom-8 -left-8 h-24 w-24 rotate-45 bg-[#171817]"></div>
            <div class="media-frame-16-9 relative z-10 overflow-hidden border border-black/15 bg-[#171817] shadow-[10px_10px_0_#171817]">
              <video
                class="absolute inset-0 h-full w-full object-contain"
                autoplay
                muted
                loop
                playsinline
                preload="metadata"
                aria-label="Shape Tools demo"
              >
                <source :src="shapeToolsDemo" type="video/webm" />
              </video>
            </div>
          </div>
        </div>
        <div class="grid md:grid-cols-2 gap-5 mt-5">
          <div class="border border-black/15 p-6 md:p-8">
            <p class="font-mono text-[10px] uppercase tracking-[0.16em] text-[#3984ff]">Technical foundation</p>
            <p class="mt-5 leading-relaxed text-black/65">Built from scratch with SVG geometry and <span class="font-mono text-xs">svg-path-commander</span>, while reusing the editor’s existing Moveable-based handlers for rotation, scale, translation, and drag interactions.</p>
          </div>
          <div class="bg-[#171817] text-[#f5f1e8] p-6 md:p-8">
            <p class="font-mono text-[10px] uppercase tracking-[0.16em] text-[#d8ff3e]">Engineering detail</p>
            <p class="mt-5 leading-relaxed text-white/75">Designed geometry and constraint logic for rounded corners across arbitrary polygons, preventing border widths and radii from filling or flipping the shape, especially when text was already occupying the available area.</p>
          </div>
        </div>
      </div>
    </section>

    <section id="ai-infographic-maker" class="bg-[#3984ff] text-white px-4 md:px-6 py-20 md:py-28">
      <div class="max-w-7xl mx-auto">
        <div class="grid md:grid-cols-[0.18fr_0.82fr] gap-5 mb-12 md:mb-16">
          <p class="font-mono text-sm md:text-base font-medium text-[#d8ff3e]">03</p>
          <div>
            <p class="font-mono text-sm md:text-base uppercase tracking-[0.18em] text-[#d8ff3e]">Pikto AI Studio / AI Infographic Maker</p>
            <h2 class="mt-5 text-5xl md:text-7xl tracking-[-0.08em] leading-[0.84] font-semibold max-w-4xl">
              From prompt<br />to polished story.
            </h2>
          </div>
        </div>
        <div class="grid lg:grid-cols-[1.1fr_0.9fr] gap-5">
          <div class="relative self-start overflow-hidden bg-[#171817] p-3 md:p-6">
            <div class="absolute -left-16 -top-16 h-52 w-52 rounded-full border-[2rem] border-[#d8ff3e]"></div>
            <div class="absolute -bottom-8 -right-8 h-24 w-24 rotate-45 bg-[#3984ff]"></div>
            <div class="media-frame-16-10 relative z-10 overflow-hidden border border-black/15 bg-white shadow-[10px_10px_0_#171817]">
              <img
                :src="aiInfographicEditorMedia"
                alt="Piktochart AI Infographic Editor showing format selection and additional instructions"
                class="absolute inset-0 h-full w-full object-contain"
              />
            </div>
          </div>
          <div class="border border-white/45 p-6 md:p-8">
            <p class="text-lg md:text-2xl leading-snug tracking-[-0.025em]">
              I was a core frontend contributor on selected Pikto AI Studio features, implementing the UI and integrating it with the generation logic owned by other engineers. Product and design provided the visual direction.
            </p>
            <div class="mt-10 border-t border-white/35 pt-5">
              <p class="font-mono text-[10px] uppercase tracking-[0.16em] text-[#d8ff3e]">Selected contributions</p>
              <div class="mt-5">
                <article v-for="contribution in studioContributions" :key="contribution.title" class="border-b border-white/25 py-5 first:pt-0 last:border-b-0">
                  <div class="flex flex-wrap justify-between gap-3 font-mono text-[10px] uppercase tracking-[0.14em] text-white/65">
                    <span>{{ contribution.date }}</span>
                    <span>Frontend contribution</span>
                  </div>
                  <h3 class="mt-3 text-xl md:text-2xl font-semibold tracking-[-0.03em]">{{ contribution.title }}</h3>
                  <p class="mt-2 text-sm leading-relaxed text-white/75">{{ contribution.description }}</p>
                </article>
              </div>
            </div>
          </div>
        </div>
        <div class="grid md:grid-cols-2 gap-5 mt-5">
          <div class="border border-white/45 p-6 md:p-8">
            <p class="font-mono text-[10px] uppercase tracking-[0.16em] text-[#d8ff3e]">Adaptive Block</p>
            <p class="mt-5 leading-relaxed text-white/80">Because early AI primarily generated content rather than layouts, I helped shape a constrained template system. Designers tagged pages and blocks by capacity—such as one, two, or three columns—so the frontend could match generated points to compatible blocks, copy the required pages, and populate them automatically.</p>
          </div>
          <div class="outcome-card bg-[#d8ff3e] p-6 md:p-8">
            <p class="font-mono text-[10px] uppercase tracking-[0.16em] text-[#171817]">Outcome</p>
            <p class="mt-5 text-2xl md:text-3xl leading-tight tracking-[-0.04em] font-semibold text-[#171817]">Built Adaptive Block in response to strong user demand and as a high-priority feature. Across the broader AI Visual Generator initiative, AI visual creation grew from 74K to 1.14M (+1,400%), average year-over-year sign-ups rose by 90%, and format-selector usage increased by 108%.</p>
            <p class="mt-5 font-mono text-[10px] uppercase tracking-[0.14em] text-[#171817]">Instruction field adoption: 61% within two months</p>
          </div>
        </div>
      </div>
    </section>
  </main>
</template>
