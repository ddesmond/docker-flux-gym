#!/bin/bash
echo $PWD
# add custom envs or pre-start code/hooks here



export GRADIO_SERVER_NAME="0.0.0.0"

#nohup bash -c "jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' & python /app/fluxgym/app.py" > combined.log 2>&1
#python --version > /app/start.sh && chmod +x /app/start.sh # buildkit


echo "___ Starting Fluxgym ___"
cd /app/fluxgym


python app.py