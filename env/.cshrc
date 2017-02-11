#
#echo "running .cshrc"
# Default user .cshrc file (/bin/csh initialization).

# Set up default command search path:
#

set tmp_path = ( . ~/bin )
source /tool/aticad/1.0/flow/TileBuilder/util/sysadmin/cpd.cshrc
set tmp_path = ( $tmp_path /tool/pandora64/bin /tool/pandora/bin )
set tmp_path = ( $tmp_path /tool/sysadmin/scripts /tool/sysadmin/bin )
set tmp_path = ( $tmp_path /tool/lsf/bin )
set tmp_path = ( $tmp_path /bin /usr/bin )
set tmp_path = ( $tmp_path /usr/X11R6/bin )
set tmp_path = ( $tmp_path /usr/bin/X11 )
set tmp_path = ( $tmp_path /usr/lib/X11 )
set path = ( $tmp_path )

umask 002

# Set up C shell environment:

	if ( $?prompt ) then		# shell is interactive.
	    stty erase ^H kill ^U intr ^C susp ^Z
	    set history=50		# previous commands to remember.
	    set savehist=50		# number to save across sessions.
	    set system=`hostname`	# name of this system.
	    unset autologout
	    alias setprompt 'set prompt="${system}:${cwd}[ \! ] --> "'
	    alias cd 'chdir \!* && setprompt'	# reset prompt after change dir
	    setprompt				# to set the initial prompt

	    # Sample alias:

	    alias	h	history		
	    alias	d	dirs
	    alias 	a	alias
	    alias 	l	'ls -a -C -F'
	    alias 	lc	'ls -a -l -F | less'
	    alias 	ll	'ls -al | less'
	    alias 	j	'jobs -l'
	    alias	m	'more -c'
	    alias 	cls	'clear'
	    alias 	bye	'clear; exit'
	    alias 	pg	'pg -ne'
	    alias 	pspg	'ps -ef | less'
	    alias 	psg	'ps -ef | grep '
	    alias 	r	rsh
	    alias 	vi	'/tool/pandora/bin/vim'

        source ~/.mycshrc
        source ~/.alias

	endif

#
setenv EDITOR 'vi'

# To select a printer see
# http://mpdwww.amd.com/twiki/bin/view/Systeam/AsdcPrintersPlotters
# then uncomment these two lines and set your printer up.
#setenv PRINTER scribe
#setenv LPDEST scribe

# sourcing /tool/site-config/cshrc for updated license 
# and environment variable information
# source /tool/site-config/cshrc
# redundant now

# sourcing the LSF environment
source /tool/pandora/etc/lsf/cshrc.lsf
