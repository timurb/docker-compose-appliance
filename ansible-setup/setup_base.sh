#!/bin/sh

$(dirname $0)/run_ansible.sh  ./playbooks/users.yml ./playbooks/docker.yml $@
