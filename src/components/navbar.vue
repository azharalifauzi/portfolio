<script setup lang="ts">
import { Github } from 'lucide-vue-next';

defineOptions({
  name: 'Navbar',
});
</script>

<template>
  <nav
    class="flex justify-between items-center py-6 px-10 fixed h-full flex-col"
  >
    <ul class="flex items-center gap-12 list rotate-180">
      <li class="font-medium">
        <a href="#project">Project</a>
      </li>
      <li class="font-medium">
        <a href="#experiences">Experiences</a>
      </li>
      <li class="font-medium">
        <a href="#about">About</a>
      </li>
      <li>
        <div class="rotate-90 font-bold text-xl cursor-default">AAF</div>
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
