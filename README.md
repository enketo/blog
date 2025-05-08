Enketo's Blog
=======================

Published at [blog.enketo.org](https://blog.enketo.org)

***

## Development

### Install

- either Docker or Ruby

### Build

Either:
- `./build.sh` if you have Ruby installed
- `./build_docker.sh` if you have Docker installed

### Watch

1. Build once.
2. in one terminal watch jekyll, either:
    - `docker run --rm --volume="$PWD:/srv/jekyll:Z" -it jekyll/builder:latest jekyll build --watch`
    - `jekyll build --watch`
3. in other terminal serve the folder, e.g.:
    - `npx serve _site/` if you have NodeJS


### Deploy

Netlify will automatically deploy from `master` branch.

## Acknowledgements

<a href="https://www.netlify.com">
  <img src="https://www.netlify.com/img/global/badges/netlify-light.svg">
</a>
