In the first instance all backups happen locally. Local backups are then collected by a backup-master which in turn distributes them to backup slaves.

The backup rhythm is as follows (presuming machines are running in the same timezone)

* Every four hours less 60 minutes - database dumps made locally
* Every four hours less 40 minutes - local snapshot made
* Every four hours less 20 minutes - local snapshots collected by backup master (pulled)
* Every four hours - PIT backups made on backup master
* Every four hours plus 20 minutes - PIT backups distributed to backup slaves (push)

# Point in time backups

As well as creating backups every four hours, the backup master also makes various point in time (PIT) backups, which are kept according to the schedule below.

* Every four hours (`0 0,4,8,12,16,20 * * *`) a point in time backup is made and kept for 2 days (12 in total)
* Daily at 2am (`0 2 * * *`) a point in time backup is made and kept for 2 weeks (14 in total)
* Sunday at 6am (`0 6 * * 0`) a point in time backup is made and kept for 8 weeks
* 1st of the month at 10am (`0 10 1 * *`) a point in time backup is made and kept for  24 months
* 1st day of the year at 2pm (`0 14 1 1 *`) a point in time backup is made and kept for 50 years
