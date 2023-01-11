import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

// https://vitejs.dev/config/
export default defineConfig({
  // change host to something other then localhost, reference- stackoverflow
  server: {
    host: '0.0.0.0',
    port: 5173
  },
  plugins: [react()],
})
