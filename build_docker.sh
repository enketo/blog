curl 'https://enketo.org/js/navigation.json' > ./_data/navigation.json
docker run --rm --volume="$PWD:/srv/jekyll:Z" -it jekyll/builder:latest jekyll build
cp _headers _site
