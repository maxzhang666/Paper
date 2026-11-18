#!/bin/sh
set -eu

if [ "${EULA:-false}" != "true" ]; then
    echo "Set EULA=true only after reviewing and accepting the Minecraft EULA." >&2
    exit 1
fi

printf 'eula=true\n' > /data/eula.txt
exec java -jar /opt/paper/paper.jar "$@"
