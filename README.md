# Hello, world!

## Getting started

```
$ make -f Makefile.docker tag=simple
```

```
docker build --build-arg dir=/go/src/github.com/alr-lab/makefile-go --build-arg bin=a.out -t simple:latest .
Sending build context to Docker daemon  34.82kB
Step 1/10 : FROM golang:1.16-alpine AS builder
 ---> fe5c000a4768
// ...
Step 10/10 : COPY --from=builder ${dir}/${bin} /${bin}
 ---> Using cache
 ---> 7532625b022c
Successfully built 7532625b022c
Successfully tagged simple:latest
```

## Usage

```
$ make -f Makefile.docker tag=simple run
```

```
docker run --rm -it simple:latest ./a.out
Hello, world!
```
