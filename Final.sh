#!/bin/bash

clear
if (whiptail --title "Téléchargement des outils" --msgbox "Avant de commencer l'installation, le logiciel va télécharger les outils.\n \n\n Temps: entre 1 et 2min \n\n Mode: Full automatique" 12 78) then 
wget https://github.com/googlesamples/assistant-sdk-python/releases/download/0.6.0/google_assistant_library-1.1.0-py2.py3-none-linux_armv7l.whl
clear
cd /home/pi/finalGoogleApiAuto/
sudo mv .asoundrc /home/pi/
clear
cd /home/pi/finalGoogleApiAuto/
sudo mv override.conf /etc/systemd/system/getty@tty1.service.d
cd
clear
cd /home/pi/finalGoogleApiAuto/
mv google_assistant_library-1.1.0-py2.py3-none-linux_armv7l.whl /home/pi/
cd /home/pi/
clear
whiptail  --title "World-Teck STUDIO (TUTO Assistance Gooogle) " --msgbox "\n Bienvenue sur l'assistance d'installation de google sur Raspberry.\n\n\n Information sur les installations :\n\n\n - Configuration du compte API de google via internet \n - Vérification de la mise à jour de votre logiciel \n - Check du matériel.\n - Téléchargement + installation de pythons\n - Installation de google assistance\n - Activation du service\n - Mise en place du mode auto\n - Exécution de google assistance\n\n\n Niveau de difficulté de l'instalation : Moyen \n\n Version: 5.0 Final " 32 85
whiptail --title "ETAPE 1" --msgbox "Configuration du compte API de google via internet\n-------------------------------------------------\n\n Temps: entre 5 et 15 min \n\n Mode: Full Manuel" 12 78
whiptail --title "ETAPE 1" --msgbox "ATTENTION, MERCI DE BIEN SUIVRE LES ETAPES\n\n1.Rdv sur console.cloud.google.com/projectselector2\n2.Clicker sur créer un projet\n3.Entrer un nom de projet puis créer\n4.Activer Google assistant API\n5.Créer un ID client OAuth\n\nTemps: entre 5 et 10 min \n\n Mode: Full Manuel" 15 78
whiptail --title "ETAPE 1" --msgbox "Félicitation, vous avez terminé l'étape 1 \n\nNous pouvons passer à l'étape 2" 10 78
whiptail --title "ETAPE 2" --msgbox "Vérification de la mise à jour de votre logiciel \n------------------------------------------------\n\n Temps: entre 10min et 1H \n\n Mode: Full Auto" 12 78
sudo apt-get update -y && sudo apt-get upgrade -y
clear
whiptail --title "ETAPE 2" --msgbox "Vérification de la mise à jour de votre logiciel \n------------------------------------------------\n\n Information: TERMINER \n\n Vous pouvez passer à l'étape 3" 12 78
whiptail --title "ETAPE 3" --msgbox "Veuillez branché votre mico + le haut parleur sur le raspberry \n--------------------------------------------------------------\n\n ATTENTION: je vous conseille un ensemble en USB\n\n Temps: Aucun \n\n Mode: Full Manuel" 14 78
whiptail --title "ETAPE 3" --msgbox "Préparer de quoi noté\n---------------------\n\n -le numéro de la card \n -le numero du device \n\n ATTENTION: vous avez 10 sec pour noter" 16 78
sudo arecord -l
sleep "2"
echo "il vous reste 10 sec pour touvé le numero de la card et device."
sleep "10"
clear
whiptail --title "ETAPE 3" --msgbox "Félicitation, vous avez terminé l'étape 3 \n\n Nous pouvons passer à l'étape 4" 10 78
whiptail --title "ETAPE 4" --msgbox "Configuration du fichier audio\n------------------------------\n\n 1.préparer le numero de votre device \n 2.Préparer le numero de votre card \n\n ATTENTION: une fois le fichier modifié faites CTRL Gauche + X puis ENTER" 14 78
sudo nano .asoundrc
clear
whiptail --title "ETAPE 4" --msgbox "Félicitation, vous avez terminé l'étape 4 \n\n Nous pouvons passer à l'étape 5" 10 78
whiptail --title "ETAPE 5" --msgbox "Téléchargement + installation de python \n---------------------------------------\n\n Temps: 10 et 25 minutes \n\n Mode: Full Automatique" 12 78
sudo apt-get install python3-dev python3-venv -y
python3 -m venv env
env/bin/python -m pip install --upgrade pip setuptools wheel
source env/bin/activate
sudo apt-get install portaudio19-dev libffi-dev libssl-dev -y
clear
whiptail --title "ETAPE 5" --msgbox "Téléchargement + installation de python \n---------------------------------------\n\n Information: Terminer \n\n Vous pouvez passer à l'étape 6" 12 78
whiptail --title "ETAPE 6" --msgbox "Installation de google assistance\n---------------------------------\n\n Temps: 10 et 25 minutes \n\n Mode: Full Automatique" 12 78
python -m pip install --upgrade google-assistant-sdk[samples]
clear
python -m pip install --upgrade google_assistant_library-1.1.0-py2.py3-none-linux_armv7l.whl
clear
python -m pip install --upgrade google-auth-oauthlib[tool]
clear
whiptail --title "ETAPE 6" --msgbox "Installation de google assistance\n---------------------------------\n\n Information: TERMINER \n\n Vous pouvez passer à la dernière étape" 12 78
whiptail --title "ETAPE 7" --msgbox "Activation du service + code d'access\n---------------------------------\n\n Temps: 5 et 10 minutes \n\n Mode: Full Manuel" 12 78
clear
google-oauthlib-tool --client-secrets code_secret_client.json --scope https://www.googleapis.com/auth/assistant-sdk-prototype --save --headless
clear
whiptail --title "ETAPE 7" --msgbox "Activation du service + code d'access\n---------------------------------\n\n Information: TERMINER \n\n" 12 78
clear
whiptail --title "ETAPE 8 FINAL" --msgbox "Mise en place du lancement automatique\n------------------------------------\n\n 1. sourligner les 2 phrases \n\n source env/bin/activate \n google-assistant-demo --device-model-id my-device-model \n\n faite OK\n RDV en bas de la fenêtre et faites click Droit\n Puis CTRL+X --> ENTER" 17 78
clear
nano /home/pi/.bashrc
clear
whiptail --title "Félicitation" --msgbox "L'installation de google assitance est TERMINER\n---------------------------------\n\n Félicitation, le software est correctement installé \n\n il reste plus qu'à faire OK et attendre le restart." 12 78
whiptail --title "== SCRIPT DE WORLD-TECK STUDIO ==" --msgbox "Merci d'avoir suivi le tuto\n\n Retrouvez moi sur \n YOUTUBE: world-teck STUDIO \n TWITCH: WorldTeck_studio_ ==" 12 78
clear
sudo reboot
fi
