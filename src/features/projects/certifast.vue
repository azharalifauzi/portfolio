<script setup lang="ts">
import { ArrowLeft, ArrowUpRight } from 'lucide-vue-next';
import CertifastPreview from '@/features/home/assets/certifast-preview.png?url';
import ReactIcon from './assets/react.svg?url';
import NextJsIcon from './assets/nextjs.svg?url';
import TypescriptIcon from './assets/typescript.svg?url';
import ValtioIcon from './assets/valtio.png?url';
import ReactMoveableIcon from './assets/react-moveable.png?url';
import ReactZoomPanPinchIcon from './assets/react-zoom-pan-pinch.svg?url';
import TiptapIcon from './assets/tiptap.png?url';
import ShadcnIcon from './assets/shadcn.svg?url';
import WebAssemblyIcon from './assets/webassembly.png?url';
import RustIcon from './assets/rust.svg?url';

const challenges = [
  'Create an intuitive design editor on the web, with the ease of Canva and the precision of Figma.',
  'Render certificates in the browser to keep the service fast and operating costs low.',
  'Archive large certificate batches quickly before download.',
  'Support the custom fonts organisations need for their brand guidelines.',
];

const solutions = [
  'Combined an infinite canvas and right sidebar with direct, familiar item interactions.',
  'Used HTML Canvas to faithfully match the editor design in exported images.',
  'Used Rust and WebAssembly to archive generated files in milliseconds.',
  'Enabled uploads for TTF, OTF, and WOFF fonts directly in the product.',
];

const features = [
  {
    title: 'Intuitive item interaction',
    description: 'Drag, resize, and rotate items to create a certificate with full control over every element.',
    video: 'https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/1.webm',
  },
  {
    title: 'Simplified text editing',
    description: 'Add, modify, and format text with focused controls that keep the workflow quick and flexible.',
    video: 'https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/2.webm',
  },
  {
    title: 'Tailored customization',
    description: 'Customize fonts and colors to create certificates that fit each organisation and its brand.',
    video: 'https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/3.webm',
  },
  {
    title: 'Preview before spending',
    description: 'Check a certificate with every customization before spending credits or finalizing the batch.',
    video: 'https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/4.webm',
  },
  {
    title: 'Fast certificate generation',
    description: 'Generate high-quality certificates in seconds with efficient, reliable browser-side processing.',
    video: 'https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/5.webm',
  },
  {
    title: 'Quality service with credits',
    description: 'A straightforward credit system gives users access to powerful design features when they need them.',
    video: 'https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/6.webm',
  },
];

const reviews = [
  {
    quote: 'Thank you bro, it is really helpful. I use it for certificates and even to number travel-coupon designs. Without Certifast, it would take days to get them ready.',
    name: 'Muhammad Fandria Siswara',
    avatar: 'https://assets.karyakarsa.com/avatar-63249d20c0f53.jpg',
  },
  {
    quote: 'Your work is very useful. I can save a lot of time making thousands of certificates; it is the simplest, fastest, and least heavy tool I have used for the job.',
    name: 'Qistan Wafi',
    role: 'Designer, Indonesian Big Data Association',
    avatar: 'https://assets.karyakarsa.com/avatar-64118f6c29dce.jpg',
  },
  {
    quote: 'Very useful, Mas Azhar. With this tool we can create various certificates according to our needs. Your work is very good.',
    name: 'Desa Kubang Baros',
    role: 'Village office staff',
    avatar: 'https://assets.karyakarsa.com/avatar-62b1133e41d28.jpg',
  },
];

const techStacks = [
  { name: 'React', icon: ReactIcon },
  { name: 'Next.js', icon: NextJsIcon },
  { name: 'TypeScript', icon: TypescriptIcon },
  { name: 'Valtio', icon: ValtioIcon },
  { name: 'React Moveable', icon: ReactMoveableIcon },
  { name: 'React Zoom Pan Pinch', icon: ReactZoomPanPinchIcon },
  { name: 'Tiptap', icon: TiptapIcon },
  { name: 'shadcn/ui', icon: ShadcnIcon },
  { name: 'WebAssembly', icon: WebAssemblyIcon },
  { name: 'Rust', icon: RustIcon },
];
</script>

