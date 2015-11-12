FROM garland/dockerfile-ubuntu-gnome:latest
ENV PASSWORD password
ADD ./start-vnc-expect-script.sh  /usr/local/etc/start-vnc-expect-script.sh
ADD ./spawn-desktop.sh /usr/local/etc/spawn-desktop.sh
CMD bash -C '/usr/local/etc/spawn-desktop.sh';'bash'
EXPOSE 5901

