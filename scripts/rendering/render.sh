conda activate compvis

wget https://download.blender.org/release/Blender3.2/blender-3.2.2-linux-x64.tar.xz && \
  tar -xf blender-3.2.2-linux-x64.tar.xz && \
  rm blender-3.2.2-linux-x64.tar.xz

sudo apt-get install xserver-xorg -y && \
  sudo python3 start_x_server.py start

cd ../.. && \
  pip install -r requirements.txt && \
  pip install -e . && \
  cd scripts/rendering && \
  pip install -r requirements.txt

python3 main.py --render-dir '.' --sample-size 100000
