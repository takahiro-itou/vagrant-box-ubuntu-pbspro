#! /bin/bash  -xue

pushd  vagrant

vagrant  destroy -f  || exit $?
vagrant  up          || exit $?
vagrant  halt

vagrant  package   --output ../ubuntu-develop.box  default

popd
