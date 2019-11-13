#! /bin/bash

pushd /home/dev
git pull
vim -c 'PluginInstall' -c 'qa!'
popd

exec bash -C $@
