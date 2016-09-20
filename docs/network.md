# AWS VPC structure

The AWS VPC is comprised of the 10.0.0.0/16 CIDR block. The VPC is split into three availability zones. Each of the zone is a /18 CIDR block, leaving a spare /18 CIDR block at the end. Each availability zone is split into two subnets, one private /19 CIDR block and one public /20 CIDR block and a spare /20 CIDR block.

AWS reserves the first 4 and last IP addresses in each subnet.

The above set up results in 8187 private IPs and 4091 public IPs available in each zone (and slightly less than 4096 IPs spare for further use).

The 10.0.0.0/16 CIDR block is split as follows:

VPC CIDR block: 10.0.0.0/16
* AZ1: 10.0.0.0/18 (10.0.[0-63].n) 
    * private: 10.0.0.0/19 (10.0.[0-31].n)
    * public: 10.0.32.0/20 (10.0.[32-47].n)
    * spare: 10.0.48.0/20 (10.0.[48-63].n)
* AZ2: 10.0.64.0/18 (10.0.[64-127].n)
    * private: 10.0.0.0/19 (10.0.[64-127].n)
    * public: 10.0.0.0/20 (10.0.[64-127].n)
    * spare: 10.0.0.0/20 (10.0.[64-127].n)
* AZ3: 10.0.128.0/18 (10.0.[128-191].n)
    * private: 10.0.0.0/19 (10.0.[64-127].n)
    * public: 10.0.0.0/20 (10.0.[64-127].n)
    * spare: 10.0.0.0/20 (10.0.[64-127].n)
* spare:  10.0.192.0/18

In each public subnet (a.b.c.d), IP ranges are reserved as follows:

* c reserved
* c+1 bastion host
* c+2 to c+4 customer application servers
* c+5 internal application servers
* c+6 mail servers


In each private subnet (a.b.c.d), IP ranges are reserved as follows

* c reserved
* c+1 database servers
* c+2 backup servers
* c+3 monitoring servers
