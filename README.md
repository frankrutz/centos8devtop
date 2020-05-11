centos 8 container devtop


git clone https://github.com/frankrutz/centos8devtop

cd centos8devtop

docker build -t test -f dockerfile .

docker run --name centos8devtop -d --cap-add SYS_ADMIN --rm  -p  5901:5901 test



Than you jump into the container:

docker exec -i -t centos8devtop sh

in the container: start vncserver, 

substitute xstartup with xstartup included in this repo, restart vncserver
