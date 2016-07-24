The majority of our IT infrastructure is hosted at AWS. In the event of catastophic failure at AWS, we have a backups stored in the office (i.e. somewhere that we can physically lay our hands on) and at Digital Ocean/ByteMark.

# Application servers (inc. database servers)
These run our main applications

# Backup servers

These take snapshots of data from the application servers so that we can rebuild our infrastructure in the event of a distaster, and also do point in time recovery of old data.

Backup infrastructure is based on rsnapshot.

Application data including code, databases, files and client specific configuration is backed up according to the following schedule

* every 4 hours for 2 days
* every day for 2 weeks
* every week for 8 weeks
* every month for 12 months
* every year for 10 years

Configuration data for individual clients and for infrastructure as a whole is stored in this repository which is stored on github and also backed up the above two seperate locations.

# Monitoring servers

These monitor our infrastructure ensuring that everything is available and performing as expected.
