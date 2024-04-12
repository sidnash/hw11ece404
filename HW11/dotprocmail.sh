SHELL=/bin/sh
PATH=/usr/local/lib/mh:$PATH
MAILDIR=$HOME/Mail
LOGFILE=$HOME/Mail/logfile
SENDMAIL=/usr/sbin/sendmail
#VERBOSE=1
VERBOSE=0
EOL="
"
LOG="$EOL$EOL$EOL"
LOG="New message log:$EOL"
LOG=`perl GET_MESSAGE_INDEX`
LOG="$EOL"


# :0 :
# recipe_4_diff
##Recipe 1: multiple entries in the ”From” header. if multiple entries are found, it will send to recipe_1
:0 :
* ^From: (<.*@.*>),.(<.*@.*>)
recipe_1




