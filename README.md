# Debian Hardening [![Build Status](https://travis-ci.org/soapdish/debian_hardening.svg?branch=master)](https://travis-ci.org/soapdish/debian_hardening)

Use the latest version of ansible!!  2.7>

Testing Debian Ansible Hardening Roles with Travis CI.  The goal it to automate testing on ansible roles in order to provide a 
set of hardening actions that can be performed on a Raspberry Pi.  

## Travis Intergraion

Travis is integrated with a webhook to enable a pipeline to be run to test the build and status updated in the main title.

The reference link this was taken from can be found [here](https://blog.travis-ci.com/2017-11-30-testing-ansible-roles-using-docker-on-travis)

## Base Docker image creation

Note that due to the ARM chip on a raspberry pi, a Debian Stretch image has been used to run the base build test against.
Borrows heavily from [here](https://github.com/moby/moby/blob/master/contrib/mkimage.sh)
Mirrors [here](http://mirror.ox.ac.uk/sites/archive.raspbian.org/archive/raspbian/)

## Understanding how this is used


Note the following file structure:

```bash
shr1mac1:debian_hardening nsheridan$ tree
.
├── README.md
├── meta
│   └── main.yml
├── tasks
│   ├── main.yml
│   └── pkgmgr
│       ├── apt.yml
│       ├── dnf.yml
│       └── yum.yml
└── travis
    ├── Dockerfile.centos-7
    ├── Dockerfile.debian-jessie
    ├── Dockerfile.debian-stretch
    ├── Dockerfile.fedora-24
    ├── Dockerfile.fedora-25
    ├── Dockerfile.fedora-26
    ├── Dockerfile.fedora-27
    ├── Dockerfile.fedora-28
    ├── Dockerfile.fedora-29
    ├── Dockerfile.ubuntu-bionic
    ├── Dockerfile.ubuntu-trusty
    ├── Dockerfile.ubuntu-xenial
    └── test.yml
```
### WiFi Configuration

To create the files needed for the template for Wireless, run the following utility to work out the contents of the 
/etc/wpa_supplicant/wpa_supplicant.conf file.

```bash
nsheridan@rpi7:~ $ wpa_passphrase some_ssid
# reading passphrase from stdin
wibblewobble
network={
	ssid="some_ssid"
	#psk="wibblewobble"
	psk=1d9430139d58e14925e0e496ad0905d238cc7e67add821e52c2c7c78d10b83ae
}
nsheridan@rpi7:~ $ 
```

### CI File

Note the travis yaml file is not interpreted correctly by vscode and will show errors when none exist.

```bash
.travis.yml
```

Add the notifications to get a slack message when the build is run.

### Meta

The guy who originally wrote this repo

### Ansible Galaxy Template Engine Output

Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
