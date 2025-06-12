echo $PWD

echo "Pulling fresh FluxGym"

git clone https://github.com/cocktailpeanut/fluxgym.git
cd fluxgym

pip install --no-cache-dir -r requirements.txt

echo "Install done."