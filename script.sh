#!/usr/bin/bash

terraform -chdir=./api/ init

terraform -chdir=./api/ apply --auto-approve

terraform -chdir=./firewall/ init

terraform -chdir=./firewall/ import google_compute_firewall.meg-testa meg-test-allow-rdp

terraform -chdir=./firewall/ import google_compute_firewall.meg-testb meg-test-allow-icmp

terraform -chdir=./firewall/ import google_compute_firewall.meg-testc meg-test-allow-custom

terraform -chdir=./firewall/ import google_compute_firewall.meg-testd meg-test-allow-ssh

terraform -chdir=./firewall/ destroy --auto-approve

terraform -chdir=./vpc/ init

terraform -chdir=./vpc/ import google_compute_network.vpc meg-test

terraform -chdir=./vpc/ destroy --auto-approve