centos 8 container devtop


git clone https://github.com/frankrutz/centos8devtop

cd centos8devtop

docker build -t test -f dockerfile .

docker run -d --cap-add SYS_ADMIN --rm  -p  5901:5901 test


in the container: start vncserver, 

substitute xstartup with xstartup included in this repo, restart vncserver
