<script setup lang="ts">
import { areElementsIntersecting } from '@/utils';
import { useEventListener, useWindowScroll, useWindowSize } from '@vueuse/core';
import { useMotions } from '@vueuse/motion';
import { Github } from 'lucide-vue-next';
import { onMounted, onUnmounted, ref, watch } from 'vue';

const listenToScroll = ref(false);
const isOpen = ref(false);

let inverseEls: NodeListOf<Element> | null = null;
let observer: IntersectionObserver | null = null;

const motions = useMotions();
const { y } = useWindowScroll();
const { height } = useWindowSize();

onMounted(() => {
  setTimeout(() => {
    inverseEls = document.querySelectorAll('[data-inverse="true"]');
    observer = new IntersectionObserver((entries) => {
      listenToScroll.value = entries.some((entry) => entry.isIntersecting);
    });
    inverseEls.forEach((el) => {
      observer?.observe(el);
    });
  }, 500);
});

onUnmounted(() => {
  observer?.disconnect();
});

useEventListener('scroll', () => {
  if (listenToScroll.value) {
    const navLinks = document.querySelectorAll('.nav-link');

    navLinks.forEach((navLink) => {
      inverseEls?.forEach((inverseEl) => {
        const isIntersecting = areElementsIntersecting(inverseEl, navLink);
        if (isIntersecting) {
          navLink.setAttribute('style', 'color: white;');
        } else {
          navLink.setAttribute('style', '');
        }
      });
    });
  }
});

watch(isOpen, (open) => {
  if (open) {
    document.body.setAttribute('style', 'overflow: hidden;');
  } else {
    document.body.setAttribute('style', '');
  }
});
</script>

<template>
  <nav
    class="md:flex hidden justify-between items-center py-12 px-6 fixed h-full flex-col"
  >
    <ul class="flex items-center gap-12 list rotate-180">
      <li class="font-medium">
        <a class="nav-link" href="/#project">Project</a>
      </li>
      <li class="font-medium">
        <a class="nav-link" href="/#experiences">Experiences</a>
      </li>
      <li class="font-medium">
        <a class="nav-link" href="/#about">About</a>
      </li>
      <li>
        <a class="rotate-90 font-bold text-xl block nav-link" href="/">AAF</a>
      </li>
    </ul>
    <div>
      <a
        class="nav-link"
        href="https://github.com/azharalifauzi"
        target="_blank"
        rel="noopener noreferrer"
      >
        <Github />
      </a>
    </div>
  </nav>
  <nav
    :class="[
      'flex md:hidden items-center fixed top-0 left-0 right-0 h-16 justify-between px-6 bg-[#fafafa] z-50 transition-shadow duration-400',
      {
        'shadow-md': y > 0,
      },
    ]"
  >
    <a class="font-bold text-xl block" href="/">AAF</a>
    <button
      :style="{ WebkitTapHighlightColor: 'transparent' }"
      class="w-7 flex items-center h-10"
      @click="() => (isOpen = !isOpen)"
    >
      <div class="w-full">
        <div
          :class="[
            'w-full h-[1.5px] bg-black translate-y-1.5 rotate-0 transition-transform',
            { 'rotate-[-45deg] !translate-y-[1px]': isOpen },
          ]"
        />
        <div
          :class="[
            'w-full h-[1.5px] bg-black -translate-y-1.5 rotate-0 transition-transform',
            { 'rotate-[45deg] !translate-y-[-1px]': isOpen },
          ]"
        />
      </div>
    </button>
  </nav>
  <transition @leave="(_, done) => motions.drawer.leave(done)">
    <div
      v-if="isOpen"
      v-motion="'drawer'"
      class="fixed top-16 left-0 bottom-0 right-0 z-40 bg-[#fafafa] ease-in"
      :initial="{
        y: -height,
      }"
      :enter="{
        y: 0,
      }"
      :leave="{
        y: -height,
        transition: {
          ease: 'easeIn',
          type: 'keyframes',
        },
      }"
      :duration="500"
    >
      <div
        class="flex flex-col h-full gap-6 items-center justify-center -mt-16 text-xl"
      >
        <a
          v-motion
          href="/#about"
          :initial="{
            y: -20,
            opacity: 0,
          }"
          :visible="{
            y: 0,
            opacity: 1,
          }"
          :duration="300"
          @click="isOpen = false"
          >About
        </a>
        <a
          v-motion
          href="/#experiences"
          :initial="{
            y: -20,
            opacity: 0,
          }"
          :visible="{
            y: 0,
            opacity: 1,
          }"
          :duration="300"
          :delay="100"
          @click="isOpen = false"
        >
          Experiences
        </a>
        <a
          v-motion
          href="/#project"
          :initial="{
            y: -20,
            opacity: 0,
          }"
          :visible="{
            y: 0,
            opacity: 1,
          }"
          :duration="300"
          :delay="200"
          @click="isOpen = false"
          >Project
        </a>
      </div>
      <div>
        <a
          class="absolute left-1/2 -translate-x-1/2 bottom-6"
          href="https://github.com/azharalifauzi"
          target="_blank"
          rel="noopener noreferrer"
        >
          <Github />
        </a>
      </div>
    </div>
  </transition>
</template>
<style lang="scss" scoped>
.list {
  writing-mode: vertical-lr;
}

.nav-link {
  transition: color 300ms;

  &:hover {
    color: #78c0fa !important;
  }
}
</style>
