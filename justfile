prep:
    mkdir -p public/bundle
    cp -r node_modules/@fontsource*/* public/bundle/
    find public -name "*.css" -exec sed -i '' 's/font-display: swap/font-display: black/g' {} +
    cp node_modules/htmx.org/dist/htmx.js public/bundle/

dev:
    just prep
    wrangler dev

deploy:
    just prep
    wrangler deploy
