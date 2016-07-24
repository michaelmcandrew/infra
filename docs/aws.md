# Ansible on AWS

The ansible/ec2.ini is configured to only list EC2 instances with an ansible tag set to true.

We use official ubuntu AMIs, typically based on the latest LTS with HVM virtualisation and EBS SSD storage. For example

* 16.04 ami-26e70c49
* 14.04 ami-4bd03b24

See https://cloud-images.ubuntu.com/locator/ec2/ for a full list of official Ubuntu AMIs.
