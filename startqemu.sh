# termux folder (remove if you aren't using proot-distro)
export PREFIX=/data/data/com.termux/files/usr

qemu-system-x86_64 -machine q35 -m 6144 -smp cpus=8 -cpu qemu64 \
  -drive if=pflash,format=raw,read-only=on,file=$PREFIX/share/qemu/edk2-x86_64-code.fd \
  -netdev user,id=n1,net=192.168.50.0/24,hostfwd=tcp::9000-:9000,hostfwd=tcp::8080-:8080,hostfwd=tcp::443-:443,hostfwd=tcp::80-:80,hostfwd=tcp::9100-:9100,hostfwd=tcp::2222-:22 \
  -device virtio-net,netdev=n1 \
  -nographic /data/data/com.termux/files/home/docker-android/alpine/alpine.img
