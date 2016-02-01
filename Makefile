#!/usr/bin/make
########################################################
# Makefile for Ansible
#
# useful targets:
#   make sdist ---------------- produce a tarball
########################################################
# variable section

BIN_NAME = "ansible-playbook"
PLAYBOOK=site.yml

local:
  ansible-playbook -i inventory/local site.yml --ask-become-pass
  