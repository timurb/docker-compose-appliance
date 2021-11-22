#!/bin/sh

$(dirname $0)/run_ansible.sh \
  ./playbooks/appliance_metrics.yml \
  ./playbooks/appliance_traefik.yml \
  ./playbooks/appliance_prometheus.yml \
  ./playbooks/appliance_grafana.yml \
  $@
