<script setup lang="ts">
import { RouterLink } from "vue-router";
import { useAuthStore } from "@/stores/index";
const authStore = useAuthStore();
</script>
<template>
  <!-- Sub Header -->
  <div class="sub-header">
    <div class="container">
      <div class="row">
        <div class="col-lg-8 col-sm-8">
          <div class="left-content">
            <p>
              Frontend para la API Cloud.
            </p>
          </div>
        </div>
        <div class="col-lg-4 col-sm-4">
          <div class="right-icons">
            <ul>
              <li>
                <a href="#"><i class="fa fa-facebook"></i></a>
              </li>
              <li>
                <a href="#"><i class="fa fa-twitter"></i></a>
              </li>
              <li>
                <a href="#"><i class="fa fa-behance"></i></a>
              </li>
              <li>
                <a href="#"><i class="fa fa-linkedin"></i></a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
            <!-- ***** Logo Start ***** -->
            <a href="/" class="logo"> App Cloud </a>
            <!-- ***** Logo End ***** -->
            <!-- ***** Menu Start ***** -->
            <ul class="nav">
              <li class="scroll-to-section">
                <RouterLink to="/" class="active">Inicio</RouterLink>
              </li>
              <li v-if="authStore.token"><RouterLink to="/interpretes">Intérpretes</RouterLink></li>
              <li class="scroll-to-section">
                <RouterLink to="/about">Acerca De</RouterLink>
              </li>
              <li v-if="authStore.token" class="has-sub">
                <a href="javascript:void(0)">Catálogos</a>
                <ul class="sub-menu">
                  <li><a href="meetings.html">Upcoming Meetings</a></li>
                  <li><a href="meeting-details.html">Meeting Details</a></li>
                </ul>
              </li>
              <li v-if="authStore.token" class="scroll-to-section"><a href="#"> Hola {{ authStore.user }}</a></li>
              <li v-if="authStore.token" class="scroll-to-section">
                <a @click="authStore.logout()" class="text-danger">Salir</a>
              </li>
              <li class="scroll-to-section">
                <RouterLink v-if="!authStore.token" to="/login"
                  >Iniciar Sesión</RouterLink
                >
              </li>
            </ul>
            <a class="menu-trigger">
              <span>Menu</span>
            </a>
            <!-- ***** Menu End ***** -->
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->
</template>
