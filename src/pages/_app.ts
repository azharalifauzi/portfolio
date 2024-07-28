import { MotionPlugin } from "@vueuse/motion";
import type { App } from "vue";

export default (app: App) => {
  app.use(MotionPlugin);
};
