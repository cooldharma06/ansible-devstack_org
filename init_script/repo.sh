#!/bin/sh


### Repo initialiser it will downlaod the source in /opt/stack of host machine; so vm there is no need to download the files.


git clone https://git.openstack.org/openstack/requirements.git /opt/stack/requirements -b master


git clone https://git.openstack.org/openstack/keystone.git /opt/stack/keystone -b master

git clone https://git.openstack.org/openstack/nova.git /opt/stack/nova -b master
git clone https://git.openstack.org/openstack/glance.git /opt/stack/glance -b master
git clone https://git.openstack.org/openstack/cinder.git /opt/stack/cinder -b master

git clone https://git.openstack.org/openstack/neutron.git /opt/stack/neutron -b master
git clone https://git.openstack.org/openstack/swift.git /opt/stack/swift -b master
git clone https://git.openstack.org/openstack/tempest.git /opt/stack/tempest -b master
git clone https://git.openstack.org/openstack/horizon.git /opt/stack/horizon -b master

