#!/bin/bash


if (whiptail --title "Téléchargement des outils" --msgbox "Avant de commencé l'installation, le logiciel vas télécharger les outils.\n \n\n Temps: entre 1 et 15 min \n\n Mode: Full automatique" 12 78) then 
wget https://github.com/googlesamples/assistant-sdk-python/releases/download/0.6.0/google_assistant_library-1.1.0-py2.py3-none-linux_armv7l.whl
clear
whiptail  --title "World-Teck STUDIO (TUTO Assistant Gooogle) " --msgbox "\n Bienvenue sur l'assistance d'installation de google sur Raspberry.\n\n\n Information sur les installations :\n\n\n - Configuration du compte API de google via internet \n - Vérification de la mise à jour de votre logiciel \n - Votre matériel a branché.\n - Téléchargement + installation de pythons\n - Installation de google assistance\n - Activation du service\n - Exécution de google assistance\n\n\n Niveau de difficulté de l'instalation : Moyen \n\n Version: 5.0 Final " 30 85
whiptail --title "ETAPE 1" --msgbox "Configuration du compte API de google via internet\n-------------------------------------------------\n\n Temps: entre 5 et 15 min \n\n Mode: Full Manuel" 12 78
whiptail --title "ETAPE 1" --msgbox "ATTENTION, MERCI DE BIEN SUIVRE LES ETAPES\n\n1.Rdv sur console.cloud.google.com/projectselector2\n2.Clicker sur créer un projet\n3.Entré un nom de projet puis créer\n4.Activer Google assistant API\n5.Créer un ID client OAuth\n\nTemps: entre 5 et 10 min \n\n Mode: Full Manuel" 15 78
whiptail --title "ETAPE 1" --msgbox "Félicitation, vous avez terminé l'étape 1 \n\nNous pouvons passé a l'etape 2" 10 78
whiptail --title "ETAPE 2" --msgbox "Vérification de la mise à jour de votre logiciel \n------------------------------------------------\n\n Temps: entre 10 et 30 min \n\n Mode: Full Auto" 12 78
sudo apt-get update -y && sudo apt-get upgrade -y
clear
whiptail --title "ETAPE 2" --msgbox "Vérification de la mise à jour de votre logiciel \n------------------------------------------------\n\n Information: TERMINER \n\n Vous pouvez passé a l'etape 3" 12 78
whiptail --title "ETAPE 3" --msgbox "Veuillez branché votre mico + le haut parleur sur le raspberry \n--------------------------------------------------------------\n\n ATTENTION: je vous conseil un ensemble en USB\n\n Temps: Aucun \n\n Mode: Full Manuel" 12 78
whiptail --title "ETAPE 3" --msgbox "Félicitation, vous avez terminé l'étape 3 \n\nNous pouvons passé a l'etape 4" 10 78
whiptail --title "ETAPE 4" --msgbox "Téléchargement + installation de python \n---------------------------------------\n\n Temps: 10 et 25 minutes \n\n Mode: Full Automatique" 12 78
sudo apt-get install python3-dev python3-venv -y
python3 -m venv env
env/bin/python -m pip install --upgrade pip setuptools wheel
source env/bin/activate
whiptail --title "ETAPE 4" --msgbox "Téléchargement + installation de python \n---------------------------------------\n\n Information: Terminer \n\n Vous pouvez passé a l'etape 5" 12 78
whiptail --title "ETAPE 5" --msgbox "Installation de google assistance\n---------------------------------\n\n Temps: 10 et 25 minutes \n\n Mode: Full Automatique" 12 78
python -m pip install google_assistant_library-1.1.0-py2.py3-none-linux_armv7l.whl
python -m pip install --upgrade google-auth-oauthlib[tool]
whiptail --title "ETAPE 5" --msgbox "Installation de google assistance\n---------------------------------\n\n Information: TERMINER \n\n Vous pouvez passé a la derniere étapes" 12 78
whiptail --title "ETAPE 6 FINAL" --msgbox "Activation du service + code d'access\n---------------------------------\n\n Temps: 5 et 10 minutes \n\n Mode: Full Manuel" 12 78
google-oauthlib-tool --client-secrets code_secret_client.json --scope https://www.googleapis.com/auth/assistant-sdk-prototype --save --headless
clear
whiptail --title "ETAPE 6" --msgbox "Activation du service + code d'access\n---------------------------------\n\n Information: TERMINER \n\n" 12 78
whiptail --title "Félicitation" --msgbox "L'installation de google assitance est TERMINER\n---------------------------------\n\n Félicitation, le software est correctement installé \n\n il reste plusqu'a faire OK est dire OK GOOGLE." 12 78
fi
