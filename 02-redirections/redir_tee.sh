#!/bin/bash

log=log2.log

date | tee -a $log
echo "********************************************"
uname -snrv | tee -a $log
uptime | tee -a $log
ip a | grep inet | grep -v 'inet6' | grep -v 'inet 127.' | awk '{print $2}' | tee -a $log
silly -o | tee -a $log
echo
echo



# usage
############################################
#
#  # The command 'silly -o' will error
# ./redir_stderr_logger.sh > sysVitals.log
#
# # redirect the stdout to /dev/null
# ./redir_stderr_logger.sh > sysVitals.log 2>>/dev/null
# 
# # redirect stdout to sysVitals.log file and stderr to sysVitals.err
# ./redir_stderr_logger.sh > sysVitals.log 2>> sysVitals.err

