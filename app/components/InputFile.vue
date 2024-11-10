<script setup lang="ts">
const emits = defineEmits(['file'])

function onFileChange(e: Event) {
  const target = e.target as HTMLInputElement
  const file = target.files?.[0]
  if (!file) {
    emits('file', null)
    return
  }

  emits('file', file)
}
</script>

<template>
  <label
    bg="neutral-100 hover:neutral-200 active:neutral-100"
    text="hover:neutral-700 active:neutral-500"
    flex="~"
    transition="all ease-in-out"
    cursor-pointer items-center justify-center overflow-hidden rounded-lg duration-300
  >
    <input
      type="file"
      invisible hidden w-full appearance-none
      @change="onFileChange"
    >
    <div
      flex="~ row"
      h-full w-full items-center justify-center
    >
      <slot />
    </div>
  </label>
</template>
