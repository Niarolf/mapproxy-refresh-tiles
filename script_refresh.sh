#!/bin/sh
z=""
y=""
y=""
find /opt/mapproxy/cache_data/osm_cache_EPSG3857/ -name '*.png' -mtime 1 -fprint liste_png.txt
for i in `cat liste_png.txt`
  do
    z=`echo $i | awk -F '/' '{print $6}'`
    x=`echo $i | awk -F '/' '{print $7}'`
    y=`echo $i | awk -F '/' '{print $8}'`
    rm -f $i
    curl -s "http://localhost/mapproxy/wmts/osm/webmercator/$z/$x/$y" >/dev/null
  done
rm -f liste_png.txt
