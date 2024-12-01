
# Run script in the background
## run the script in the background
```./script1.sh &```

## List the background job
```jobs```

## runs the script in the background without terminal
```nohup ./script1.sh &```

# Priority
## list the processes with the columns listed
ps -a -o ppid,pid,ni,cmd,tty

#CPU priority
    + -20 (highest priority) - +19 (lowest priority)
    + Default priority is 0

## `nice`
    + Changes the priority of a process
    + Invoked at same time as command
  ```nice -n 10 ./script1.sh &``` (lower priority to +10)
  ```nice -n -10 ./script1.sh &``` (raise priority to -10)
        + Raising priority may require elevated privileges
## Check `niceness`
```ps -a -o ppid,pid,ni,cmd,tty```

##`renice`
    + Change the process of an already running process
    + Must know/use the Process ID(PID)
```renice -n 10 -p 14543```
    + Only renice scripts you own
    + Only lower priority
    + Requires root privs to raise priority 

# AT
## read about it
```man at```

## schedule to run a script at certain time
```at -f script1.sh <time>```

## See job queue
```atq```

## rm a queued job
atrm <job#>

# CRON
## list a crontab
```crontab -l```

## create a new crontab
```crontab -e```

## Pre-built `cron` directories
- `/etc/cron.monthly`
- `/etc/cron.weekly`
- `/etc/cron.daily`
- `/etc/cron.hourly`
+ Copy script to any of these folders and script will run at prescribed
    times

## anacron
+ Runs scripts that missed their target window
- Machine was down for whatever reason
+ `cat /etc/anacrontab`
- Entries for anacron
- Format
  + *period* *delay* *identifier* *command*
    - *period* = How often (in days) job should run
    - *delay* = Minutes computer should wait after startup to run missed jobs
    - *identifier* = Identify job in logs and err email with this description
    - *command* = Run this command
      + `run-parts` Runs all scripts in the directory passed to it
+ `cat /var/spool/anacron/cron.daily/weekly/monthly`
- Timestamps in these directories are tracked to see if jobs were missed
- `anacron` doesn't concern itself with .minutely
 
