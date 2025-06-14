#!/bin/bash
echo $PWD

echo "Pulling fresh FluxGym"


git clone https://github.com/cocktailpeanut/fluxgym.git /app/fluxgym

cd /app/fluxgym && pip install -r requirements.txt
echo "fluxgym requirements installed successfully."


