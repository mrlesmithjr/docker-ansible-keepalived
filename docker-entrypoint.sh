#!/bin/bash
ansible-playbook -i "localhost," -c local /docker-entrypoint.yml

sleep 10
/usr/sbin/keepalived -f /etc/keepalived/keepalived.conf --dont-fork --log-console
#exec "$@"
