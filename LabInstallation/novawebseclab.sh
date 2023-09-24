#!/usr/bin/bash
check_cap(){
    if [[ "$EUID" == "0" ]];then
    echo >/dev/null
    else
    echo -e "\e[1;31mPlease run me as root"
    exit
    fi
}
start(){
docker pull yellphonenaing/novawebsec:last
docker run -d -p 8088:80 yellphonenaing/novawebsec:last
id=`docker ps | grep yellphonenaing/novawebsec:last | awk '{ print $1 }'`
docker exec -it $id /usr/check_mariadb.sh
}
stop(){
id=`docker ps | grep yellphonenaing/novawebsec:last | awk '{ print $1 }'`
docker stop $id
}
main(){
check_cap
case $1 in
'start')
start;;
'stop')
stop;;
*)
echo "Usage: bash $0 start|stop";;
esac
}
main $1
