prep:
    mkdir -p public/fonts public/js
    cp -r node_modules/@fontsource*/* public/fonts/
    find public/fonts -name "*.css" -exec sed -i '' 's/font-display: swap/font-display: black/g' {} +
    cp node_modules/htmx.org/dist/htmx.min.js public/js/
    cp node_modules/the-fixi-project/dist/the-fixi-project.min.js public/js/

dev:
    just prep
    wrangler dev

deploy:
    just prep
    wrangler deploy
