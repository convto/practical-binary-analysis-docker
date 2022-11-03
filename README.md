# practical-binary-analysis-docker
Unofficial docker image for https://practicalbinaryanalysis.com

## Usage
This image supports only x86-64 hosts.

If you want to use it from an M1 Mac, please use it via an x86-64 virtual machine created using [lima](https://github.com/lima-vm/lima) or similar.

```
$ docker build -t practical-binary-analysis-docker:latest .
$ docker run -it practical-binary-analysis-docker
```
