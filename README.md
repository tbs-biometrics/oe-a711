# Top level repo for TBS A711 reference build system

This repository holds some configuration, helper scripts and OpenEmbedded layers (as submodules).

## First time setup

1. `git clone -b pyro --recurse-submodules https://github.com/tbs-biometrics/oe-a711.git`
2. `cd oe-a711/build/conf`
3. Create your `local.conf.<USER>_<HOSTNAME>` (that format of the name isn't required). You can base it on `local.conf.tom_tomas`. Edit mainly `DL_DIR`, `SSTATE_DIR` and remove `SOURCE_MIRROR_URL`.
4. `ln -s local.conf.<YOUR_SUFFIX> local.conf`
5. That's all. Continue to the next section.

## Setup for a build

1. Go to the top level directory: `cd oe-711`
2. Source environment: `. ./setup.sh`
3. You can start any build now: `bitbake <RECIPE/TARGET>`

## Useful targets

* `a711-image-dev`: small and simple reference image with a few tools and utilities. Resulting SD card image can be directly flashed to a SD card and booted. Location of the SD card image: `oe-a711/build/tmp-glibc/deploy/images/a711/a711-image-dev-a711.a711-sdimg`.
* `a711-image-dev -c populate_sdk`: builds standalone sdk. Directory with sdk: `oe-a711/build/tmp-glibc/deploy/sdk`.
