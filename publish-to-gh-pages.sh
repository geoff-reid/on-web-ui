#!/bin/bash -ex

  echo -e "Publishing build to gh-pages...\n"

  git clone --branch=gh-pages http://${GITHUB_TOKEN}@github.com/${TRAVIS_REPO_SLUG} gh-pages

  cd gh-pages
  pwd
  rm -rf *
  cp -Rf ../static/* .
  git config user.name ${GIT_USER_NAME} 
  git config user.email ${GIT_USER_EMAIL} 
  git status
  git add --all
  git status
  git commit -a -m "build from commit ${TRAVIS_COMMIT}"
  git status
  git push -fq origin gh-pages
