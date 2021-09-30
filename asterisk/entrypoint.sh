#!/bin/sh

[ -d "/etc/asterisk" ] && \
	chown -R asterisk:asterisk /etc/asterisk && \
	exec /usr/sbin/asterisk -T -U asterisk -fvvvddd
