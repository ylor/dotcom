prep:
    rm -rf public/bundle
    mkdir -p public/bundle
    cp -r node_modules/@fontsource*/* public/bundle/
    cp node_modules/htmx.org/dist/htmx.js public/bundle/
    sed -i '' 's/font-display: swap/font-display: black/g' public/**/*.css

dev:
    just prep
    wrangler dev

deploy:
    just prep
    wrangler deploy
