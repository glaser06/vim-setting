#!/bin/bash

if [ ! -d "~/work" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir ~/work
fi

cd ~/work 

git clone git@bitbucket.org:eiq_mobility/ds-sandbox.git

git clone git@bitbucket.org:eiq_mobility/evaluate-env.git

