#!/bin/sh

$(dirname $0)/run_ansible.sh  ./playbooks/metrics.yml ./playbooks/traefik.yml ./playbooks/prometheus.yml ./playbooks/grafana.yml $@
