<script setup lang="ts">
import { areElementsIntersecting } from '@/utils';
import { useEventListener } from '@vueuse/core';
import { Github } from 'lucide-vue-next';
import { onMounted, onUnmounted, ref } from 'vue';

const listenToScroll = ref(false);

let inverseEls: NodeListOf<Element> | null = null;
let observer: IntersectionObserver | null = null;

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
</script>

<template>
  <nav
    class="flex justify-between items-center py-12 px-6 fixed h-full flex-col"
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
</template>
<style lang="scss" scoped>
.list {
  writing-mode: vertical-lr;
}

.nav-link {
  transition: color 300ms;
}
</style>
