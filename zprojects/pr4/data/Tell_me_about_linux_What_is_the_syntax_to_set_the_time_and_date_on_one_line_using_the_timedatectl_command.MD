To set the time and date on one line using the timedatectl command in Linux, you need to use the following syntax: 

```
timedatectl set-time "YYYY-MM-DD HH:MM:SS"
```

Replace `YYYY-MM-DD` with the desired date and `HH:MM:SS` with the desired time in hour:minute:second format. For example, to set the time to 3:30 PM on January 1, 2022, you would use the following command:

```
timedatectl set-time "2022-01-01 15:30:00"
``` 

Note that you must have the permission to change the system time and date in order to use this command.
