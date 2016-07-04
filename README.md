This repository holds code to run Third Sector Design's server infrastructure, and documentation on how to use that code.

Reliable, automated, well documented infrastructure is the foundation of the company, hence we put a lot of effort into this repository.

Our main server provider is AWS. We use a couple of other providers (digital ocean, linode and bytemark) to ensure continuity in the unlikely event that AWS should cease to exist at any time.

The main tool we use to automate AWS is ansible.

# Ansible on AWS

Ansible is configured to only care about EC2 instances with the ansible = true tag

# Setting up the control machine

[This should be replaced with an ansible script]

Install ansible `sudo apt-get install ansible`
Replace the `/etc/ansible/hosts` file with a `/etc/ansible/hosts` directory.
Copy the ec2.py script from `https://raw.github.com/ansible/ansible/devel/contrib/inventory/ec2.py` to the `/etc/ansible/hosts` directory and make it executable.
Copy the ec2.ini script from `https://raw.github.com/ansible/ansible/devel/contrib/inventory/ec2.ini` to the `/etc/ansible` directory.
