# Ansible Role for Garage
This is an ansible role to install and configure [Garage](https://garagehq.deuxfleurs.fr/) an open source object storage service.

I initially built this role for Fedora 41 but it should be distro agnostic.

Currently this playbook can do the following:
- Install Garage
- Automatically connect and configure Garage nodes
- Install Nginx as a load balancer between nodes
- Install Keepalived to create a VIP between nodes. Using [evrardjp.keepalived](https://github.com/evrardjp/ansible-keepalived) role.
- Configure the firewall on systems using firewalld to allow for secure comunications between nodes

## Installing this role
This role is published on Ansible Galaxy:
```
ansible-galaxy install eddster2309.garage
```

## Configuring this role
The configuration options for this role can be found in [defaults/main.yml](./defaults/main.yml). **Make sure to change all secrets!**

## Upgrading Garage
Currently this role has not been tested to upgrade the cluster but will always grab the latest binary, work will done to change this.

## Ngnix Deployment
The nginx deployment that this role deploys is meant to load balance and provide subdomain support for the S3 and web endpoints on a single port. If you have another reverse proxy I would recomend you set up your own loadbalancer in accordance with [Garage's docs](https://garagehq.deuxfleurs.fr/documentation/cookbook/reverse-proxy/).