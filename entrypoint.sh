#! /bin/bash

pushd /home/dev
git pull
vim -T dumb  -n -i NONE -S <(echo -e "silent! PluginInstall") -S <(echo -e "qa")
popd

exec bash -C $@
