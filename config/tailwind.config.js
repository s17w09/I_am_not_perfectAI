module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
  ],

  theme: {
    fontFamily: {
      per: ["Permanent Marker"],
      kos: ["Kosugi Maru"],
  
    },

    extend: {    
    },
  },

  plugins: [
    require('daisyui'),
  ],
}