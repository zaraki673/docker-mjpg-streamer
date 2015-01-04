FROM debian:wheezy
RUN apt-get update ; apt-get install wget libv4l-dev libjpeg-dev make gcc imagemagick -y --no-install-recommends
RUN wget --no-check-certificate -qO- https://github.com/shrkey/mjpg-streamer/raw/master/mjpg-streamer.tar.gz | tar x
RUN cd mjpg-streamer ; make
RUN cp mjpg-streamer/mjpg_streamer /usr/bin/
RUN cp mjpg-streamer/*so /lib/x86_64-linux-gnu/
RUN cp -r mjpg-streamer/www /var/
EXPOSE 80
CMD mjpg_streamer -i "input_uvc.so -y" -o "output_http.so -p 80 -w /var/www"
