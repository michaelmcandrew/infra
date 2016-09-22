Care is taken to distribute backup tasks throughout the day and throughout each hour so as not to overload the server at any one time.

# Local backups

In the first instance, all machines carry out a local backup. That is, they use mysqldump and rsync to make a copy of all important data locally.

These backups are carried out every four hours on each machine.

# Master backups

Every four hours, at 20 minutes past the hour, the backup master pulls backups from each backed up machine.

# Point in time backups

The master backup machine also creates point in time backups of its master backup. These are carried out on the following schedule.

* Every four hours (`0 0,4,8,12,16,20 * * *`) a point in time backup is made and kept for 2 days (12 in total)
* Daily at 2am (`0 2 * * *`) a point in time backup is made and kept for 2 weeks (14 in total)
* Sunday at 6am (`0 6 * * 0`) a point in time backup is made and kept for 8 weeks
* 1st of the month at 10am (`0 10 1 * *`) a point in time backup is made and kept for  24 months
* 1st day of the year at 2pm (`0 14 1 1 *`) a point in time backup is made and kept for 50 years

# Slave backups

At 40 minutes past the hour, the master backup machine pushes all of its backups (including the point in time backups) to the slave backup machines.
