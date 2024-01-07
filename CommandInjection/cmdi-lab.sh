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
docker pull yellphonenaing/cmdilabs:last
docker run -d -p 8081:80 yellphonenaing/cmdilabs:last
id=`docker ps | grep yellphonenaing/cmdilabs:last | awk '{ print $1 }'`
docker exec -it $id /usr/check_mariadb.sh
}
stop(){
id=`docker ps | grep yellphonenaing/cmdilabs:last | awk '{ print $1 }'`
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
