docker run --rm \
-v /usr/local/tinymediamanager/config:/config \
-v /nfs/movie:/media/movie \
-v /nfs/anime:/media/anime \
-v /nfs/serials:/media/serials \
-e GROUP_ID=0 -e USER_ID=0 -e TZ=Asia/Shanghai \
dzhuang/tinymediamanager:latest-v4 \
 /config/tinyMediaManager movie -u -n


docker run --rm \
-v /usr/local/tinymediamanager/config:/config \
-v /nfs/movie:/media/movie \
-v /nfs/anime:/media/anime \
-v /nfs/serials:/media/serials \
-e GROUP_ID=0 -e USER_ID=0 -e TZ=Asia/Shanghai \
dzhuang/tinymediamanager:latest-v4 \
 /config/tinyMediaManager tvshow -u -n