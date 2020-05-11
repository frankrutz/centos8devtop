centos 8 container devtop


git clone https://github.com/frankrutz/centos8devtop

cd centos8devtop

docker build -t test -f dockerfile .

docker run --name centos8devtop -d --cap-add SYS_ADMIN --rm  -p  5901:5901 test



Than you jump into the container:

docker exec -i -t -u testuser centos8devtop sh

in the container: 


cd $HOME

vncserver

#enter some passwd 2 times and press "n"

export DISPLAY=:1

gnome-calculator

#The calculator works. BUT we want to run gnome-session, which does not work.

