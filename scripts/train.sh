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

mtrain $data/train de en -o $models/$model_name --threads $num_threads --eval $data/test --eval_tool sacrebleu
