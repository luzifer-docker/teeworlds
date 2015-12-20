#!/bin/sh

if ! [ -e /data/config.cfg ]; then
  cp /opt/config.dist.cfg /data/config.cfg
fi

exec /opt/teeworlds/teeworlds_srv -f /data/config.cfg
