#!/bin/bash
echo $PWD

echo "---------------------------------"
echo "Pulling fresh models"
echo "---------------------------------"
echo "Downloading models..."

#wget -q -O /app/fluxgym/models/unet/flux1-dev.sft https://huggingface.co/cocktailpeanut/xulf-dev/resolve/main/flux1-dev.sft?download=true
wget -q -O /app/fluxgym/models/unet/flux1-schnell.safetensors https://huggingface.co/cocktailpeanut/xulf-schnell/resolve/main/flux1-schnell.safetensors?download=true
wget -q -O /app/fluxgym/models/clip/clip_l.safetensors https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/clip_l.safetensors?download=true
wget -q -O /app/fluxgym/models/clip/t5xxl_fp16.safetensors https://huggingface.co/comfyanonymous/flux_text_encoders/resolve/main/t5xxl_fp16.safetensors?download=true
wget -q -O /app/fluxgym/models/vae/ae.sft https://huggingface.co/cocktailpeanut/xulf-dev/resolve/main/ae.sft?download=true

echo "Models downloaded successfully."
ls -la /app/fluxgym/models/unet
ls -la /app/fluxgym/models/clip
ls -la /app/fluxgym/models/vae

echo "---------------------------------"