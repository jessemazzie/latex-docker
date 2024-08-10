# latex-docker
docker image for compiling latex documents

## usage

```
docker run -v <directory containing tex files>:/work/ -it latex-docker
```

Any tex files in `/work/` at container creation time will be compiled automatically.