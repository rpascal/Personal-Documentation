# SvelteKit Useful Dependencies

## Tailwind (css utilities)
https://tailwindcss.com/docs/guides/sveltekit

```
npm install -D tailwindcss postcss autoprefixer svelte-preprocess
npx tailwindcss init tailwind.config.cjs -p
mv postcss.config.js postcss.config.cjs
```
Add -`content: ['./src/**/*.{html,js,svelte,ts}'],`
Create `src/app.css` with content
```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```
import css in layout file

## SCSS
`npm i -D svelte-preprocess sass`
Then `Svelte: Restart Language Server`

## daisyUI (UI components built on tailwind)
https://daisyui.com/

```
npm i -d daisyui
```

Then add daisyUI to your tailwind.config.js files:
```json
module.exports = {
  //...
  plugins: [require("daisyui")],
}        
```

### Theme generator
https://daisyui.com/theme-generator/

## unplugin-icons 
https://github.com/antfu/unplugin-icons

Access tons of icons and only the ones youuse should actually be bundled

Icon set
https://icon-sets.iconify.design/

## Material (UI Components)
https://sveltematerialui.com/
- Github seems to have better docs

You need to install on components to get the theme generation to work
- `npm install --save-dev @smui/button`

```
npm install --save-dev smui-theme
npm install --save-dev smui-theme
npx smui-theme template src/theme
```
Add to package.json
`"generate-smui-theme": "smui-theme compile static/smui.css -i src/theme"`

Appears like you need to regenerate after adding each component to properly get the css

## Forms / Form Validation

https://felte.dev/docs/svelte/validators

Can be used for form validation
- https://felte.dev/docs/svelte/validators#using-zod

## Toast

https://www.npmjs.com/package/@zerodevx/svelte-toast