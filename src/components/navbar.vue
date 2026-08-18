<script setup lang="ts">
import { useWindowScroll } from '@vueuse/core';
import { ArrowUpRight, Github, Menu, X } from 'lucide-vue-next';
import { nextTick, ref, watch } from 'vue';

const isOpen = ref(false);
const { y } = useWindowScroll();

watch(isOpen, (open) => {
  document.body.style.overflow = open ? 'hidden' : '';
});

const scrollToSection = async (sectionId: string) => {
  isOpen.value = false;

  if (window.location.pathname !== '/') {
    window.location.href = `/#${sectionId}`;
    return;
  }

  await nextTick();
  requestAnimationFrame(() => {
    const section = document.getElementById(sectionId);
    if (!section) return;

    const headerOffset = 92;
    const top = section.getBoundingClientRect().top + window.scrollY - headerOffset;
    window.history.replaceState(null, '', `/#${sectionId}`);
    window.scrollTo({ top, behavior: 'smooth' });
  });
};
</script>

<template>
  <nav
    :class="[
      'fixed top-0 left-0 right-0 z-50 px-4 md:px-6 transition-all duration-300',
      y > 12 ? 'pt-3' : 'pt-5',
    ]"
  >
    <div
      class="max-w-7xl mx-auto h-14 px-4 md:px-5 flex items-center justify-between border border-black/15 bg-[#f5f1e8]/90 backdrop-blur-md shadow-[0_8px_30px_rgba(23,24,23,0.05)]"
    >
      <a class="font-mono text-xs tracking-[0.18em] font-medium" href="/">
        AAF / 2026
      </a>
      <div class="hidden md:flex items-center gap-6 font-mono text-[11px] uppercase tracking-[0.15em]">
        <a class="nav-link" href="/#about" @click.prevent="scrollToSection('about')">About</a>
        <a class="nav-link" href="/#experiences" @click.prevent="scrollToSection('experiences')">Experience</a>
        <a class="nav-link" href="/#project" @click.prevent="scrollToSection('project')">Selected work</a>
      </div>
      <a
        class="hidden md:inline-flex items-center gap-1.5 font-mono text-[11px] uppercase tracking-[0.15em] nav-link"
        href="https://github.com/azharalifauzi"
        target="_blank"
        rel="noopener noreferrer"
      >
        Github <ArrowUpRight class="w-3.5 h-3.5" />
      </a>
      <button
        class="md:hidden inline-flex items-center justify-center w-9 h-9 border border-black/15"
        :aria-label="isOpen ? 'Close navigation' : 'Open navigation'"
        @click="isOpen = !isOpen"
      >
        <X v-if="isOpen" class="w-4 h-4" />
        <Menu v-else class="w-4 h-4" />
      </button>
    </div>
  </nav>

  <transition name="menu">
    <div
      v-if="isOpen"
      class="fixed inset-0 z-40 bg-[#171817] text-[#f5f1e8] pt-24 px-6"
    >
      <div class="max-w-7xl mx-auto flex flex-col h-full pb-10">
        <div class="font-mono text-[11px] uppercase tracking-[0.18em] text-[#d8ff3e]">
          Navigation
        </div>
        <div class="mt-10 flex flex-col gap-3 text-5xl font-semibold tracking-[-0.06em]">
          <a href="/#about" @click.prevent="scrollToSection('about')">About</a>
          <a href="/#experiences" @click.prevent="scrollToSection('experiences')">Experience</a>
          <a href="/#project" @click.prevent="scrollToSection('project')">Selected work</a>
        </div>
        <a
          class="mt-auto inline-flex items-center gap-2 font-mono text-xs uppercase tracking-[0.16em] text-[#d8ff3e]"
          href="https://github.com/azharalifauzi"
          target="_blank"
          rel="noopener noreferrer"
        >
          <Github class="w-4 h-4" /> Github <ArrowUpRight class="w-4 h-4" />
        </a>
      </div>
    </div>
  </transition>
</template>

<style scoped>
.nav-link {
  transition: color 180ms ease;
}

.nav-link:hover {
  color: #3984ff;
}

.menu-enter-active,
.menu-leave-active {
  transition: opacity 240ms ease;
}

.menu-enter-from,
.menu-leave-to {
  opacity: 0;
}
</style>
