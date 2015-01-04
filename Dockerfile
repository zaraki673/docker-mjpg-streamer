FROM debian:wheezy
RUN apt-get update ; apt-get install libv4l-dev libjpeg-dev make gcc -y --no-install-recommends
ADD mjpg-streamer.tar.gz /
WORKDIR /mjpg-streamer
RUN make
EXPOSE 80
CMD ./mjpg_streamer -i "./input_uvc.so -y -n -f 30" -o "./output_http.so -p 80 -w ./www"