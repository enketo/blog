curl 'https://enketo.org/js/navigation.json' > ./_data/navigation.json
jekyll build
cp _headers _site
