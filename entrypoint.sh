#!/bin/bash -e

if [ ! -z $API ] ; then
    mkdir -p ~/.local/share/python_keyring/
    echo -e "[pushbullet]\ncli = \n        $(echo -n ${API} | base64)" > ~/.local/share/python_keyring/keyring_pass.cfg
fi

exec "$@"
