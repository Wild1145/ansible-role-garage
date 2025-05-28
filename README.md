# Ansible Role for Garage
This is an ansible role to install and configure [Garage](https://garagehq.deuxfleurs.fr/) an open source object storage service.

I initially built this role for Fedora but it should be distro agnostic.

Currently this playbook can do the following:
- Install Garage
- Automatically connect and configure Garage nodes
- Install Nginx as a load balancer between nodes
- Install Keepalived to create a VIP between nodes. Using [evrardjp.keepalived](https://github.com/evrardjp/ansible-keepalived) role.
- Configure the firewall on systems using firewalld to allow for secure comunications between nodes

# Installing this role
This role is published on Ansible Galaxy:
```
ansible-galaxy install eddster2309.garage
```

# Configuring this role
The configuration options for this role can be found in [defaults/main.yml](./blob/main/defaults/main.yml). **Make sure to change all secrets!**

# Upgrading Garage
Currently this role has not been tested to upgrade the cluster but will always grab the latest binary, work will done to change this.