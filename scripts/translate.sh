#! /bin/bash

export MOSES_HOME=/mnt/storage/clfiles/resources/applications/mt/moses/v3.0
export FASTALIGN_HOME=/mnt/storage/clfiles/resources/applications/aligner/fast_align/vGit/build

echo "Das ist ein Test." | mtrans ../models/moses_10k
