//const colors = require('tailwindcss/colors')

module.exports = {
  purge: {
    enabled: ["production"].includes(process.env.NODE_ENV),
    content: [
      "./**/*.html.erb",
      "./app/helpers/**/*.rb",
      "./app/javascript/**/*.js",
    ],
    theme: {
      colors: {
        pink: '#ee2a7b',
      },
      extend: {
        colors: {
          blue: {
            '100': '#f5f5f5',
            '200': '#eeeeee',
            '300': '#e0e0e0',
            '400': '#bdbdbd',
            '500': '#04416f',
            '900': '#262262',
            },
          }
        },
    },
    variants: {
      extend: {
        backgroundColor: ['active'],
      },
    },
    plugins: [
      require("@tailwindcss/forms")({
        strategy: 'class',
      }),
    ],
  }
};
