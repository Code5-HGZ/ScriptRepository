service[0]='sendmail' 
service[1]='cups'
service[2]='bluetooth'
service[3]='hidd'
service[4]='pand'
service[5]='dund'
service[6]='capi'
service[7]='pcscd'

for s in ${service[@]}; do
    echo -e "关闭服务: $s ...... \c"
    chkconfig --level 2345 $s off
    echo -e "[\033[32m完成\033[0m]"
done