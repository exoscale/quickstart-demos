# Exoscale VPN Gateway - Ansible Playbook Example

After introducing private networks in exoscale, here is a short example how to create an VPN Gateway in exoscale cloud using Ansible. This implementation is based on the example written by Pierre-Yves Riʦchard‏ (https://www.exoscale.ch/syslog/2017/06/26/building-an-ipsec-gateway-with-openbsd/)

## Setup this Playbook

* Install ansible (2.4 or later is required)
* Exoscale Account (for using the api key and the security key)
* Install [cloudstack api](https://github.com/exoscale/cs)
* Create a cloudstack.ini file to setup cloudstack api.

## Run this example
After successful setup your playbook, you just need to run following command to start the deployment

     ansible-playbook ./install-vpn-infrastructure.yml
     ansible-playbook ./ansible-setup-gateway.yml -i ./inventory
     ansible-playbook ./web-node-provisioning.yml -i ./inventory
     ansible-playbook ./gateway-provisioning.yml -i ./inventory

## Configuration

This example currently supports a lot of different configuration possibilities. The configuration is inside following files:
* instances.yml
* security-groups.yml
* security-group-rules.yml

In theses files you could change the number of instances you want to create or modify the security-groups as well as their rules.
