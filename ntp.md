yum -y install ntpdate

ntpdate ntp1.aliyun.com


yum -y install ntp

systemctl  enable  ntpd

cat >   /etc/ntp.conf  << EOF
driftfile /var/lib/ntp/drift
restrict default nomodify notrap nopeer noquery
restrict 127.0.0.1 
restrict ::1
server ntp1.aliyun.com iburst  iburst
logfile /var/log/ntp.log
includefile /etc/ntp/crypto/pw
keys /etc/ntp/keys
disable monitor
EOF


systemctl  start   ntpd


ntpq -p

