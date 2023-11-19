#!/bin/bash

remote_user=isucon
remote_host=isucon12

rsync -auzhv -e ssh --exclude isuconquest \
  $remote_user@$remote_host:~/webapp/go \
  $(pwd)/
