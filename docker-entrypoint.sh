#!/bin/bash
ansible-playbook -i "localhost," -c local /docker-entrypoint.yml --extra-vars "router_id=${ROUTER_ID} router_pri=${ROUTER_PRI} state=${STATE} vip_int=${VIP_INT} vip_address=${VIP_ADDRESS}"

/usr/sbin/keepalived -f /etc/keepalived/keepalived.conf --dont-fork --log-console
#exec "$@"
