#! /bin/bash

# make sure to use absolute paths

script=`realpath $0`
scripts=`dirname $script`
base=$scripts/..

models=$base/models
mkdir -p $models

data=$base/data

num_threads=24
model_name=model_moses_10k

mkdir -p $models/$model_name

OMP_NUM_THREADS=$num_threads mtrain $data/train de en -o $models/$model_name -t $data/dev --temp_dir /var/tmp
