#!/usr/bin/env bash

ROM='/Volumes/RPI-RP2'

until [ -d $ROM ]
do
  echo wait for $ROM
  sleep 1
done

cp ./output/*.uf2 $ROM
