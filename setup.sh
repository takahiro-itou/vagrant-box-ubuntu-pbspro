#! /bin/bash  -xue

pushd  vagrant

vagrant  destroy -f  || exit $?
vagrant  up          || exit $?
vagrant  halt

vagrant  package   --output ../ubuntu-develop.box  default

popd
set  +x

cat  << _EOF_  1>&2
To add package into box list, run:
_EOF_

cat  << _EOF_
vagrant  box  add  --name ubuntu/bionic64-develop   ubuntu-develop.box
_EOF_
