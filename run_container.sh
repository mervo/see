docker build -t see --build-arg NCCL_NAME=nccl-repo-ubuntu1804-2.4.8-ga-cuda10.1_1-1_amd64.deb .

docker run --gpus all \
  -v /data/projects/pixelplus:/data \
  -it see
  
  
