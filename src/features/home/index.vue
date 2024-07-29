<script setup lang="ts">
import { useMotion } from '@vueuse/motion';
import { HISTORY } from './constants';
import CertifastPreview from './assets/certifast-preview.png?url';
import { ref } from 'vue';
import MouseScrollIndicator from './components/mouse-scroll-indicator.vue';
import { ArrowRight } from 'lucide-vue-next';

const notARegular = ref<HTMLElement>();
const frontEndDev = ref<HTMLElement>();

const notARegularInstance = useMotion(notARegular, {
  initial: {
    clipPath: 'rect(0 0 100% 0)',
  },
  enter: {
    clipPath: 'rect(0 100% 100% 0)',
    transition: {
      onComplete: () => (notARegularInstance.variant.value = 'afterVisible'),
      duration: 600,
    },
  },
  afterVisible: {
    clipPath: 'rect(0 100% 100% 100%)',
    transition: {
      duration: 600,
    },
  },
});

const frontEndDevInstance = useMotion(frontEndDev, {
  initial: {
    clipPath: 'rect(0 0 100% 0)',
  },
  enter: {
    clipPath: 'rect(0 100% 100% 0)',
    transition: {
      onComplete: () => (frontEndDevInstance.variant.value = 'afterVisible'),
      duration: 600,
      delay: 500,
    },
  },
  afterVisible: {
    clipPath: 'rect(0 100% 100% 100%)',
    transition: {
      duration: 600,
    },
  },
});
</script>

<template>
  <MouseScrollIndicator />
  <section class="max-w-4xl mx-auto px-6 flex flex-col h-screen justify-center">
    <div class="-mt-24">
      <div
        v-motion
        class="text-2xl tracking-[0.15em] mb-3"
        :initial="{ opacity: 0, y: -20 }"
        :visible-once="{ opacity: 1, y: 0 }"
        :duration="500"
      >
        AZHAR ALI FAUZI
      </div>
      <h1 class="text-[64px] leading-tight font-semibold">
        <div class="relative w-max">
          <div
            ref="notARegular"
            class="absolute h-full w-full bg-[#A5D3F5] z-10"
          />
          <span
            v-motion
            :initial="{ opacity: 0 }"
            :enter="{ opacity: 1 }"
            :delay="700"
            :duration="0"
          >
            Not a Regular
          </span>
        </div>
        <div class="relative w-max">
          <div
            ref="frontEndDev"
            class="absolute h-full w-full bg-[#A5D3F5] z-10"
          />
          <span
            v-motion
            :initial="{ opacity: 0 }"
            :enter="{ opacity: 1 }"
            :delay="1300"
            :duration="0"
            >Front End Developer</span
          >
        </div>
      </h1>
    </div>
  </section>
  <section id="about" class="max-w-4xl mx-auto px-6 pt-20 h-[calc(100vh-80px)]">
    <div
      v-motion
      class="text-2xl tracking-[0.15em] mb-3"
      :initial="{ opacity: 0, y: -70 }"
      :visible-once="{ opacity: 1, y: 0 }"
      :duration="500"
    >
      ABOUT ME
    </div>
    <h2
      v-motion
      class="text-[56px] leading-tight font-semibold"
      :initial="{ opacity: 0, y: -20 }"
      :visible-once="{ opacity: 1, y: 0 }"
      :duration="500"
      :delay="500"
    >
      I’m a skilled Front End focused Developer who love to build pixel perfect
      design with attention to coding perfection.
    </h2>
  </section>
  <section id="experiences" class="max-w-4xl mx-auto px-6 py-32">
    <div
      v-motion
      class="text-2xl tracking-[0.15em] mb-12"
      :initial="{ opacity: 0, y: -70 }"
      :visible-once="{ opacity: 1, y: 0 }"
      :duration="500"
    >
      HISTORY
    </div>
    <div>
      <div v-for="h in HISTORY" :key="h.title" class="relative pl-12 h-screen">
        <div class="absolute top-3.5 left-0 h-full w-4">
          <div
            class="absolute top-0 left-0 w-4 h-4 bg-[#A5D3F5] rounded-full"
          />
          <div
            class="absolute w-0.5 bg-[#A5D3F5] h-full left-1/2 -translate-x-1/2"
          ></div>
        </div>
        <div
          v-motion
          class="text-4xl font-semibold mb-2.5"
          :initial="{ opacity: 0, y: -30 }"
          :visible-once="{ opacity: 1, y: 0 }"
          :duration="300"
          :delay="200"
        >
          {{ h.title }}
        </div>
        <div
          v-motion
          class="text-xl tracking-[0.12em] mb-8"
          :initial="{ opacity: 0, y: -20 }"
          :visible-once="{ opacity: 1, y: 0 }"
          :duration="300"
          :delay="400"
        >
          {{ h.company }}
        </div>
        <div
          v-motion
          class="tracking-wider leading-normal text-lg"
          :initial="{ opacity: 0, y: -20 }"
          :visible-once="{ opacity: 1, y: 0 }"
          :duration="300"
          :delay="800"
        >
          {{ h.description }}
        </div>
      </div>
    </div>
  </section>
  <section id="project" class="max-w-4xl mx-auto px-6 py-32">
    <div
      v-motion
      class="text-2xl tracking-[0.15em] mb-8"
      :initial="{ opacity: 0, y: -70 }"
      :visible-once="{ opacity: 1, y: 0 }"
      :duration="500"
    >
      PROJECT
    </div>
    <div class="grid grid-cols-[500px_429px] gap-20 justify-items-center">
      <div>
        <div
          v-motion
          class="text-4xl font-semibold mb-5"
          :initial="{ opacity: 0, y: -20 }"
          :visible-once="{ opacity: 1, y: 0 }"
          :duration="300"
          :delay="500"
        >
          Professional certificate maker
        </div>
        <div
          v-motion
          class="text-xl tracking-[0.02em] mb-10"
          :initial="{ opacity: 0, y: -20 }"
          :visible-once="{ opacity: 1, y: 0 }"
          :duration="300"
          :delay="700"
        >
          Certifast is a free design tool that is specifically built to generate
          design in bulks. Offering great user experience similar to modern
          design tools such as Canva and Figma.
        </div>
        <a
          href="/projects/certifast"
          v-motion
          class="bg-black text-white h-16 w-[210px] text-xl font-semibold flex items-center justify-center gap-2"
          :initial="{ opacity: 0, y: -20 }"
          :visible-once="{ opacity: 1, y: 0 }"
          :duration="300"
          :delay="1000"
        >
          View project
          <ArrowRight />
        </a>
      </div>
      <div class="relative w-full">
        <img
          v-motion
          :src="CertifastPreview"
          alt="Certifast preview"
          class="rounded-xl shadow-md w-full h-auto block absolute top-0 left-0"
          :initial="{ opacity: 0, y: -20 }"
          :visible-once="{ opacity: 1, y: 0 }"
          :duration="300"
          :delay="1300"
        />
      </div>
    </div>
  </section>
  <footer class="text-center px-6 pb-10 pt-32">
    © 2024 Azhar Ali Fauzi. All right reserved.
  </footer>
</template>
