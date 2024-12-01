#!/bin/bash

date
echo "********************************************"
uname -snrv
uptime
ip a | grep inet | grep -v 'inet6' | grep -v 'inet 127.' | awk '{print $2}'
silly -o



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

