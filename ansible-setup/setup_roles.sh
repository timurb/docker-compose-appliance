#!/bin/sh

$(dirname $0)/run_ansible.sh  ./playbooks/traefik.yml $@
