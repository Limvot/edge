#!/bin/sh

mkdir -p edge_repo/edge

mkdir -p edge_build/$1
cp -r $1/* edge_build/$1
pushd edge_build/$1
makepkg -f &&
cp ./*.pkg.tar.xz ../../../edge_repo/edge &&
repo-add  ../../../edge_repo/edge/edge.db.tar.gz ../../../edge_repo/edge/*.pkg.tar.xz
popd
