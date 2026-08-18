<script setup lang="ts">
import { ArrowDownRight, ArrowUpRight, ExternalLink } from 'lucide-vue-next';
import { computed, onBeforeUnmount, onMounted, ref } from 'vue';
import { HISTORY } from './constants';
import CertifastPreview from './assets/certifast-preview.png?url';
import PiktochartPreview from '../projects/assets/piktochart/piktochart-card.png?url';

const heroCopies = [
  { firstPrefix: 'Build', firstWord: 'sharp.', secondLine: 'Make it', word: 'move.' },
  { firstPrefix: 'Build', firstWord: 'clear.', secondLine: 'Make it', word: 'matter.' },
  { firstPrefix: 'Build', firstWord: 'boldly.', secondLine: 'Make it', word: 'human.' },
];

const activeHeroIndex = ref(0);
const displayedHeroWord = ref('');
const activeHeroCopy = computed(() => heroCopies[activeHeroIndex.value]);
let typeTimer: number | undefined;
let cycleTimer: number | undefined;

const clearTypewriterTimers = () => {
  if (typeTimer !== undefined) window.clearInterval(typeTimer);
  if (cycleTimer !== undefined) window.clearTimeout(cycleTimer);
};

const typeHeroWord = () => {
  clearTypewriterTimers();
  const word = activeHeroCopy.value.word;
  let characterIndex = 0;
  displayedHeroWord.value = '';

  typeTimer = window.setInterval(() => {
    displayedHeroWord.value = word.slice(0, characterIndex + 1);
    characterIndex += 1;

    if (characterIndex === word.length) {
      window.clearInterval(typeTimer);
      typeTimer = undefined;
      cycleTimer = window.setTimeout(() => {
        let deleteIndex = word.length;
        typeTimer = window.setInterval(() => {
          displayedHeroWord.value = word.slice(0, deleteIndex - 1);
          deleteIndex -= 1;

          if (deleteIndex === 0) {
            window.clearInterval(typeTimer);
            typeTimer = undefined;
            activeHeroIndex.value = (activeHeroIndex.value + 1) % heroCopies.length;
            typeHeroWord();
          }
        }, 45);
      }, 2300);
    }
  }, 78);
};

onMounted(() => {
  if (window.matchMedia('(prefers-reduced-motion: reduce)').matches) {
    displayedHeroWord.value = activeHeroCopy.value.word;
    return;
  }

  typeHeroWord();
});

onBeforeUnmount(clearTypewriterTimers);
</script>

