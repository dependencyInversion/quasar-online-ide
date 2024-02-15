<!-- InlineCode.vue -->
<template>
    <span class="inline-code"><slot></slot></span>
  </template>
  
  <style>
  .inline-code {
    background-color: #f5f5f5; /* Light grey background */
    font-family: monospace; /* Monospace font for code */
    padding: 2px 4px; /* Padding around the text */
    border-radius: 4px; /* Rounded corners */
    border: 1px solid #e0e0e0; /* Light grey border */
  }
  </style>