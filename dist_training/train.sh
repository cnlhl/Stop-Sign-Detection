#!/bin/bash


# I'm not sure if we can call an ipynb
# replace with ipynb OR download the python script from colab and replace?

training="train.py" 

# or uncomment to test if this works

# jupyter nbconvert --to script Train_YOLOv5_ipynb.ipynb

# checking existence

if [ -f "$training" ];
then
    echo "running"

    # in the example I based this off of, they used mpi (message passing interface) + srun is used for slurm
    
    srun --mpi=pmix_v3 python3 "$training"
    
    echo "done"
else
    echo "does not exist"
fi