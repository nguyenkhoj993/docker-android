#!/bin/bash

pkg install -y expect qemu-utils qemu-common qemu-system-x86_64-headless openssh curl

mkdir -p alpine
cd alpine

. ../config.env

cp ../answerfile .
cp ../ssh2qemu.sh .
cp ../startqemu.sh .
chmod +x ./ssh2qemu.sh
chmod +x ./startqemu.sh
expect -f ../installqemu.expect
