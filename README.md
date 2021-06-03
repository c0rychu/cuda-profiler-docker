# cuda-profiler-docker

This is a docker container of NVIDIA nsight and nvvp. It allows you to run nsight and nvvp GUIs on macOS.
It is built by running `apt install nsight-systems nsight-compute nvidia-cuda-toolkit` in a ubuntu docker image.

## Setup
1. Install Docker: https://www.docker.com/products/docker-desktop
2. Install XQuartz: https://www.xquartz.org/
3. **Reboot** your computer
3. In the setup of XQuartx, go to `Security` and check `Allow connections from network clients`
4. **Restart** XQuartz
5. You should see X11.bin on TCP:6000 by executing `lsof -i TCP:6000`

```
$ lsof -i TCP:6000
COMMAND  PID     USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
X11.bin  2691 feynman   10u  IPv6 0x45afc01650938294      0t0  TCP *:6000 (LISTEN)
X11.bin  2691 feynman   11u  IPv4 0x45afc01653e99382      0t0  TCP *:6000 (LISTEN)
```

7. `git clone https://github.com/c0rychu/cuda-profiler-docker.git` and `cd cuda-profiler-docker`
8. `make build`
9. `make` = `make run` to launch to get a interactive shell.
8. If you want to remove the docker image, run `make clean`
