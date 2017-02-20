#!/bin/csh

# sudo passwd root
#- update source list
sudo ./scripts/update_sources_list.csh

#- install vim konsole
set software_list = "tcsh vim konsole git"
set install_list = ""
set is_install = 0
foreach software ( $software_list )
  if ( !(-e /usr/bin/vim) ) then
    echo "INFO: Add $software into install list."
    set install_list = "$install_list $software"
    set is_install = 1
  endif
end
if ( $is_install ) then
  echo "INFO: Install $install_list ..."
  sudo apt-get install $install_list
endif

#- change to csh
if ( $SHELL == "/bin/bash" ) then
  echo "INFO: Update to csh"
  sudo ln -sf /bin/tcsh /bin/csh
  sudo cp -rf /etc/passwd /etc/passwd.bk
  sudo perl -p -i -e 's#/bin/bash#/bin/csh#g' /etc/passwd
  reboot
endif
set current = `pwd`
cd
ln -sf $current/env/.* .

# add user to virtual box group, or no permission to share directory
sudo usermod -a -G vboxsf $USER

