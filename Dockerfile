FROM ubuntu:16.04
MAINTAINER KOTA NONAKA
RUN apt update &&\
    apt install -y wget unzip &&\
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - &&\
    sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list' &&\
    apt update &&\
    apt install -y google-chrome-stable &&\
    wget -P ~ https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip &&\
    mkdir /usr/share/fonts/noto &&\
    unzip ~/NotoSansCJKjp-hinted.zip NotoSansCJKjp-Regular.otf NotoSansCJKjp-Bold.otf -d /usr/share/fonts/noto/ &&\
    fc-cache -v
