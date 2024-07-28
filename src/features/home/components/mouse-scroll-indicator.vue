<script lang="tsx" setup>
import { useWindowScroll } from '@vueuse/core';

const { y } = useWindowScroll();
</script>

<template>
  <div
    :class="{
      '!opacity-0': y > 0,
    }"
    class="border border-gray-400 h-10 w-6 fixed bottom-12 left-1/2 -translate-x-1/2 rounded-xl opacity-100 transition-opacity duration-500"
  >
    <div
      v-motion
      class="absolute w-[2px] bg-gray-400 h-3 top-2.5 left-1/2 -translate-x-1/2 rounded-sm"
      :initial="{
        opacity: 0,
        y: -4,
        x: '-50%',
      }"
      :enter="{
        opacity: 1,
        y: 0,
        x: '-50%',
        transition: {
          repeat: Infinity,
          duration: 1000,
          repeatType: 'mirror',
        },
      }"
    />
  </div>
</template>
