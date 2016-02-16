#!/usr/bin/env bash

repo=$1

echo "*** $repo ***"
git clone --bare -q $repo temp_dir
pushd temp_dir
git log --format='%an <%aE>' | sort -u
popd

rm -rf temp_dir
