#!/bin/bash

function addUser {
	echo '>> Create User...'
	echo '>> Username: '
	read username
	echo '>> Passwort:'
	read password
	adduser $username
	echo '>> User <$username> erstellt'
	echo "$password" |passwd $username --stdin
	clear
	echo 'Passwort für User <$username> erstellt (<$password>)'
	}

function updateLinux {
	echo '>> Update Linux'
	yum update
	clear
	echo 'Update durchgefuehrt...'
	}
	
function updateKernel {
	yum update kernel -y
	clear
	echo 'Kernel wurde aktuallisiert'
	}

function installNano {
	yum install nano -y
	clear
	echo 'Nano wurde Installiert'
	}
	
function createGrp {
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
	
run = true
until(run);
do

