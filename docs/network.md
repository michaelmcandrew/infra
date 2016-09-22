# AWS VPC structure

The AWS VPC is a 10.0.0.0/16 CIDR block, split into 4 /18 CIDR blocks. The first three blocks map to three availablity zones and the last is spare. Each availability zone is split into two subnets. A private /19 CIDR block subnet and a public /20 CIDR block subnet. The public and private subnets are followed by a spare /20 CIDR block.

In other words...

- **Availablity zone 1: 10.0.0.0/18 (10.0.[0-63].n)**

  - Private: 10.0.0.0/19 (10.0.[0-31].n)
  - Public: 10.0.32.0/20 (10.0.[32-47].n)
  - Spare: 10.0.48.0/20 (10.0.[48-63].n)

- **Availablity zone 2: 10.0.64.0/18 (10.0.[64-127].n)**

  - Private: 10.0.0.0/19 (10.0.[64-127].n)
  - Public: 10.0.0.0/20 (10.0.[64-127].n)
  - Spare: 10.0.0.0/20 (10.0.[64-127].n)

- **Availablity zone 3: 10.0.128.0/18 (10.0.[128-191].n)**

  - Private: 10.0.0.0/19 (10.0.[64-127].n)
  - Public: 10.0.0.0/20 (10.0.[64-127].n)
  - Spare: 10.0.0.0/20 (10.0.[64-127].n)

- **Spare: 10.0.192.0/18**

Note that AWS reserves the first 4 IP addresses and the last IP addresses in each subnet.

## Assigned private IP addresses

IP         | Host          | Role
---------- | ------------- | -------------
10.0.32.10 | bastion       | Bastion host
10.0.2.0   | backup-master | Backup master
