<!-- IframeEmbed.vue -->
<template>
    <div class="iframe-container" style="flex-grow: 1; height: 95vh;">
      <iframe :src="url" frameborder="0" style="width:100%; height:100%;" sandbox="allow-scripts allow-same-origin" loading="lazy"></iframe>
    </div>
  </template>
  
  <script>
  export default {
    name: 'IframeEmbed',
    props: {
      url: {
        type: String,
        required: true
      },
    },
  }
  </script>
  
  <style scoped>
  .iframe-container {
    /* Adjust the height as needed or make it responsive */
    height: 500px; /* Example fixed height */
    width: 100%;
    overflow: hidden;
    position: relative;
  }
  .iframe-container iframe {
    border: 0;
    height: 100%;
    width: 100%;
  }
  </style>
  