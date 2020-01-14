# docker-attachecase

[![Docker Hub | cohei/attachecase](https://img.shields.io/badge/Docker%20Hub-cohei%2Fattachecase-blue?style=flat-square)](https://hub.docker.com/r/cohei/attachecase)

[アタッシェケース for Java](http://maruuofactory.life.coocan.jp/attachecase/) をどこでもコマンドで使えるよう Docker でつつんだもの。

使い方は [CUIでの起動 - アタッシェケース for Java](http://maruuofactory.life.coocan.jp/attachecase/#usage-cui) と同じ。ただし、ファイルはマウントしないと見えないので、 `-v` オプションで `/app/data` にマウントしてやる。

``` sh
$ ls
hoge.atc

$ docker run -it -v $PWD:/app/data cohei/attachecase -c -d hoge.atc
復号開始
[hoge.atc] パスワードを入力してください。:
復号: hoge.pdf
復号終了

$ ls
hoge.atc   hoge.pdf
```
