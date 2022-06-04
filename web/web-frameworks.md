# Web Frameworks

## Angualar
https://angular.io/

### Pros
- Personally (Ryan) have descent bit of experiernce with. 
- Has some nice libraries that can be used alonside it
  - [Angular Material](https://material.angular.io/)
    - UI components
    - Styling
  - [Angular Universal](https://angular.io/guide/universal)
    - Supports Server Side Rendering
    - Supports Prerendering
    - Can improve load speeds and SEO
  - [NG Bootstrap](https://ng-bootstrap.github.io)
    - Styling and components rooting from Bootstrap
  - [Flex layout](https://github.com/angular/flex-layout)
    - Layout and styling

### Cons
- Larger learning curve. 
- Pain in the butt to set up a small new project
- Have had all sorts of issues trying to get the prerendering to work properly. It would complete but not actually do the prerendering and throw no errors. I eventually was able to figure it stemed to some reference to window with you cannot obvioudly do in SSR but still it never told me it had an issue. I just foresee many headaches actually using it for a simple website

## React
https://reactjs.org/

Not much to say currently have used before and is very poplate at companies. It seemed fine to use from my experience just havent dove in.

I don't really see a lot around SSR and getting it to work with React

## Vuejs
https://vuejs.org/

Vue seems very popular as well however, I do not yet have a lot of experience with it.

### Pros
- I believe vue can be integrated into any website piece by piece. 
- There is documentation on SSR and SSG
  - https://vuejs.org/guide/scaling-up/ssr.html#cross-request-state-pollution
- I believe the learning curve is much less comparied to something like angular


### Cons

Unsure yet

## Nuxt
https://v3.nuxtjs.org/

V3 is almost released but not 100% yet. V2 is good to go though. 

Seems to be a good choice for SEO and generating static websites

### Pros

- Built on vuejs (which could be a pro depending on opinion on vuejs)
- Appears to have good support for SEO
  - https://nuxtjs.org/docs/features/meta-tags-seo/
- Appears to have good support for SSG
  - https://v3.nuxtjs.org/guide/deploy/static-hosting/
  - https://nuxtjs.org/docs/concepts/static-site-generation/

### Cons

Unsure yet

## Quasar
 https://quasar.dev/

Also built on vuejs. Doesnt appear to be as SEO / SSG friendly as Nuxt. 

Appears like can be used to do native like ionic

## Svelte / SvelteKit
https://svelte.dev/
https://kit.svelte.dev/

From what I see people say is an extremely simple solution. "Just makes sense"

### Pros

- kit is suppose to be very fast and good with SEO
- bascially just basic old school cool web development
- Prerendering - https://kit.svelte.dev/docs/page-options#prerender

### Cons
