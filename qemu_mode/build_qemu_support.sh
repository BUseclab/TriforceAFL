#!/bin/sh
#
# build triforce patched qemu for AFL
#

cd qemu

CFLAGS="-O3" ./configure --disable-werror --python=/usr/bin/python2.7 \
  --enable-system --enable-linux-user \
  --enable-guest-base --disable-gtk --disable-sdl --disable-vnc --disable-xen \
  --target-list="mipsel-softmmu mips-softmmu x86_64-softmmu arm-softmmu"

make -j6
cp -f "x86_64-softmmu/qemu-system-x86_64" "../../qemu-system-x86_64"
cp -f "arm-softmmu/qemu-system-arm" "../../qemu-system-arm"
cp -f "mipsel-softmmu/qemu-system-mipsel" "../../qemu-system-mipsel"
cp -f "mips-softmmu/qemu-system-mips" "../../qemu-system-mips"
