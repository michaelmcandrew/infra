# TODO

* get slave backup servers up and running
* monitoring
* elastic IP address provision. Currently instances need to be switched off to associate an EIP. We can probably also associate them at start up from the pool of EIPs that we are using
* Write a playbook that updates this repository ansible by downloading the latest ec2 scripts from the appropriate URL
* ensure that sensible ufw rules are in my own ansible (to allow backup, for example)
* ensure permissions on the vault directory are locked down to 0700
* sudo setfacl -Rm user:michael:rwX . -m default:user:michael:rwX .
* two factor authentication for AWS
* change reverse dns to randomly generated port and configure firewalls to allow this port (and no others)
* implement secure https
  * disable ssl3 http://disablessl3.com/#nginx
  * https://easyengine.io/tutorials/nginx/diffie-hellman-logjam-attack-fix/
* Get letsencrypt working and automated for all sites that I host
* might make sense to make hourly PIT backups for the last 6 hours on the local machine if it isn't to expensive in terms of power, etc.
* add the palm detection improvements (~/src/palm-detection) and enale it as a start up script
