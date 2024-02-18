<template>
  <q-layout view="lHh Lpr lFf">
    <q-header elevated>
      <q-toolbar>
        <q-btn
          flat
          dense
          round
          icon="menu"
          aria-label="Menu"
          @click="toggleLeftDrawer"
        />

        <q-toolbar-title> Quasar App </q-toolbar-title>
      </q-toolbar>
    </q-header>

    <q-drawer v-model="leftDrawerOpen" show-if-above bordered>
      <q-list>
        <q-item-label header> Essential Links </q-item-label>

        <!-- Direkte Verwendung von router-link statt EssentialLink Komponente -->
        <q-item
          v-for="link in essentialLinks"
          :key="link.title"
          clickable
          v-ripple
        >
          <q-item-section avatar>
            <q-icon :name="link.icon" />
          </q-item-section>
          <q-item-section>
            <!-- Verwendung von router-link für SPA-Navigation -->
            <router-link :to="{ name: link.name }">{{
              link.title
            }}</router-link>
          </q-item-section>
        </q-item>
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script>
import { defineComponent, ref } from "vue";

export default defineComponent({
  name: "MainLayout",

  setup() {
    const leftDrawerOpen = ref(false);

    const essentialLinks = ref([
      {
        title: "Home",
        caption: "Start",
        icon: "home",
        name: "home", // Verwenden Sie den Routennamen
      },
      {
        title: "Exercise",
        caption: "Start Coding",
        icon: "code",
        name: "exercise", // Verwenden Sie den Routennamen
      },
    ]);

    return {
      essentialLinks,
      leftDrawerOpen,
      toggleLeftDrawer() {
        leftDrawerOpen.value = !leftDrawerOpen.value;
      },
    };
  },
});
</script>
