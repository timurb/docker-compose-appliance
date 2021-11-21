#!/bin/sh

ansible-playbook --diff --inventory inventory --become $@
