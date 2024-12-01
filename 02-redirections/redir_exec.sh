#!/bin/bash

exec 1>loggy.log
exec 2>loggy.err

echo "This should output in loggy.log"
echo "This should also be in loggy.log"

silly -o  # this should go to loggy.err
