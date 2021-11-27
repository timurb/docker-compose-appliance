#!/bin/sh

# appliance_traefik.yml should be the first to be deployed to create networks
$(dirname $0)/run_ansible.sh ./playbooks/appliance_webapp.yml  $@
