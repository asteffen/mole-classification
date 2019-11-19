#!/bin/bash
# This script downloads the Kaggle dataset on a GCP instance.

pip install kaggle
mkdir /root/.kaggle/
cp /home/jupyter/kaggle.json /root/.kaggle/kaggle.json
chmod 600 /root/.kaggle/kaggle.json
kaggle datasets download -d fanconic/skin-cancer-malignant-vs-benign -p /home/jupyter/skin-cancer-data/
cd /home/jupyter/skin-cancer-data/
unzip *.zip
rm -r data
echo "Script completed"
