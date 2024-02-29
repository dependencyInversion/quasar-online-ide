<template>
  <q-page class="flex flex-center" style="height: 100vh">
    <div class="text-center row">
      <q-banner rounded class="bg-grey-2">
        <q-img
          src="~assets/icon.webp"
          fit="fill"
          style="width: 300px; height: 300px;"
        />
        
        <h3>Willkommen bei der<br>Marketing-Academy</h3>
        <h5>Entdecken Sie die Zukunft des Online-Lernens!</h5>
        <q-btn label="Jetzt starten" color="secondary" to="exercise"/>
      </q-banner>
    </div>
  </q-page>
</template>

<script>
import { defineComponent } from 'vue'
export default defineComponent({
  name: 'IndexPage'
})
</script>