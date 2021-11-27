#!/bin/sh

# appliance_traefik.yml should be the first to be deployed to create networks
$(dirname $0)/run_ansible.sh \
  ./playbooks/appliance_docker_system.yml \
  ./playbooks/appliance_traefik.yml \
  ./playbooks/appliance_metrics.yml \
  ./playbooks/appliance_prometheus.yml \
  ./playbooks/appliance_grafana.yml \
  $@
