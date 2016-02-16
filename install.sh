#!/usr/bin/env bash

set -e
set -v

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

git config --global init.templatedir "$DIR/template"
