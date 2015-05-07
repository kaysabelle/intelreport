#!/bin/sh

#author : theodore tan
#script for getting the intelreport run by crontab everyday

DIR=~/intel_archive

# wget output file
FILE=adminreport.`date +"%Y%m%d"`.xlsx

# wget log file
LOGFILE=wget.log

# wget download url
URL=https://docs.google.com/spreadsheets/d/1OXTio2Wit5J9szKvQKE8EYQXUXAFDiIRJCSBx57815o/export?format=xlsx

cd $DIR
wget $URL -O $FILE -o $LOGFILE
