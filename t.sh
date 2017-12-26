#!/bin/bash
today=`date +%Y%m%d --date="-1 day"`
sevent_day=`date +%Y%m%d --date="-7 day"`
file_time=`ls -l /home/work/apk-identifier/downloader/file/ |awk '{print $9}'| awk -F'k' '{print $NF}'|awk -F'.' '{print $1}'|uniq`
for time in file_time
do
  if time < sevent_day
  then
    rm data_apk{time}.zip
    rm data_apk{time}
  fi
done

