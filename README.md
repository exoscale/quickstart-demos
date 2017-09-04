# Exoscale VPN Gateway - Ansible Playbook Example

After introducing private networks in exoscale, here is a short example how to create an VPN Gateway in exoscale cloud using Ansible. This implementation is based on the example written by Pierre-Yves Riʦchard‏ (https://www.exoscale.ch/syslog/2017/06/26/building-an-ipsec-gateway-with-openbsd/)

## Setup this Playbook

* Install ansible
* Exoscale Account (for using the api key and the security key)
* Install [cloudstack api](https://github.com/exoscale/cs)
* Create a cloudstack.ini file to setup cloudstack api.

## Run this example
After successful setup your playbook, you just need to run following command to start the deployment

     ansible-playbook ./install-vpn-gateway.yml
