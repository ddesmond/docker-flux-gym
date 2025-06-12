#!/bin/bash
echo $PWD
# add custom envs or pre-start code/hooks here

echo "___ Starting Fluxgym ___"
cd /app/fluxgym
python3 app.py