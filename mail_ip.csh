#!/bin/csh

set currentip = `nc ns1.dnspod.net 6666`
if ( -e "~/ip" ) then
  set pre_ip = `cat ~/ip`
  if ( $currentip != $pre_ip ) then
    mail -s "New IP" sujielei@hotmail.com < ~/ip
    echo "mailed"
  endif
else
  echo $currentip > ~/ip
endif

