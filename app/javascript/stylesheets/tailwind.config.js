const colors = require('tailwindcss/colors')

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
        black: colors.black,
        white: colors.white,
        gray: colors.trueGray,
        indigo: colors.indigo,
        red: colors.rose,
        yellow: colors.amber,
      },
      extend: {},
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
