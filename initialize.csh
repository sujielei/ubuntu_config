#!/bin/tcsh

#- update source list
sudo ./scripts/update_sources_list.csh

#- install vim konsole
set software_list = "vim konsole git"
set install_list = ""
foreach software ( $software_list )
  if ( !(-e /usr/bin/vim) ) then
    echo "INFO: Add $software into install list."
    set install_list = "$install_list $software"
  endif
end
if ( $install_list != "" ) then
  sudo apt-get install $install_list
endif
