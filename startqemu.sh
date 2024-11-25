# termux folder (remove if you aren't using proot-distro)
export PREFIX=/data/data/com.termux/files/usr

qemu-system-x86_64 -machine q35 -m 6144 -smp cpus=8 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only=on,file=$PREFIX/share/qemu/edk2-x86_64-code.fd \
  -netdev tap,id=mynet0,ifname=tap0,script=no,downscript=no -device virtio-net,netdev=mynet0 \
  -nographic /data/data/com.termux/files/home/docker-qemu-arm/alpine/alpine.img
