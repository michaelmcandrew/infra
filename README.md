This repository holds code to run Third Sector Design's server infrastructure, and documentation on how to use that code.

Reliable, automated, well documented infrastructure is the foundation of the company, hence we put a lot of effort into this repository.

Our main server provider is AWS. We use a couple of other providers (digital ocean, linode and bytemark) to ensure continuity in the unlikely event that AWS should cease to exist at any time.

The main tool we use to automate AWS is ansible.

# Ansible on AWS

The ansible/ec2.ini is configured to only list EC2 instances with an ansible tag set to true.

We use official ubuntu AMIs, typically based on the latest LTS with HVM virtualisation and EBS SSD storage. For example

* 16.04 ami-26e70c49
* 14.04 ami-4bd03b24

See https://cloud-images.ubuntu.com/locator/ec2/ for a full list of official Ubuntu AMIs.

# Setting up the control machine

[This should be replaced with an ansible script]

Install ansible `sudo apt-get install ansible`
Replace the `/etc/ansible` directory with the ansible directory from this repository.

# To do

* Write a playbook that updates this repository ansible by downloading the latest ec2 scripts from the appropriate URL.
