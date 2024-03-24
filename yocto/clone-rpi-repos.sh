#! /bin/sh

BRANCH=nanbield

echo "This script will clone the following repos (nanbield branch) in current directory:"
echo "\tPoky"
echo "\tMeta openembedded"
echo "\tMeta raspberrypi"

read -p "Continue?" yn
case $yn in
    [Yy]* ) echo "Start Cloning";
            git clone -b $BRANCH git://git.yoctoproject.org/poky;
            git clone -b $BRANCH git://git.openembedded.org/meta-openembedded;
            git clone -b $BRANCH git://git.yoctoproject.org/meta-raspberrypi ;;
    [Nn]* ) echo "Bye";
            exit;;
    * ) echo "Not supported selection";;
esac
