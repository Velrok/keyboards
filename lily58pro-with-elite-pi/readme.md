# Basic scripts to flash the Lily58

1. Use the [QMK Configurator](https://config.qmk.fm/#/lily58/rev1/LAYOUT) to generate a basic layout
1. Download the .json file
1. replace ./keymap/keymap.json with that newly created file
1. start docker
1. run `./build-qmk.sh`
1. run `./flash.sh`
