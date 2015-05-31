Dockerfile for Hugo
=====

## Build Image

* git clone

```zsh
git clone https://github.com/ysaotome/docker-go-hugo
```

* docker build

```zsh
docker build --rm -t ysaotome/go-hugo docker-go-hugo
```

## Example usage

```zsh
docker run --rm -it -h hugo -p 1313:1313 -v /path/to/hugo:/root/hugo ysaotome/go-hugo zsh
```


* This software is released under the MIT License, see LICENSE.txt.


