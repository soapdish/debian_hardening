# Debian Hardening [![Build Status](https://travis-ci.org/soapdish/debian_hardening.svg?branch=master)](https://travis-ci.org/soapdish/debian_hardening)

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

CI File:

* .travis.yml

Note the travis yaml file is not interpreted correctly by vscode and will show errors when none exist.

Meta:

The guy who originally wrote this repo
