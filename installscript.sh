#!/bin/bash
function 01_installNano {
	yum install nano -y
	clear
	echo 'Nano wurde Installiert'
	}
	
function 02_addUser {
	echo '>> Create User...'
	echo '>> Username: '
	read username
	echo '>> UserID: '
	echo '>> ohne uid leer lassen...'
	read uid
	echo '>> Passwort:'
	read password
	if("$uid" == "")
	then
		adduser $username
		echo '>> User <$username> erstellt'
	else
		adduser $username -u$uid
	fi
	echo "$password" |passwd $username --stdin
	clear
	echo 'Passwort für User <$username> erstellt (<$password>)'
	}

function 03_updateLinux {
	echo '>> Update Linux'
	yum update
	clear
	echo 'Update durchgefuehrt...'
	}
	
function 04_updateKernel {
	yum update kernel -y
	clear
	echo 'Kernel wurde aktuallisiert'
	}
	
function 05_createGrp {
	echo 'Grupenname eingeben:'
	read grpname
	echo 'Gruppen ID eingeben:'
	echo 'leerlassen wen es keine ID benoetigt'
	read grpid
	if("$grpid" == "")
	then
		groupadd $grpname
	else
		groupadd $grpname -g$grpid
	fi
	clear
	echo '>> Grupe <$grpname> mit der ID <$grpid> erstellt...'
	}
	
#Schleife #########################
while true; do
echo "Was ist zutun...?"
echo "1.  Nano installieren"
echo "2.  User erstellen"
echo "3.  linux Updaten (yum update)"
echo "4.  kernel updaten"
echo "5.  Gruppe erstellen"
echo "6.  nothing"
echo "7.  nothing"
echo "8.  nothing"
echo "9.  nothing"
echo "10. nothing"
echo

echo -n "Enter your choice, or 0 for exit: "
read choice
echo

case $choice in
     1)
     01_installNano
     ;;
     2)
     02_addUser
     ;;
     3)
     03_updateLinux
     ;;
     4)
	 04_updateKernel
     ;;
     5)
     05_createGrp
     ;;
     6)
     echo 'nothing todo'
     ;;
     7)
     echo 'nothing todo'
     ;;
     8)
     echo 'nothing todo'
     ;;
     9)
     echo 'nothing todo'
     ;;
     10)
     echo 'nothing todo'
     ;;
     0)
     echo "exit script"
     break
     ;;
     *)
     echo "That is not a valid choice, try a number from 0 to 10."
     ;;
esac  
done