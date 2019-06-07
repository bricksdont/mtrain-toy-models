#! /bin/bash

export MOSES_HOME=/mnt/storage/clfiles/resources/applications/mt/moses/v3.0
export FASTALIGN_HOME=/mnt/storage/clfiles/resources/applications/aligner/fast_align/vGit/build

mtrain /home/user/mmueller/mtrain-test/data/corpus de fr -o /home/user/mmueller/mtrain-test/models/moses_10k
