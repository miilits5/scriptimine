#!/bin/bash
#autor Tarvi Tihhanov
#Script loob automaatse kodu veebisaidile kujul ./teekodu www.nimi.ee.
#Siia alla kuulub kaust kuhu sait tuleb. Virtualhost vastava sisuga.
#Kontrollib kas apache on kui ei installib.
#Lisab hosts file vastava kirje et saaks localhostis vaadata.
#PHP, kontrollib kas on kui ei installib 
#kasutatud kirjandus: https://wiki.itcollege.ee/index.php/Bash_näide


#Kontroll kas scriptil on piisavalt 6iguseid
if [ $UID -ne 0 ]
then
	echo "k2ivita skript $(basename $0) juurkasutaja 6igustes"
	exit 1
fi

#hoiatab
read -p -p "Soovid j2tkata? See script v6ib aega v6tta" response
if [[ $response =~ ~ 




#Kontrollib kas apache2 on paigaldatud kui ei siis installib.
type apache2 
if [ $? -ne 0 ]
then apt-get update  && apt-get install apache2 -y || exit 1
fi
