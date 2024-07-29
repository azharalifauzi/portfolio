<script setup lang="ts">
import { ChevronRight } from 'lucide-vue-next';
import CertifastPrview from '@/features/home/assets/certifast-preview.png?url';
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

const techStacks = [
  {
    name: 'React',
    icon: ReactIcon,
  },
  {
    name: 'Next.js',
    icon: NextJsIcon,
  },
  {
    name: 'Typescript',
    icon: TypescriptIcon,
  },
  {
    name: 'Valtio',
    icon: ValtioIcon,
  },
  {
    name: 'React Moveable',
    icon: ReactMoveableIcon,
  },
  {
    name: 'React Zoom Pan Pinch',
    icon: ReactZoomPanPinchIcon,
  },
  {
    name: 'Tiptap',
    icon: TiptapIcon,
  },
  {
    name: 'shadcn/ui',
    icon: ShadcnIcon,
  },
  {
    name: 'WebAssembly',
    icon: WebAssemblyIcon,
  },
  {
    name: 'Rust',
    icon: RustIcon,
  },
];
</script>

<template>
  <section class="max-w-4xl mx-auto pt-32 pb-20 px-6">
    <div class="max-w-[575px]">
      <h1
        v-motion
        class="text-[64px] leading-[1.1] font-semibold mb-6"
        :initial="{ opacity: 0, y: -20 }"
        :enter="{ opacity: 1, y: 0 }"
        :duration="300"
      >
        Professional Certificate Maker
      </h1>
      <p
        v-motion
        class="text-xl mb-6"
        :initial="{ opacity: 0, y: -20 }"
        :enter="{ opacity: 1, y: 0 }"
        :duration="300"
        :delay="300"
      >
        <strong> Certifast </strong>
        is a free design tool that is specifically built to generate design in
        bulks. I worked on this project as a sole creator from design to dev.
      </p>
      <a
        v-motion
        href="https://certifast.co"
        class="flex items-center text-xl font-semibold gap-1 hover:text-blue-300 transition-colors duration-200"
        target="_blank"
        rel="noopener noreferrer"
        :initial="{ opacity: 0, y: -20 }"
        :enter="{ opacity: 1, y: 0 }"
        :duration="300"
        :delay="600"
      >
        <ChevronRight />
        Visit website
      </a>
    </div>
    <div
      v-motion
      class="mt-14"
      :initial="{ opacity: 0, y: -20 }"
      :enter="{ opacity: 1, y: 0 }"
      :duration="300"
      :delay="900"
    >
      <img
        :src="CertifastPrview"
        alt="Certifast"
        class="shadow-md rounded-md w-full aspect-[994/586] object-top object-cover"
      />
    </div>
  </section>
  <section class="max-w-4xl mx-auto py-20 px-6">
    <div class="mb-20">
      <h2 class="text-4xl font-semibold mb-6">The Goal of the Project</h2>
      <p class="text-lg">
        Our goal is to build an easy way to generate design in bulk that can be
        accessed easily for everyone through the web, while the certificate
        generation has to be run on client side to minimize cost.
      </p>
    </div>
    <div class="mb-20">
      <h2 class="text-4xl font-semibold mb-6">Main Challenges</h2>
      <ul class="grid grid-cols-2 gap-x-14 gap-y-6 list-disc pl-6">
        <li>
          We have to build a design editor with great UX on the web like Canva
          or Figma, so it has to be very intuitive for our users to use it.
        </li>
        <li>
          We have to render the certificate in browser instead of server to
          minimize cost and have a very fast rendering process.
        </li>
        <li>
          We need to archive (zip files) certificates before users download it
          and it has to be fast.
        </li>
        <li>
          Most organizations that need this kind of app will have brand
          guidelines for their design. That’s why we should provide the ability
          to add custom fonts.
        </li>
      </ul>
    </div>
    <div>
      <h2 class="text-4xl font-semibold mb-6">The Solutions</h2>
      <ul class="grid grid-cols-2 gap-x-14 gap-y-6 list-disc pl-6">
        <li>
          We picked the most essential feature from Canva and Figma and mixed
          it. We have an infinity canvas and right sidebar like Figma while we
          item interaction like Canva.
        </li>
        <li>
          Because browsers prevent Javascript code from taking screenshots due
          to security issues, we’re using HTML canvas and some code magic to
          match the design that users see on the editor and the exported images.
        </li>
        <li>
          We’re using Rust + WebAssembly for zipping the files, so the process
          to archive files only takes a matter of milliseconds.
        </li>
        <li>
          Our code magic allows users to upload ttf, otf, or woff files to add
          their custom font to Certifast.
        </li>
      </ul>
    </div>
  </section>
  <section class="py-40 pr-6 pl-24 bg-gray-900 text-white" data-inverse="true">
    <div class="max-w-7xl mx-auto">
      <div class="grid grid-cols-2 mb-44 items-center gap-20">
        <div class="min-h-[300px] flex items-center">
          <video class="bg-gray-200" autoplay loop muted>
            <source
              src="https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/1.webm"
              type="video/webm"
            />
            Your browser does not support Webm format.
          </video>
        </div>
        <div>
          <h2 class="text-4xl font-semibold mb-6">
            Intuitive Item interaction
          </h2>
          <p class="text-gray-400 text-lg max-w-[500px]">
            Effortlessly drag, resize, and rotate items to create your perfect
            certificate design. Full control over every element makes
            customization easy.
          </p>
        </div>
      </div>
      <div class="grid grid-cols-2 mb-44 items-center gap-20">
        <div>
          <h2 class="text-4xl font-semibold mb-6">Simplified Text Editing</h2>
          <p class="text-gray-400 text-lg max-w-[500px]">
            Enjoy a seamless experience adding, modifying, and formatting text
            with advanced tools for hassle-free flexibility.
          </p>
        </div>
        <div class="min-h-[300px] flex items-center">
          <video class="bg-gray-200" autoplay loop muted>
            <source
              src="https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/2.webm"
              type="video/webm"
            />
            Your browser does not support Webm format.
          </video>
        </div>
      </div>
      <div class="grid grid-cols-2 mb-44 items-center gap-20">
        <div class="min-h-[300px] flex items-center">
          <video class="bg-gray-200" autoplay loop muted>
            <source
              src="https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/3.webm"
              type="video/webm"
            />
            Your browser does not support Webm format.
          </video>
        </div>
        <div>
          <h2 class="text-4xl font-semibold mb-6">Tailored Customization</h2>
          <p class="text-gray-400 text-lg max-w-[500px]">
            Customize every detail from fonts to colors. Create unique
            certificates that reflect your style and specifications.
          </p>
        </div>
      </div>
      <div class="grid grid-cols-2 mb-44 items-center gap-20">
        <div>
          <h2 class="text-4xl font-semibold mb-6">Preview Before Spending</h2>
          <p class="text-gray-400 text-lg max-w-[500px]">
            Use the new preview feature to see your certificate with all
            customizations before spending credits, ensuring satisfaction before
            finalizing.asy.
          </p>
        </div>
        <div class="min-h-[300px] flex items-center">
          <video class="bg-gray-200" autoplay loop muted>
            <source
              src="https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/4.webm"
              type="video/webm"
            />
            Your browser does not support Webm format.
          </video>
        </div>
      </div>
      <div class="grid grid-cols-2 mb-44 items-center gap-20">
        <div class="min-h-[300px] flex items-center">
          <video class="bg-gray-200" autoplay loop muted>
            <source
              src="https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/5.webm"
              type="video/webm"
            />
            Your browser does not support Webm format.
          </video>
        </div>
        <div>
          <h2 class="text-4xl font-semibold mb-6">
            Fast Certificate Generation
          </h2>
          <p class="text-gray-400 text-lg max-w-[500px]">
            Generate high-quality certificates in seconds with efficient
            processing for quick and reliable service every time.
          </p>
        </div>
      </div>
      <div class="grid grid-cols-2 items-center gap-20">
        <div>
          <h2 class="text-4xl font-semibold mb-6">
            Top-Quality Service with Credits
          </h2>
          <p class="text-gray-400 text-lg max-w-[500px]">
            The new credit system offers a wide range of design features and
            ensures high-quality service. Purchase credits easily within the
            platform for stunning certificates.
          </p>
        </div>
        <div class="min-h-[300px] flex items-center">
          <video class="bg-gray-200" autoplay loop muted>
            <source
              src="https://storage.sidrstudio.com/sidrstudio/assets/certifast-showcase/6.webm"
              type="video/webm"
            />
            Your browser does not support Webm format.
          </video>
        </div>
      </div>
    </div>
  </section>
  <section class="max-w-6xl mx-auto py-20 px-6">
    <h2 class="text-4xl font-semibold mb-12 text-center">
      What People Said about Certifast
    </h2>
    <div
      class="grid md:grid-cols-3 grid-cols-1 max-w-full gap-x-8 gap-y-6 items-start mx-auto justify-center"
    >
      <div class="relative px-7 py-6 border border-gray-200">
        <p class="mt-3 mb-4">
          Thank you bro, it's really helpful, not only for certificates, I even
          use it to number the travel coupon design, if there's no Certifast it
          will take days to be ready hahah. Thank you very much, I hope it
          continues to grow
        </p>
        <div class="grid gap-3 grid-cols-[auto_minmax(0,1fr)] items-center">
          <span
            class="relative flex h-10 w-10 shrink-0 overflow-hidden rounded-full"
            ><img src="https://assets.karyakarsa.com/avatar-63249d20c0f53.jpg"
          /></span>
          <div><p class="font-medium text-sm">Muhammad Fandria Siswara</p></div>
        </div>
      </div>
      <div class="relative px-7 py-6 border border-gray-200">
        <p class="mt-3 mb-4">
          Thank you very much bro, your work is very useful, I can save a lot of
          time making thousands of certificates, in other applications or places
          maybe you can, but only here is the simplest, fastest, and not heavy
          at all... Appreciation and thank you very much bro, from me, the
          designer of the Indonesian Big Data Association, your work is useful
          for many people, I wish you success and good health always
        </p>
        <div class="grid gap-3 grid-cols-[auto_minmax(0,1fr)] items-center">
          <span
            class="relative flex h-10 w-10 shrink-0 overflow-hidden rounded-full"
            ><img src="https://assets.karyakarsa.com/avatar-64118f6c29dce.jpg"
          /></span>
          <div>
            <p class="font-medium text-sm">Qistan Wafi</p>
            <p class="text-xs text-gray-400 mt-1">
              Designer Asosiasi Big Data Indonesia
            </p>
          </div>
        </div>
      </div>
      <div class="relative px-7 py-6 border border-gray-200">
        <p class="mt-3 mb-4">
          Very useful, Mas Azhar, with this tool we can create various
          certificates according to our needs. Your work is very good. Thank You
        </p>
        <div class="grid gap-3 grid-cols-[auto_minmax(0,1fr)] items-center">
          <span
            class="relative flex h-10 w-10 shrink-0 overflow-hidden rounded-full"
            ><img src="https://assets.karyakarsa.com/avatar-62b1133e41d28.jpg"
          /></span>
          <div>
            <p class="font-medium text-sm">Desa Kubang Baros</p>
            <p class="text-xs text-gray-400 mt-1">Staff Kantor Desa</p>
          </div>
        </div>
      </div>
    </div>
    <div class="flex justify-center mt-16">
      <a
        class="border border-gray-300 px-8 py-3 hover:bg-gray-100 transition-colors duration-400"
        href="https://karyakarsa.com/azharalifauzi/certifast"
        target="_blank"
        rel="noopener noreferrer"
      >
        See more reviews
      </a>
    </div>
  </section>
  <section class="max-w-4xl mx-auto px-6 py-20">
    <h2 class="text-4xl font-semibold mb-10 leading-tight">
      Secret Ingredients
    </h2>
    <div class="grid grid-cols-3 gap-6">
      <div
        v-for="techStack in techStacks"
        :key="techStack.name"
        class="flex items-center gap-3"
      >
        <img :src="techStack.icon" :alt="techStack.name" />
        <span>{{ techStack.name }}</span>
      </div>
    </div>
  </section>
  <section class="max-w-4xl mx-auto px-6 pt-20">
    <h2 class="text-4xl font-semibold mb-6 leading-tight">
      The Result: Over 6 Million Certificates Generated and Counting
    </h2>
    <p class="text-xl">
      Certifast has become widely used and quite successful. From the launch at
      2021 until now it’s been used by 150k unique users and has around 5k
      monthly active users with more than 6 Million certificates has been
      generated.
    </p>
  </section>
  <footer class="text-center px-6 pb-10 pt-32">
    © 2024 Azhar Ali Fauzi. All right reserved.
  </footer>
</template>
