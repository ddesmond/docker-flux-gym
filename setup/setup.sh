#!/bin/bash

echo "Setting up"

git clone -b sd3 https://github.com/kohya-ss/sd-scripts

cd sd-scripts

pip install --no-cache-dir -r ./requirements.txt


# Install Torch, Torchvision, and Torchaudio for CUDA 12.2
pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu122/torch_stable.html


python3 -v