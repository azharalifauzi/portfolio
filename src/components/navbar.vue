<script setup lang="ts">
import { useEventListener } from '@vueuse/core';
import { Github } from 'lucide-vue-next';

useEventListener('scroll', () => {});
</script>

<template>
  <nav
    class="flex justify-between items-center py-12 px-6 fixed h-full flex-col"
  >
    <ul class="flex items-center gap-12 list rotate-180">
      <li class="font-medium">
        <a href="/#project">Project</a>
      </li>
      <li class="font-medium">
        <a href="/#experiences">Experiences</a>
      </li>
      <li class="font-medium">
        <a href="/#about">About</a>
      </li>
      <li>
        <a class="rotate-90 font-bold text-xl block" href="/">AAF</a>
      </li>
    </ul>
    <div>
      <a
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
</style>
