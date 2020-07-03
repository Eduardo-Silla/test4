Test case for `ring` build error if build for `aarch64-unknown-linux-musl` on x64 under qemu

run with 
```
docker buildx build --platform linux/aarch64 . --progress plain
```
