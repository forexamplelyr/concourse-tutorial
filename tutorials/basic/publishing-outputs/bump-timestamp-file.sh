#!/bin/sh
#apt-get install git
set -e # fail fast
set -x # print commands

git clone resource-gist updated-gist

cd updated-gist
cd tutu
echo $(date) > bumpme

git config --global user.email "nobody@concourse-ci.org"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date"
