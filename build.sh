#!/bin/bash

mkdir -p /data

# Update the rclone config
sed -i "s/TEAM_DRIVE/$TEAM_DRIVE/g" /rclone.conf
cd /data
curl ${PBF_URL} -o latest.osm.pbf

osrm-extract -p /opt/${PROFILE}.lua /data/latest.osm.pbf
osrm-partition /data/latest.osrm
osrm-customize /data/latest.osrm


TIMESTAMP=$(date +%s)

rclone --config=/rclone.conf copy /data osrm-upload:/osrm-builder/$PROFILE/$TIMESTAMP