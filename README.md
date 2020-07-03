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

```
~/test4$ docker info
Client:
 Debug Mode: false
 Plugins:
  app: Docker Application (Docker Inc., v0.8.0)
  buildx: Build with BuildKit (Docker Inc., v0.3.1-tp-docker)

Server:
 Containers: 2
  Running: 1
  Paused: 0
  Stopped: 1
 Images: 6
 Server Version: 19.03.12
 Storage Driver: btrfs
  Build Version: Btrfs v5.2.1
  Library Version: 102
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
 Swarm: inactive
 Runtimes: runc
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 7ad184331fa3e55e52b890ea95e65ba581ae3429
 runc version: dc9208a3303feef5b3839f4323d9beb36df0a9dd
 init version: fec3683
 Security Options:
  apparmor
  seccomp
   Profile: default
 Kernel Version: 5.4.0-40-generic
 Operating System: Ubuntu 20.04 LTS
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 3.367GiB
 Name: u2
 ID: F2BJ:TVWB:XDBX:TAOB:RTV3:TC5B:IZQG:UYVD:4ERI:T2IW:FFR5:J2SP
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Username: shtripok
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: true
 Insecure Registries:
  u2:5000
  127.0.0.0/8
 Registry Mirrors:
  http://u2:5000/
 Live Restore Enabled: false

WARNING: No swap limit support
```
