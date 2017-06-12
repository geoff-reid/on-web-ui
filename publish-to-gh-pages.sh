#!/bin/bash

if [ "$TRAVIS_PULL_REQUEST" == "false" ] && [ "$TRAVIS_BRANCH" == "master" ]; then

  echo -e "Publishing to gh-pages...\n"

  git clone --quiet --branch=gh-pages https://i${GITHUB_TOKEN}@github.com/$TRAVIS_REPO_SLUG gh-pages

  cd gh-pages
  pwd
  git rm -rf *
  cp -Rf ../static/* .
  git commit -m "Test"
  git push -fq origin gh-pages

fi 
