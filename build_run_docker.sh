#!/bin/bash

#build docker image
#nvidia-docker build -t  yolt_container .

# create and run container
#nvidia-docker run -it -v --name yolt_train0 yolt_container

#nvidia-docker run -it yolt_container 

### run in the project yolt folder
#nvidia-docker run -v $(pwd):/yolt --name train_test -it yolt_container


###  start container and mount /home/hlc/programs on Cryo06, need to set $LD_LIBRARY_PATH in ~/.bashrc :
#export LD_LIBRARY_PATH=/programs/cuDNN_7.0/cuda/lib64:/programs/cuda-9.0/lib64:$LD_LIBRARY_PATH
##make the cuda USE the same GPU ID with nvidia-smi (default is FASTEST_FIRST)
#export CUDA_DEVICE_ORDER=PCI_BUS_ID
### don't delete this container if you have to. After delete, we need to change the ~/.bashrc again
nvidia-docker run -v $(pwd):/yolt -v /home/hlc/programs:/programs --name train_test -it yolt_container

###
### after build and start the docker container, please compile the codes
#cd /yolt/scripts
#python yolt2.py  --mode compile --yolt_dir /yolt

### launch a new terminal to the container, 3d6341c55a43 is the container by "nvidia-docker ps" or "nvidia-docker ps -a"
#nvidia-docker exec -it 3d6341c55a43 bash

### start the container at the background
#4cc63f4a50d1 is got by "nvidia-docker ps -q -l"
#nvidia-docker start 3d6341c55a43

### attach to the container
#nvidia-docker attach 3d6341c55a43




