# How to set up GCP instance and download dataset from Kaggle

* Go to https://console.cloud.google.com/ai-platform/notebooks/instances
* Click "new instance" > Customize instance
  * Select PyTorch 1.2
  * Select NVIDIA K80
  * Check the box to install NVIDIA GPU driver.
* Start the instance, then click "Open JupyterLab"
* On the left panel, click the upload icon. Select your kaggle.json file. This will upload to `/home/jupyter`.
* File > New > Console
* Type the following commands in the console:

        git clone https://github.com/asteffen/mole-classification.git
        sudo su
        cd mole-classification
        ./dl-kaggle.sh
* Remember to stop the instance when you are done.
