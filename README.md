# Debian Hardening [![Build Status](https://travis-ci.org/soapdish/debian_hardening.svg?branch=master)](https://travis-ci.org/soapdish/debian_hardening)

Testing Debian Ansible Hardening Roles with Travis CI.

## Travis Intergraion

Travis is integrated with a webhook to enable a pipeline to be run to test the build and status updated in the main title.

The reference link this was taken from can be found [here](https://blog.travis-ci.com/2017-11-30-testing-ansible-roles-using-docker-on-travis)

## Base Docker image creation 

Note that due to the ARM chip on a raspberry pi, a Debian Stretch image has been used to run the base build test against.
Borrows heavily from [here](https://github.com/moby/moby/blob/master/contrib/mkimage.sh)
Mirrors [here](http://mirror.ox.ac.uk/sites/archive.raspbian.org/archive/raspbian/)
