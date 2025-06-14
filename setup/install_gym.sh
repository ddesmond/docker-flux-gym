#!/bin/bash
echo $PWD

pyenv virtualenv $PYTHON_VERSION flux
pyenv init flux
pyenv activate flux

which python


echo "Pulling fresh FluxGym"


git clone https://github.com/cocktailpeanut/fluxgym.git /app/fluxgym




