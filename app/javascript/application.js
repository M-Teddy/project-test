// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import { swiper_card } from "./components/swiper_card";
// turbolinks:load
document.addEventListener("DOMContentLoaded", function () {
  swiper_card();

});
