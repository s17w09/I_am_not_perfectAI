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
    
    daisyui: {
      darkTheme: false,
    },
  },

  plugins: [
    require('daisyui'),
  ],
}