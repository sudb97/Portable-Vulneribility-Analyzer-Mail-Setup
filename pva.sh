echo -e '\e[1;32m
     [--------------------------------------------------]
     [                                                  ]    
     [         PORTABLE VULNERABILITY ANALYZER          ]    
     [                                                  ]
     [--------------------------------------------------]

\e[1;32m
(1) PORTABLE NETWORK HACKER (PNH)
(2) PORTABLE ANDROID SNIFFER (PAS) 
\033[1;33m
(3) SETUP FOR NEW ATTACK

\033[1;31m
(4) EXIT
'

pnh='1'
pas='2'
atk='3'
ex='4'

read x

if [ "$x" == "$ex" ]; then                    #EXIT
echo THANKS FOR USING PORTABLE VULNERBILITY ANALYZER
exit

elif [ "$x" == "$atk" ]; then                          #SETUP FOR NEW ATTACK
rm /var/www/html/updater.apk &> /dev/null
rm /root/PVA_Mail+Setup/pas/test1.txt &> /dev/null
rm /root/pwlog/* &> /dev/null
echo 'SETUP COMPLETE!!!'

elif [ "$x" == "$pnh" ]; then                          #PNH
cd pnh && ./pnh.sh


elif [ "$x" == "$pas" ]; then                          #PNH
cd pas && ./pas.sh


fi


