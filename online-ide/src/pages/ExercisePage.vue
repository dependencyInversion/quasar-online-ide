<template>
  <q-layout>
    <q-page-container>
      <q-page class="" style="flex-grow: 1;">
        <q-btn
          :icon="drawerIcon"
          @click="toggleExerciseDrawer"
          position="top-left"
          :style="{ position: 'absolute', zIndex: '999' }"
        />
        <IframeEmbed url="http://localhost:8081/?folder=/home/developer/playground" />
      </q-page>
    </q-page-container>
    <q-drawer
      v-model="exerciseDrawerOpen"
      side="left"
      :width="drawerWidth"
    >
      <q-list bordered class="rounded-borders">
        <q-item class="flex flex-grow-1">
        <q-card flat>
          <q-card-section class="q-gutter-sm row items-center justify-between">
            <div class="row items-center">
              <q-icon name="lightbulb_outline" size="sm" />
              <span class="q-ml-md text-h6">Excerise</span>
            </div>
          </q-card-section>

          <q-separator inset />

          <q-card-section>
            Examine correlations of the new features.<br>
            Now that we have our volume and datetime features, we want to check the correlations between our new features (stored in the <InlineCode>new_features</InlineCode> list) and the target (<InlineCode>5d_close_future_pct</InlineCode>) to see how strongly they are related. Recall pandas has the built-in <InlineCode>.corr()</InlineCode> method for DataFrames, and seaborn has a nice <InlineCode>heatmap()</InlineCode> function to show the correlations.
          </q-card-section>
        </q-card>
      </q-item>
      <q-item class="flex flex-grow-1">
        <q-card flat>
          <q-card-section class="q-gutter-sm row items-center justify-between">
            <div class="row items-center">
              <q-icon name="task_alt" size="sm" />
              <span class="q-ml-md text-h6">Instructions</span>
            </div>
            <div class="q-gutter-sm row items-center">
              <q-badge>
                100 XP
              </q-badge>
            </div>
          </q-card-section>

          <q-separator inset />

          <q-card-section>
            <ul>
              <li>Extend our <InlineCode>new_features</InlineCode> variable to contain the weekdays' column names, such as <InlineCode>weekday_1</InlineCode>, by concatenating the weekday number with the <InlineCode>'weekday_'</InlineCode> string.</li>
              <li>Use Seaborn's <InlineCode>heatmap</InlineCode> to plot the correlations of <InlineCode>new_features</InlineCode> and the target, <InlineCode>5d_close_future_pct</InlineCode>.</li>
            </ul>
          </q-card-section>

          <q-card-section>
            <q-btn label="Take Hint (-30 XP)" color="primary" icon="lightbulb_outline" />
          </q-card-section>
          </q-card>
        </q-item>
      </q-list>
    </q-drawer>
  </q-layout>
</template>

<style>
.q-badge {
  background-color: rgb(252, 206, 9);
  color: black;
  font-weight: bold;
  border-radius: 4px; /* Optional: for rounded corners */
  padding: 4px 8px; /* Adjust padding as needed */
}
</style>

<script>
import { defineComponent } from 'vue'
import IframeEmbed from 'src/components/IframeEmbed.vue'
import InlineCode from 'src/components/InlineCode.vue';

export default defineComponent({
    name: 'IndexPage',
    components: {IframeEmbed, InlineCode },
    data() {
    return {
      exerciseDrawerOpen: true,
      drawerIcon: 'navigate_before',
      drawerWidth: 300 // You can set this to be 1/3 of the viewport width
    }
  },
  methods: {
    toggleExerciseDrawer() {
      this.exerciseDrawerOpen = !this.exerciseDrawerOpen;

      this.drawerIcon = this.exerciseDrawerOpen ? 'navigate_before' : 'navigate_next';
    }
  }
})
</script>