MJPG Streamer
====================

MJPG-streamer takes JPGs from Linux-UVC compatible webcams, filesystem or other input plugins and streams them as M-JPEG via HTTP to webbrowsers, VLC and other software.
http://sourceforge.net/projects/mjpg-streamer

Running in privileged mode is for it to have access the webcam.

Run Example
```
docker run -d -p 80:80 --privileged usertaken/mjpg-streamer
```
