#!/bin/bash
if pgrep -x "redshift" 
then
  echo "hello"
    pkill redshift
else
  echo "hello bis"
    redshift &
fi

