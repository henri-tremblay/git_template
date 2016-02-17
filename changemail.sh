#!/bin/sh

if [ -z "$OLD_EMAIL" ]; then
  echo "OLD_EMAIL is unset"
  exit 1
fi

if [ -z "$CORRECT_NAME" ]; then
  echo "CORRECT_NAME is unset"
  exit 1
fi

if [ -z "$CORRECT_EMAIL" ]; then
  echo "CORRECT_EMAIL is unset"
fi

git filter-branch --env-filter '
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags
