#!/bin/sh

ansible-playbook --diff --inventory inventory --become ./playbooks/users.yml ./playbooks/docker.yml $@
