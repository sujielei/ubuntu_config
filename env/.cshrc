#
#echo "running .cshrc"
# Default user .cshrc file (/bin/csh initialization).

# Set up default command search path:
#

set tmp_path = ( . ~/bin )
#source /tool/aticad/1.0/flow/TileBuilder/util/sysadmin/cpd.cshrc
set tmp_path = ( $tmp_path /tool/lsf/bin )
set tmp_path = ( $tmp_path /bin /usr/bin )
set tmp_path = ( $tmp_path /usr/X11R6/bin )
set tmp_path = ( $tmp_path /usr/bin/X11 )
set tmp_path = ( $tmp_path /usr/lib/X11 )
set path = ( $tmp_path )

umask 002

source ~/.mycshrc
source ~/.alias
