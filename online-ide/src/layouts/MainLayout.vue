<template>
  <q-layout view="lHh Lpr lFf">
      <q-header elevated :class="bg-secondary">
        <q-toolbar>
          <q-btn flat @click="drawer = !drawer" round dense icon="menu" />
          <q-toolbar-title>Marketing-Academy</q-toolbar-title>
        </q-toolbar>
      </q-header>

    <q-drawer
        v-model="drawer"
        show-if-above
        :width="200"
        :breakpoint="500"
        bordered
        class="bg-grey-3"
      >
        <q-scroll-area class="fit">
          <q-list>
            <template v-for="(menuItem, index) in menuList" :key="index">
              <q-item clickable :to="menuItem.to" :active="menuItem.to === $route.path" v-ripple>
                <q-item-section avatar>
                  <q-icon :name="menuItem.icon" />
                </q-item-section>
                <q-item-section>
                  {{ menuItem.label }}
                </q-item-section>
              </q-item>
              <q-separator :key="'sep' + index"  v-if="menuItem.separator" />
            </template>

          </q-list>
        </q-scroll-area>
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
    const menuList = [
    {
      icon: 'home',
      label: 'Home',
      separator: false,
      to: "/"
    },
    {
      icon: 'school',
      label: 'Exercise',
      separator: true,
      to: "/exercise"
    },
  ]

    return {
      drawer: ref(false),
      menuList
    };
  },
});
</script>
