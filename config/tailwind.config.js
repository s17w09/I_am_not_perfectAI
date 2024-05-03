module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
  ],

  theme: {
    fontFamily: {
      kiwimaru: ["Kiwi Maru"],
  
    },

    extend: {    
    },
  },

  plugins: [
    require('daisyui'),
  ],
}