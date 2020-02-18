# zproxy-wine

# Building
 * Clone this repo ( `git clone --depth=1 https://github.com/abdullasharapov/zproxy-wine.git` ).
 * If need change port number in Dockerfile (default is 7171).
 * To build run `docker build -t zproxy .` Name of container `zproxy` you can change as you wish.

# Running
 ## With docker run
 * Create dir `mkdir /home/$USER/Docker/`.
 * Download zproxy.tar.gz `wget https://github.com/abdullasharapov/zproxy-wine/releases/download/v1/zproxy.tar.gz`. Unpack `tar xfv zproxy.tar.gz -C /home/$USER/Docker/`.
 * Copy start script to zproxy dir `cp start.sh /home/$USER/Docker/zproxy`.
 * Change permission `chmod +x /home/$USER/Docker/zproxy/start.sh`.
 * If need change IP adress of zproxy server in `/home/$USER/Docker/zproxy/zproxy_server.py`. Default is 127.0.0.1.
 * Start container `docker run --restart=always -tid --net=host -v /home/$USER/Docker/zproxy:/opt/zproxy zproxy /opt/zproxy/start.sh`.

 ## With docker-compose
 * Not yet ready

# Next Steps

Once the container is running, try visiting :
 * http://zproxy_ip:port/playlist.m3u8. Default is http://127.0.0.1:7171/playlist.m3u8.
Use this playlist with KODI player or android app IPTV Pro.
