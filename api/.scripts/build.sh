#!/bin/bash

# update JS dependencies
composer clear-cache
composer update -v

# update highlight js
cp vendor/npm-asset/highlightjs--cdn-assets/highlight.min.js ../.js/
cp vendor/npm-asset/highlightjs--cdn-assets/styles/atom-one-dark.min.css ../.styles/

# update jquery
cp vendor/npm-asset/jquery/dist/jquery.min.js ../.js/

# update katex
cp vendor/npm-asset/katex/dist/katex.min.js ../.js/
cp vendor/npm-asset/katex/dist/contrib/auto-render.min.js ../.js/
cp vendor/npm-asset/katex/dist/katex.min.css ../.styles/
cp -r vendor/npm-asset/katex/dist/fonts ../.styles/

# update mermaid
# cp vendor/npm-asset/mermaid/dist/mermaid.min.js ../.js/
# cp vendor/npm-asset/mermaid/dist/mermaid.min.js.map ../.js/

# update vis-network
cp vendor/npm-asset/vis-network/dist/vis-network.min.js ../.js/
cp vendor/npm-asset/vis-network/dist/vis-network.min.js.map ../.js/
cp vendor/npm-asset/vis-network/dist/dist/vis-network.min.css ../.styles/

# update Parsedown dependencie
cd ..
composer clear-cache
composer update -v


#cp perlite/vendor/erusev/parsedown/Parsedown.php perlite/

# remove old container and images
# docker container rm perlite;
# docker container rm perlite_web;
# docker container rm perlite_web_dev; 
# docker image rm sec77/perlite_web:stable; 
# docker image rm sec77/perlite; 
# docker image rm php;

# # rebuild and start
# cd perlite
# docker build -t sec77/perlite:latest . --network host;
# cd ..;
# docker-compose --file docker-compose.yml up
