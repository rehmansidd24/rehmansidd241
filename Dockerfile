FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update &&     apt-get install -y --no-install-recommends       xfce4 xfce4-goodies xorg dbus-x11 x11-xserver-utils       xrdp sudo wget net-tools locales &&     locale-gen en_US.UTF-8 &&     apt-get clean && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash admin &&     echo "admin:Admin@123!" | chpasswd &&     adduser admin sudo

RUN echo "startxfce4" > /home/admin/.xsession &&     chown admin:admin /home/admin/.xsession

EXPOSE 3389

CMD ["/usr/sbin/xrdp", "-nodaemon"]