<template>
  <main class="overflow-hidden">
    <section class="px-4 md:px-6 pt-28 pb-16 md:pt-36 md:pb-24">
      <div class="max-w-7xl mx-auto">
        <a
          href="/#project"
          class="inline-flex items-center gap-2 font-mono text-[10px] uppercase tracking-[0.16em] hover:text-[#3984ff] transition-colors"
        >
          <ArrowLeft class="w-4 h-4" /> Back to selected work
        </a>

        <div class="grid grid-cols-2 md:grid-cols-4 mt-8 md:mt-10 border-t border-black/15 font-mono text-[10px] uppercase tracking-[0.16em]">
          <div class="py-3 border-r border-black/15">02 / Independent</div>
          <div class="py-3 px-3 border-r border-black/15">Design + Development</div>
          <div class="hidden md:block py-3 px-3 border-r border-black/15">2021 — Present</div>
          <div class="col-span-2 border-t border-black/15 py-3 text-left md:col-span-1 md:border-t-0 md:px-3 md:text-right">Web product</div>
        </div>

        <div class="grid lg:grid-cols-[1.05fr_0.95fr] gap-12 lg:gap-20 pt-12 md:pt-20">
          <div class="flex flex-col justify-between">
            <div>
              <p class="font-mono text-xs uppercase tracking-[0.18em] text-[#3984ff]">Certifast</p>
              <h1 class="mt-6 text-[clamp(3.25rem,13vw,5.25rem)] lg:text-[clamp(5rem,7vw,7rem)] leading-[0.86] tracking-[-0.08em] font-semibold max-w-3xl">
                Certificates,<br />without the drag.
              </h1>
            </div>
            <div class="mt-10 md:mt-14 pt-5 border-t border-black/15 max-w-xl">
              <p class="text-base md:text-2xl leading-[1.15] tracking-[-0.025em]">
                A browser-based design tool for producing personalised certificates in bulk—created end to end by me.
              </p>
              <a
                href="https://certifast.co"
                target="_blank"
                rel="noopener noreferrer"
                class="mt-7 inline-flex items-center gap-3 bg-[#171817] text-white px-5 py-4 font-mono text-xs uppercase tracking-[0.16em] hover:bg-[#3984ff] transition-colors"
              >
                Visit Certifast <ArrowUpRight class="w-4 h-4" />
              </a>
            </div>
          </div>

          <div class="relative bg-[#d8ff3e] p-3 md:p-6 overflow-hidden">
            <div class="absolute -right-16 -top-16 w-52 h-52 rounded-full border-[2rem] border-[#3984ff]"></div>
            <div class="relative aspect-[5/4] bg-[#f5f1e8] border border-black/15 shadow-[10px_10px_0_#171817] flex items-center justify-center">
              <img :src="CertifastPreview" alt="Certifast certificate editor" class="w-full h-full object-contain" />
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="bg-[#171817] text-[#f5f1e8] px-4 md:px-6 py-24 md:py-36">
      <div class="max-w-7xl mx-auto">
        <div class="grid lg:grid-cols-[0.72fr_1.28fr] gap-12 lg:gap-24">
          <p class="font-mono text-xs uppercase tracking-[0.18em] text-[#d8ff3e]">The brief</p>
          <div>
            <h2 class="text-5xl md:text-7xl tracking-[-0.08em] leading-[0.86] font-semibold max-w-3xl">
              Make bulk design feel focused, not fiddly.
            </h2>
            <p class="mt-8 text-lg md:text-2xl leading-tight text-white/75 max-w-3xl">
              Certifast makes batch certificate generation accessible from the browser while keeping the editing experience quick, visual, and affordable to run.
            </p>
          </div>
        </div>

        <div class="grid md:grid-cols-2 gap-10 md:gap-16 mt-20 md:mt-28">
          <div class="border-t border-white/20 pt-5">
            <p class="font-mono text-xs uppercase tracking-[0.16em] text-[#d8ff3e]">Challenges</p>
            <ol class="mt-7 space-y-5">
              <li v-for="(challenge, index) in challenges" :key="challenge" class="grid grid-cols-[1.8rem_1fr] gap-3 text-white/75 leading-relaxed">
                <span class="font-mono text-xs text-white/40">0{{ index + 1 }}</span>
                <span>{{ challenge }}</span>
              </li>
            </ol>
          </div>
          <div class="border-t border-white/20 pt-5">
            <p class="font-mono text-xs uppercase tracking-[0.16em] text-[#d8ff3e]">Approach</p>
            <ol class="mt-7 space-y-5">
              <li v-for="(solution, index) in solutions" :key="solution" class="grid grid-cols-[1.8rem_1fr] gap-3 text-white/75 leading-relaxed">
                <span class="font-mono text-xs text-white/40">0{{ index + 1 }}</span>
                <span>{{ solution }}</span>
              </li>
            </ol>
          </div>
        </div>
      </div>
    </section>

    <section class="px-4 md:px-6 py-24 md:py-36">
      <div class="max-w-7xl mx-auto">
        <div class="flex flex-col md:flex-row md:items-end justify-between gap-6 mb-14 md:mb-20">
          <div>
            <p class="font-mono text-xs uppercase tracking-[0.18em] text-[#3984ff]">Inside the editor</p>
            <h2 class="mt-5 text-5xl md:text-7xl tracking-[-0.08em] leading-[0.86] font-semibold">Built for momentum.</h2>
          </div>
          <p class="font-mono text-xs uppercase tracking-[0.15em] max-w-[16rem] text-black/55">The interaction details that make high-volume work feel lighter.</p>
        </div>

        <div class="grid md:grid-cols-2 gap-x-5 gap-y-12 md:gap-y-16">
          <article v-for="(feature, index) in features" :key="feature.title" class="group border-t border-black/15 pt-5">
            <div class="flex items-start justify-between gap-5">
              <div>
              <p class="font-mono text-base md:text-lg font-medium uppercase tracking-[0.16em] text-[#3984ff]">0{{ index + 1 }}</p>
                <h3 class="mt-4 text-3xl md:text-4xl leading-[0.92] tracking-[-0.06em] font-semibold">{{ feature.title }}</h3>
              </div>
              <div class="shrink-0 w-9 h-9 bg-[#d8ff3e] rotate-45 group-hover:rotate-0 transition-transform duration-500"></div>
            </div>
            <p class="mt-5 text-black/65 leading-relaxed max-w-md">{{ feature.description }}</p>
            <div class="mt-7 overflow-hidden bg-[#171817] border border-black/15">
              <video class="w-full aspect-[16/10] object-cover" autoplay loop muted playsinline>
                <source :src="feature.video" type="video/webm" />
              </video>
            </div>
          </article>
        </div>
      </div>
    </section>

    <section class="bg-[#d8ff3e] px-4 md:px-6 py-24 md:py-36">
      <div class="max-w-7xl mx-auto">
        <div class="grid lg:grid-cols-[0.72fr_1.28fr] gap-12 lg:gap-24">
          <p class="font-mono text-xs uppercase tracking-[0.18em]">Words from users</p>
          <h2 class="text-5xl md:text-7xl tracking-[-0.08em] leading-[0.86] font-semibold max-w-3xl">A tool people return to.</h2>
        </div>
        <div class="grid md:grid-cols-3 gap-4 mt-12 md:mt-16">
          <figure v-for="review in reviews" :key="review.name" class="bg-[#f5f1e8] border border-black/15 p-6 md:p-7 flex flex-col">
            <blockquote class="text-lg leading-[1.4] tracking-[-0.02em]">“{{ review.quote }}”</blockquote>
            <figcaption class="flex items-center gap-3 mt-10 pt-6 border-t border-black/15">
              <img :src="review.avatar" :alt="review.name" class="w-10 h-10 rounded-full object-cover" />
              <div>
                <p class="font-semibold text-sm">{{ review.name }}</p>
                <p v-if="review.role" class="font-mono text-[9px] uppercase tracking-[0.12em] text-black/55 mt-1">{{ review.role }}</p>
              </div>
            </figcaption>
          </figure>
        </div>
        <a
          class="mt-10 inline-flex items-center gap-3 bg-[#171817] text-white px-5 py-4 font-mono text-xs uppercase tracking-[0.16em] hover:bg-[#3984ff] transition-colors"
          href="https://karyakarsa.com/azharalifauzi/certifast"
          target="_blank"
          rel="noopener noreferrer"
        >
          See more reviews <ArrowUpRight class="w-4 h-4" />
        </a>
      </div>
    </section>

    <section class="bg-[#171817] text-[#f5f1e8] px-4 md:px-6 py-24 md:py-36">
      <div class="max-w-7xl mx-auto grid lg:grid-cols-[0.72fr_1.28fr] gap-12 lg:gap-24">
        <p class="font-mono text-xs uppercase tracking-[0.18em] text-[#d8ff3e]">The build</p>
        <div>
          <h2 class="text-5xl md:text-7xl tracking-[-0.08em] leading-[0.86] font-semibold">A serious browser stack.</h2>
          <div class="grid sm:grid-cols-2 gap-x-8 gap-y-5 mt-14">
            <div v-for="techStack in techStacks" :key="techStack.name" class="flex items-center gap-4 border-b border-white/20 pb-4">
              <img :src="techStack.icon" :alt="techStack.name" :class="['w-7 h-7 object-contain', { 'mix-blend-screen': techStack.name === 'Tiptap' }]" />
              <span class="font-mono text-xs uppercase tracking-[0.14em]">{{ techStack.name }}</span>
            </div>
          </div>
          <div class="mt-20 bg-[#3984ff] text-white p-7 md:p-10">
            <p class="font-mono text-xs uppercase tracking-[0.16em] text-white/75">The result</p>
            <h3 class="mt-5 text-4xl md:text-6xl leading-[0.88] tracking-[-0.07em] font-semibold max-w-3xl">6M+ certificates generated and counting.</h3>
            <p class="mt-6 text-lg leading-relaxed text-white/85 max-w-2xl">Since its 2021 launch, Certifast has been used by 150k unique users, with around 5k monthly active users.</p>
          </div>
        </div>
      </div>
    </section>
  </main>
</template>
