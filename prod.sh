#!/bin/sh

set -ex

echo "Building tailwind.big.css"
npx tailwindcss-cli@latest build --input /work/input/tailwind.css --output /work/output/tailwind.big.css --config /work/input/tailwind.config.js --minify

echo "Removing old output/tailwind.css"
rm -f /work/output/tailwind.css

echo "Shrinking..."
cleancss /work/output/tailwind.big.css -o /work/output/tailwind.css

echo "Removing output/tailwind.big.css"
rm -f /work/output/tailwind.big.css
