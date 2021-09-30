#!/bin/sh
set -e

if [ "${1#-}" != "$1" ] || [ "${1%.conf}" != "$1" ]; then
	set -- redis-server "$@"
fi

$@ --daemonize yes && sleep 1

SECRET=$(echo "$@" | grep -oE 'requirepass ([^ ]+)' | cut -d ' ' -f2)

redis-cli -a $SECRET <<-EOF
	SADD sounds $(echo `ls -1 /tmp/sounds/*.wav | while read F;do echo "'${F%%.wav}'";done`)
	SHUTDOWN SAVE
	quit
EOF

exec $@
