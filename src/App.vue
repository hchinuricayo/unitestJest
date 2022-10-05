<script setup lang="ts">
import { RouterView } from "vue-router";
import { useAuthStore } from "@/stores/index";
import Header from "./components/Header.vue";
import Footer from "./components/Footer.vue";

import "@/assets/vendor/jquery/jquery.min.js"
import "@/assets/js/owl-carousel.js"
import "@/assets/js/tabs.js"
const authStore = useAuthStore();
</script>

<template>
  <Header></Header>

  <section class="contact-us" id="contact">
    <RouterView />

    <Footer></Footer>
  </section>
</template>

<style>
@import "@/assets/vendor/bootstrap/css/bootstrap.min.css";
@import "@/assets/css/fontawesome.css";
@import "@/assets/css/templatemo-edu-meeting.css";
@import "@/assets/css/owl.css";
@import "@/assets/css/lightbox.css";
</style>
