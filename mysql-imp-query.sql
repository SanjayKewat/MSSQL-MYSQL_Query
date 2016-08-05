# get current unixtimestamp
SELECT UNIX_TIMESTAMP();

# convert  datetime to unixtimestamp
SELECT UNIX_TIMESTAMP('2015-11-13 10:20:19');  #1447390219

# convert unixtimestamp to datetime
SELECT FROM_UNIXTIME(1447390219) 