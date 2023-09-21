#!/usr/bin/env bash

# KB='splitkb/aurora/lily58'
# KB='splitkb/aurora/lily58'
KM='velrok'
KB='lily58'
compile="qmk compile --clean -j 6 -kb $KB -km $KM -e CONVERT_TO=elite_pi"
# bash=bash

docker run -it \
  --mount type=bind,source="$(pwd)"/output,target='/qmk_firmware/.build' \
  --mount type=bind,source="$(pwd)"/keymap,target="/qmk_firmware/keyboards/$KB/keymaps/velrok" \
   jonz94/qmk_firmware \
  $compile
