# ssocks 的 docker 封装

### Build
``` bash
$ docker build -t ssocks:latest .
```

### Start
```
$ docker run ssocks rssocks -s 222.222.222.222:1080 -vv

# or damon
$ docker run -d --restart=always ssocks rssocks -s 222.222.222.222:1080 -vv
```