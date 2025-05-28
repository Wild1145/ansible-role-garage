# Ansible Role for Garage
This is an ansible role to install and configure [Garage](https://garagehq.deuxfleurs.fr/) an open source object storage service.

I initially built this role for Fedora but it should work for all major distros.

Currently this playbook can do the following:
- Install Garage
- Automatically connect and configure Garage nodes
- Install Nginx as a load balancer between nodes
- Install Keepalived to create a VIP between nodes. Using [evrardjp.keepalived](https://github.com/evrardjp/ansible-keepalived) role.
- Configure the firewall on systems using firewalld to allow for secure comunications between nodes