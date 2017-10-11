ansible-playbook ./install-vpn-infrastructure.yml
ansible-playbook ./ansible-setup-gateway.yml -i ./inventory
ansible-playbook ./web-node-provisioning.yml -i ./inventory
ansible-playbook ./gateway-provisioning.yml -i ./inventory
