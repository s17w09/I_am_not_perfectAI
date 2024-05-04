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
  
    },

    extend: {    
    },
  },

  plugins: [
    require('daisyui'),
  ],
}