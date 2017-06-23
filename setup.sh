#!/bin/sh

source openembedded-core/oe-init-build-env $(pwd)/build bitbake

source ../bitbake/contrib/bbdev.sh > /dev/null
bbdev
