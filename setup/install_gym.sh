#!/bin/bash
echo $PWD

pyenv virtualenv $PYTHON_VERSION flux-gym
pyenv local flux-gym

which python


echo "Pulling fresh FluxGym"


git clone https://github.com/cocktailpeanut/fluxgym.git /app/fluxgym