<template>
  <main class="overflow-hidden">
    <section
      id="about"
      class="min-h-screen pt-32 pb-10 px-4 md:px-6 flex flex-col scroll-mt-32 md:scroll-mt-28"
    >
      <div class="max-w-7xl mx-auto w-full flex flex-col flex-1">
        <div class="grid grid-cols-2 md:grid-cols-4 border-t border-black/15 font-mono text-[10px] uppercase tracking-[0.16em]">
          <div class="py-3 border-r border-black/15">001 / Intro</div>
          <div class="py-3 px-3 border-r border-black/15">Frontend engineer</div>
          <div class="hidden md:block py-3 px-3 border-r border-black/15">Product builder</div>
          <div class="col-span-2 border-t border-black/15 py-3 text-left md:col-span-1 md:border-t-0 md:px-3 md:text-right">Indonesia ↗ global</div>
        </div>

        <div class="grid lg:grid-cols-[minmax(0,1.4fr)_minmax(0,0.6fr)] gap-8 lg:gap-16 pt-14 md:pt-24 flex-1">
          <div class="flex flex-col justify-between">
            <p class="mb-8 font-mono text-sm md:text-base lg:text-xl font-medium uppercase tracking-[0.18em] text-[#3984ff]">
              Azhar Ali Fauzi
            </p>
            <h1 class="text-[14vw] lg:text-[7.5rem] leading-[0.82] tracking-[-0.09em] font-semibold max-w-5xl mt-12 lg:mt-0">
              {{ activeHeroCopy.firstPrefix }} <span class="text-[#3984ff]">{{ activeHeroCopy.firstWord }}</span><br />
              <span class="whitespace-nowrap">{{ activeHeroCopy.secondLine }} <span class="hero-typewriter text-[#3984ff]">{{ displayedHeroWord }}</span></span>
            </h1>
            <div class="mt-16 md:mt-24 grid sm:grid-cols-[1fr_auto] gap-6 items-end border-t border-black/15 pt-5">
              <p class="max-w-md text-lg md:text-2xl leading-tight tracking-[-0.03em]">
                I make expressive, reliable interfaces for complex products—from
                creative tools to AI-assisted workflows.
              </p>
              <a
                href="/#project"
                class="group inline-flex items-center justify-between gap-8 bg-[#171817] text-[#f5f1e8] px-5 py-4 font-mono text-xs uppercase tracking-[0.16em] hover:bg-[#3984ff] transition-colors"
              >
                See selected work
                <ArrowDownRight class="w-4 h-4 group-hover:translate-y-0.5 transition-transform" />
              </a>
            </div>
          </div>

          <div class="relative min-h-[25rem] lg:min-h-0 bg-[#3984ff] p-5 md:p-7 flex flex-col justify-between overflow-hidden">
            <div class="font-mono text-[10px] uppercase tracking-[0.16em] text-white/80">Now building</div>
            <div class="relative z-10">
              <p class="text-4xl md:text-5xl leading-[0.92] tracking-[-0.07em] font-semibold text-white max-w-xs">
                AI products that feel human.
              </p>
              <p class="mt-6 font-mono text-[11px] uppercase tracking-[0.14em] text-white/80 max-w-[15rem]">
                Product systems · Creative tools · Thoughtful motion
              </p>
            </div>
            <div class="absolute -right-32 -bottom-52 h-72 w-72 rounded-full border-[32px] border-[#d8ff3e] md:-right-12 md:-bottom-20"></div>
            <div class="absolute right-8 top-20 h-14 w-14 bg-[#171817] rotate-45"></div>
          </div>
        </div>
      </div>
    </section>

    <div class="border-y border-black/15 bg-[#d8ff3e]">
      <div class="px-4 py-3 text-center font-mono text-[10px] leading-relaxed uppercase tracking-[0.14em] md:px-6 md:text-left md:text-xs md:leading-normal md:tracking-[0.16em] md:whitespace-nowrap md:animate-[pulse_5s_ease-in-out_infinite] lg:px-8">
        <span class="md:hidden">AI-powered products · Creative tooling · Frontend systems · Interaction design</span>
        <span class="hidden md:inline">AI-powered products · Creative tooling · Frontend systems · Interaction design · AI-powered products · Creative tooling · Frontend systems · Interaction design ·</span>
      </div>
    </div>

    <section id="experiences" class="bg-[#171817] text-[#f5f1e8] px-4 md:px-6 py-24 md:py-36 scroll-mt-32 md:scroll-mt-28">
      <div class="max-w-7xl mx-auto">
        <div class="flex flex-col md:flex-row md:items-end justify-between gap-6 mb-14 md:mb-20">
          <div>
            <p class="font-mono text-xs uppercase tracking-[0.18em] text-[#d8ff3e]">002 / Experience</p>
            <h2 class="mt-5 text-5xl md:text-7xl tracking-[-0.08em] leading-[0.86] font-semibold max-w-2xl">
              Product thinking,<br />pixel precision.
            </h2>
          </div>
          <p class="font-mono text-xs uppercase tracking-[0.15em] text-white/55 max-w-[15rem]">
            Building clear paths through complex problems since 2020.
          </p>
        </div>

        <div class="border-t border-white/20">
          <article
            v-for="(history, index) in HISTORY"
            :key="history.title"
            class="group grid lg:grid-cols-[0.1fr_0.35fr_0.55fr] gap-5 lg:gap-8 py-8 md:py-11 border-b border-white/20 hover:bg-white/[0.04] transition-colors"
          >
            <div class="font-mono text-xs text-[#d8ff3e]">0{{ index + 1 }}</div>
            <div>
              <a
                :href="history.url"
                target="_blank"
                rel="noopener noreferrer"
                class="inline-flex items-center gap-2 text-3xl md:text-4xl leading-none tracking-[-0.065em] font-semibold group-hover:text-[#d8ff3e] transition-colors"
              >
                {{ history.company }} <ExternalLink class="w-5 h-5 md:w-6 md:h-6" />
              </a>
              <p class="mt-3 font-mono text-[10px] uppercase tracking-[0.14em] text-white/50">
                {{ history.title }}
              </p>
            </div>
            <div>
              <div class="max-w-2xl text-sm md:text-base leading-relaxed text-white/70" v-html="history.description" />
              <div class="flex flex-wrap gap-2 mt-6">
                <span
                  v-for="techStack in history.techStacks"
                  :key="techStack"
                  class="font-mono text-[10px] uppercase tracking-[0.12em] border border-white/20 px-2.5 py-1.5 text-white/70"
                >
                  {{ techStack }}
                </span>
              </div>
            </div>
          </article>
        </div>
      </div>
    </section>

    <section id="project" class="px-4 md:px-6 py-24 md:py-36 scroll-mt-32 md:scroll-mt-28">
      <div class="max-w-7xl mx-auto">
        <div class="flex flex-col md:flex-row md:items-end justify-between gap-6 mb-14 md:mb-20">
          <div>
            <p class="font-mono text-xs uppercase tracking-[0.18em] text-[#3984ff]">003 / Selected work</p>
            <h2 class="mt-5 text-5xl md:text-7xl tracking-[-0.08em] leading-[0.86] font-semibold">
              Work with<br />a point of view.
            </h2>
          </div>
          <p class="font-mono text-xs uppercase tracking-[0.15em] max-w-[16rem] text-black/55">
            A mix of professional product work and independent experiments.
          </p>
        </div>

        <div class="grid lg:grid-cols-2 gap-5">
          <a
            href="/projects/piktochart"
            class="group block border border-black/15 bg-white p-6 md:p-8 min-h-[34rem] md:min-h-[40rem] hover:-translate-y-1 transition-transform"
          >
            <div class="relative overflow-hidden bg-[#3984ff] aspect-[16/10] border border-black/10">
              <img
                :src="PiktochartPreview"
                alt="Piktochart editor preview"
                class="w-full h-full object-contain bg-[#f5f1e8] group-hover:scale-[1.03] transition-transform duration-500"
              />
            </div>
            <div class="mt-8 md:mt-9">
              <div class="flex items-start justify-between gap-4 font-mono text-[10px] md:text-[11px] uppercase tracking-[0.16em]">
                <span>Piktochart / 01</span>
                <span class="border border-black/25 px-2 py-1">Professional work</span>
              </div>
              <p class="mt-6 font-mono text-[10px] md:text-xs uppercase tracking-[0.14em] text-black/55">AI image editor · Shape tools · AI infographic maker</p>
              <div class="mt-4 flex items-end justify-between gap-4">
                <h3 class="text-5xl md:text-6xl leading-[0.86] tracking-[-0.08em] font-semibold">Creative tools<br />for the <span class="text-[#3984ff]">next</span> move.</h3>
                <ArrowUpRight class="w-6 h-6 shrink-0 group-hover:text-[#3984ff] transition-colors" />
              </div>
            </div>
          </a>

          <a href="/projects/certifast" class="group block border border-black/15 bg-white p-6 md:p-8 min-h-[34rem] md:min-h-[40rem] hover:-translate-y-1 transition-transform">
            <div class="flex items-start justify-between gap-4 font-mono text-[10px] md:text-[11px] uppercase tracking-[0.16em]">
              <span>Certifast / 02</span>
              <span class="border border-black/25 px-2 py-1">Independent product</span>
            </div>
            <div class="mt-8 md:mt-9 overflow-hidden bg-[#f3efe5] aspect-[16/10] border border-black/10">
              <img
                :src="CertifastPreview"
                alt="Certifast preview"
                class="w-full h-full object-cover object-top group-hover:scale-[1.03] transition-transform duration-500"
              />
            </div>
            <div class="mt-9 md:mt-10">
              <p class="font-mono text-[10px] md:text-xs uppercase tracking-[0.14em] text-black/55">A browser-based editor for generating certificates at scale.</p>
              <div class="mt-4 flex items-end justify-between gap-4">
                <h3 class="text-5xl md:text-6xl leading-none tracking-[-0.08em] font-semibold">Certifast</h3>
                <ArrowUpRight class="w-6 h-6 shrink-0 group-hover:text-[#3984ff] transition-colors" />
              </div>
            </div>
          </a>
        </div>
      </div>
    </section>

    <footer class="bg-[#d8ff3e] px-4 md:px-6 pt-20 md:pt-28 pb-6">
      <div class="max-w-7xl mx-auto">
        <p class="font-mono text-xs uppercase tracking-[0.18em]">004 / Let’s connect</p>
        <div class="flex flex-col md:flex-row md:items-end justify-between gap-10 mt-8">
          <h2 class="text-5xl md:text-8xl leading-[0.82] tracking-[-0.09em] font-semibold max-w-4xl">
            Have a tricky product problem?
          </h2>
          <a
            href="https://github.com/azharalifauzi"
            target="_blank"
            rel="noopener noreferrer"
            class="inline-flex items-center gap-3 bg-[#171817] text-white px-5 py-4 font-mono text-xs uppercase tracking-[0.16em] hover:bg-[#3984ff] transition-colors"
          >
            Find me on Github <ArrowUpRight class="w-4 h-4" />
          </a>
        </div>
        <div class="border-t border-black/20 mt-20 pt-5 flex flex-col md:flex-row gap-2 justify-between font-mono text-[10px] uppercase tracking-[0.14em]">
          <span>© 2026 Azhar Ali Fauzi</span>
          <span>Made with intent in Indonesia</span>
        </div>
      </div>
    </footer>
  </main>
</template>

<style scoped>
.hero-typewriter {
  display: inline-block;
  white-space: nowrap;
  vertical-align: bottom;
  border-right: 0.06em solid currentColor;
  padding-right: 0.06em;
}

@media (prefers-reduced-motion: reduce) {
  .hero-typewriter {
    border-right: 0;
  }
}
</style>
