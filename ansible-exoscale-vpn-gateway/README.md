# Exoscale VPN Gateway - Ansible Playbook Example

After introducing private networks in exoscale, here is a short example how to create an VPN Gateway in exoscale cloud using Ansible. This implementation is based on the example written by Pierre-Yves Riʦchard‏ (https://www.exoscale.com/syslog/building-an-ipsec-gateway-with-openbsd/)

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

## Configure Cloudstack API

To configure the cloudstack api you need to add a cloudstack.ini file in the root of this example. You need to
define the endpoint as well as the API Key and the API secret. Here is an example how the configuration could
look like:

     [cloudstack]
     endpoint = https://api.exoscale.ch/compute
     key = EX11142dd65bd311fe6aa6dd0f2
     secret = n1KgzB928TWPVVc1PwEvTw89lKl1dpwgc1yvshGwbB4

## Configuration

This example currently supports a lot of different configuration possibilities. The configuration is inside following files:
* instances.yml
* gateway.yml
* security-groups.yml
* security-group-rules.yml

In theses files you could change the number of instances you want to create or modify the security-groups as well as their rules.
