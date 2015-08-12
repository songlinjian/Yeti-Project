#!/bin/bash
 
SAVEDIR=$1
SRVNAME="_data._tcp.yeti-dns.org"
REMOTE="yeti@%h -p %p"

DATANAME=`ls -lhtr $SAVEDIR | tail -n 3 |awk '{print $NF}' |sed -n 1p` 
NODENAME=`hostname`  

SSH_BIN="/usr/bin/ssh"
WRAPSRV_BIN="/usr/local/bin/wrapsrv"

# Read local definitions if there is any
# You can use this file to set your own values without modifying this
# script
if [ -s settings.sh ]; then
    . ./settings.sh
fi

##----md5sum---md5-------
system=`uname -s`
if [ $system = "Linux" ]; then  
    MY_MD5=`/usr/bin/md5sum "${SAVEDIR}/${DATANAME}" | awk '{print $1}'`
elif [ $system = "OpenBSD" ]; then
    MY_MD5=`/bin/md5 "${SAVEDIR}/${DATANAME}" | awk '{print $NF}'`
elif [ $system = "FreeBSD" ]; then
    MY_MD5=`/sbin/md5 -q "${SAVEDIR}/${DATANAME}"`
elif [ $system = "NetBSD" ]; then
    MY_MD5=`/usr/bin/md5 "${SAVEDIR}/${DATANAME}" | awk '{print $4}'`
fi

if [ "$SYSLOG_UPLOAD" = "yes" ] || [ "$SYSLOG_UPLOAD" = "y" ]; then
    LOGGER="logger -i -t Yeti"
else
    LOGGER="echo"
fi

output=$(
    $WRAPSRV_BIN \
    $SRVNAME \
    $SSH_BIN \
    -o PasswordAuthentication=no \
    -o StrictHostKeyChecking=no \
    -o PreferredAuthentications=publickey \
    -i ${SSH_ID} \
    $REMOTE \
    ditl $NODENAME  $DATANAME \
    < ${SAVEDIR}/$DATANAME
)

if [ $? -eq 0 ]; then
    # $SSH_BIN completed successfully" 
    if [ "$output" = "$MY_MD5" ]; then
        :
    else
        ${LOGGER} "Remote MD5 ($output) does not match local MD5 ($MY_MD5)" 
    fi
else
    ${LOGGER} "ssh upload $DATANAME failed, please check" 
fi
