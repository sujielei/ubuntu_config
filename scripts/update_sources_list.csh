#!/bin/csh

set current_version = `sudo lsb_release -a | grep Release | awk '{print $2}'`

if ( !(-f "sources_list/${current_version}.list") ) then
  echo "No such source list"
else
  sudo cp -rf /etc/apt/sources.list /etc/apt/sources.list.bk
  sudo cp sources_list/${current_version}.list /etc/apt/sources.list
endif


