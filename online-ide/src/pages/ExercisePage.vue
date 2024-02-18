<template>
  <div style="height: 100vh; display: flex; flex-direction: column">
    <q-page class="" style="flex-grow: 1">
      <div
        class="row justify-center items-stretch"
        style="flex-grow: 1; height: 100vh"
      >
        <div class="q-pa-md col-4" style="flex-grow: 1">
          <q-list bordered class="rounded-borders">
            <q-expansion-item expand-separator icon="code" label="coding">
              <q-card>
                <q-card-section>
                  Start coding in our wonderful app.
                </q-card-section>
              </q-card>
            </q-expansion-item>
          </q-list>
        </div>
        <div class="col-8" style="flex-grow: 1">
          <!-- You can replace this section with content relevant to the Exercise page -->
          <div class="q-pa-md" style="height: 100%; background-color: #f5f5f5">
            <p style="text-align: center">Coding! Test!</p>
            <!-- Add more content here as needed -->
          </div>
        </div>
      </div>
    </q-page>
  </div>
</template>

<script>
import { defineComponent } from "vue";

export default defineComponent({
  name: "ExercisePage",
  // components: {}, // Add components if you have any
});
</script>

<style>
/* Add any additional style you need here */
</style>
