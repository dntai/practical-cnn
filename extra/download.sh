#!/bin/bash
wget http://www.vlfeat.org/matconvnet/models/imagenet-vgg-verydeep-16.mat \
    --output-document=data/imagenet-vgg-verydeep-16.mat --continue --show-progress

if test ! -e vlfeat
then
    wget http://www.vlfeat.org/download/vlfeat-0.9.19-bin.tar.gz --output-document=data/vlfeat-0.9.19-bin.tar.gz --continue --show-progress
    tar xzvf data/vlfeat-0.9.19-bin.tar.gz
    mv vlfeat-0.9.19 vlfeat
fi

if test ! -e matconvnet
then
    wget http://www.vlfeat.org/matconvnet/download/matconvnet-1.0-beta8.tar.gz \--output-document=data/matconvnet.tar.gz --continue --show-progress
    tar xzvf data/matconvnet.tar.gz
    mv matconvnet-1.0-beta8 matconvnet
fi