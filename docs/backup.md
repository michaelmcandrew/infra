Care is taken to distribute backup tasks throughout the day and throughout each hour so as not to overload the server at any one time.

# Disaster recovery backups

All disaster recovery backups are carried out locally, then rsynced to the master backup server (the rsync process is run on the machine to be backed up)

* Every four hours (`0 0,4,8,12,16,20 * * *`)  each server creates a local snapshot
* Every four hours + 20 minutes (`20 0,4,8,12,16,20 * * *`) the backup server rsyncs content from the backed up hosts
* Every four hours + 40 minutes (`40 0,4,8,12,16,20 * * *`) all data on master backup is rsynced to two slave backup servers (in seperate physical locations)

# Point in time backups

All point in time backups are carried out on the master backup server at srv/backup/pit and are propogated to the slave backup servers

* Every four hours (`0 0,4,8,12,16,20 * * *`) a point in time backup is made and kept for 2 days (12 in total)
* Daily at 2am (`0 2 * * *`) a point in time backup is made and kept for 2 weeks (14 in total)
* Sunday at 6am (`0 6 * * 0`) a point in time backup is made and kept for 8 weeks
* 1st of the month at 10am (`0 10 1 * *`) a point in time backup is made and kept for  24 months
* 1st day of the year at 2pm (`0 14 1 1 *`) a point in time backup is made and kept for 50 years

We only guaruntee to keep point in time backups for current clients, though in practice, we are unlikely to delete backed up data unless specifically requested or obliged to do so.
