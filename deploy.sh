#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

# git init -b main
git init 

git config --local user.name thalalhassan
git config --local user.email thalal424@gmail.com

git checkout -b main
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:thalalhassan/thalalhassan.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:thalalhassan/vue-covid-tracker.git main:gh-pages

cd -