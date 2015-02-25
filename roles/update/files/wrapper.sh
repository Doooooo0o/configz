#!/bin/bash
ignorefile="/tmp/ignore"
restarts(){
    services=$(checkrestart "${list}" | awk '/These are the init scripts:/ { seen =1 } seen {print}'|egrep -v "These are the init scripts:|^$"|tr " " ","| awk -F "," '{ print $2 }'|grep -vi "processes")
    if [ $(echo $services | grep -ci "restart") -gt 0 ]; then
        services=$(checkrestart "${list}" | awk '/These are the init scripts:/ { seen =1 } seen {print}'|egrep -v "These are the init scripts:|^$"|tr "/" ","|tr " " "," | awk '{ print $3 }'|grep -vi "processes")
    fi 
    numservice=$(echo $services | wc -w)
    if [ $numservice -gt 0 ]; then
        for service in $services; do
            logger "Restart service $service"
            /etc/init.d/$service restart
            if [ $? -ne 0 ]; then
                logger "Service $service had a problem on restart, error exit"
                exit 1
            fi
        done
    else 
        logger "No services to restart !"
        exit 0
    fi
}
ignorelist(){
    list=""
    for line in $(cat $ignorefile); do 
        list="$list -i $line"
    done
}
checkignorefile(){
    if [ ! -f $ignorefile ]; then
        logger "No ignorelist, becareful ! I'll exit just to be safe"
        exit 1
    fi
}
checkbin(){
    dpkg -L debian-goodies|grep -q checkrestart
    if [ $? -ne 0 ]; then
        logger "Failed to find checkrestart, so sad"
        exit 1
    fi
}
checkroot(){
    izroot=$(whoami)
    echo $izroot | grep -q "root"
    if [ $? -ne 0 ]; then
        logger "Failed to be root, so sad"
        exit 1
    fi
}
main(){
    checkroot
    checkbin
    checkignorefile
    ignorelist
    restarts
}
main
