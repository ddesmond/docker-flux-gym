#!/bin/bash
echo $PWD

cd /app/fluxgym

echo "Pulling fresh SD"

git clone -b sd3 https://github.com/kohya-ss/sd-scripts /app/fluxgym/sd-scripts

cd /app/fluxgym/sd-scripts && pip install -r requirements.txt
echo "sd requirements installed successfully."

cd /app/fluxgym && pip install -r requirements.txt
echo "fluxgym requirements installed successfully."


pip install --pre torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

echo "PyTorch installed successfully."



