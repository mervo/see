docker build -t see --build-arg NCCL_NAME=nccl-repo-ubuntu1804-2.4.8-ga-cuda10.1_1-1_amd64.deb .

docker run --gpus all \
  -v /data/projects/pixelplus:/data \
  -it see
  
cd chainer
python fsns_demo.py . model_35000.npz /data/pixelplus/data/surfview/bw/Container/CONTAINER3_BW.png ../datasets/fsns/fsns_char_map.json
