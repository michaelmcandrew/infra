# TODO

* complete backup infrastructure
* monitoring
* Write a playbook that updates this repository ansible by downloading the latest ec2 scripts from the appropriate URL
* ensure that sensible ufw rules are in my own ansible (to allow backup, for example)
* ensure permissions on the vault directory are locked down to 0700
* sudo setfacl -Rm user:michael:rwX . -m default:user:michael:rwX .
* two factor authentication for AWS
* implement secure https
  * disable ssl3 http://disablessl3.com/#nginx
  * https://easyengine.io/tutorials/nginx/diffie-hellman-logjam-attack-fix/
