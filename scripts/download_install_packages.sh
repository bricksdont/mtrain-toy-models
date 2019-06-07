#! /bin/bash

scripts=`dirname "$0"`
base=$scripts/..

tools=$base/tools
mkdir -p $tools

echo "Make sure this script is executed AFTER you have activated a virtualenv"

# IF NOT INSTALLED ON YOUR SYSTEM:
# install fast_align

# git clone https://github.com/clab/fast_align $tools/fast_align

# mkdir $tools/fast_align/build
# (cd $tools/fast_align/build && cmake ..)
# (cd $tools/fast_align/build && make)

# IF NOT INSTALLED ON YOUR SYSTEM:
# install XML-RPC-c (a prerequisite for Moses server)

# wget https://sourceforge.net/projects/xmlrpc-c/files/Xmlrpc-c\ Super\ Stable/1.51.03/xmlrpc-c-1.51.03.tgz -P $tools/xml-rpc-c
# tar -xzvf $tools/xml-rpc-c/xmlrpc-c-1.51.03.tgz -C $tools/xml-rpc-c

# (cd $tools/xml-rpc-c/xmlrpc-c-1.51.03 && ./configure --prefix=$tools/xml-rpc-c/xmlrpc-c-1.51.03)
# (cd $tools/xml-rpc-c/xmlrpc-c-1.51.03 && make)
# (cd $tools/xml-rpc-c/xmlrpc-c-1.51.03 && make install)

# IF NOT INSTALLED ON YOUR SYSTEM:
# install CMPH (a prerequisite for faster Moses)

# wget https://sourceforge.net/projects/cmph/files/v2.0.2/cmph-2.0.2.tar.gz -P $tools/cmph
# tar -xzvf $tools/cmph/cmph-2.0.2.tar.gz -C $tools/cmph
# (cd $tools/cmph/cmph-2.0.2 && ./configure --prefix=$tools/cmph/cmph-2.0.2)
# (cd $tools/cmph/cmph-2.0.2 && make)
# (cd $tools/cmph/cmph-2.0.2 && make install)

# IF NOT INSTALLED ON YOUR SYSTEM:
# install Moses (boost 1.5.5 must be installed on your system)

# git clone https://github.com/moses-smt/mosesdecoder.git --branch RELEASE-3.0 --single-branch $tools/moses

# caution: bjam will use 12 cores (-j), and build can run into various problems

# (cd $tools/moses && ./bjam -j12 \
#			   --with-xmlrpc-c=$tools/xml-rpc-c/xmlrpc-c-1.51.03 \
#			   --with-cmph=$tools/cmph/cmph-2.0.2 \
#			   --max-kenlm-order=9 \
#			   --with-boost=/mnt/storage/clfiles/resources/applications/mt/boost/1_55_0 \
#			   --with-mm \
#			   --static)

# install mtrain, currently: sacrebleu branch

git clone https://github.com/ZurichNLP/mtrain.git $tools/mtrain
(cd $tools/mtrain && git checkout sacrebleu && pip install .)

# install sacrebleu for evaluation

pip install sacrebleu

# install BPE library

pip install subword-nmt

# install Nematus

git clone https://github.com/EdinburghNLP/nematus $tools/nematus
(cd $tools/nematus && pip install .)

# install Sockeye

pip install sockeye==1.18.72 matplotlib mxboard
