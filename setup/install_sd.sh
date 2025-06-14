#!/bin/bash
echo $PWD

pyenv virtualenv $PYTHON_VERSION flux-sd
pyenv local flux-sd

echo "Pulling fresh SD"

git clone -b sd3 https://github.com/kohya-ss/sd-scripts /app/fluxgym/sd-scripts

cd /app/fluxgym/sd-scripts && pip install -r requirements.txt
echo "fluxgym requirements installed successfully."


pip install --pre torch==2.4 torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
echo "PyTorch installed successfully."



