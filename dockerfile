FROM centos:8


RUN yum update -y


RUN yum groupinstall -y --allowerasing "Server with GUI"

RUN yum install -y tigervnc-server tigervnc-server-module
RUN yum install -y xorg-x11*
RUN yum install -y xterm
RUN yum install -y dbus dbus-x11 systemd 

RUN adduser  testuser
RUN mkdir /home/testuser/.vnc
COPY xstartup /home/testuser/.vnc/xstartup
RUN chown -R  testuser:testuser /home/testuser

USER testuser

CMD [ "/sbin/init"]
