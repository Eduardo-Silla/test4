Test case for `ring` build error if build for `aarch64-unknown-linux-musl` on x64 under qemu

Run on x64 host
fail:
```
docker buildx build --platform linux/aarch64 . --progress plain
```
ok:
```
docker buildx build --platform linux/amd64 . --progress plain
```
