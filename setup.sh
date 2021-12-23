#!/usr/bin/env bash

sudo dnf update --refresh

sudo dnf install ansible -y

ansible-galaxy collection install -r ./requirements.yml

ansible-playbook -K ./src/workstation.yml
