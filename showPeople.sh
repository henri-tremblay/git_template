#!/usr/bin/env bash

user=$1

mkdir temp

for i in $(./listRepositories.rb $*)
do
    echo "*** $i ***"
    dir="temp/$i"
    git clone -q "git@github.com:${user}/${i}.git" $dir
    pushd $dir
    git log --format='%an <%aE>' | sort -u
    popd
done

rm -rf temp
