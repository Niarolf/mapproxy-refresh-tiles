#!/bin/sh
cache="/srv/cache_data/osm_cache_EPSG3857"
echo "debut du refresh des tuiles du service wmts fondDePlan-OSM"
find $cache -name '*.png' -type f -mtime +30 -delete -print | awk -F / '{print $(NF-2)"/"$(NF-1)"/"$NF}' |xargs -I % curl -s --url http://localhost/mapproxy/wmts/_fondDePlan-OSM/osm-grid/% >>/dev/null
echo "fin du refresh des tuiles du service wmts _fondDePlan-OSM"
