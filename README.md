<b>OPEN OPERA BROWSER STEP BY STEP</b>
0.
docker run -d --name opera-container --rm --privileged -e DISPLAY=host.docker.internal:0 debian:bullseye sleep infinity
docker exec -it opera-container bash

1.
apt update
apt install -y software-properties-common

2.
wget -qO- https://deb.opera.com/archive.key | apt-key add -
add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free'

3.
apt update
apt install -y opera-stable

4. opera --no-sandbox

<b>USING DOCKERFILE</b>
1.docker build -t opera-docker .
2.docker run -d --name opera-container --rm --privileged -e DISPLAY=host.docker.internal:0 opera-docker
