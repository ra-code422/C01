#!/bin/bash
#lire le nom du dossier
read myfolder

#recuperer le nombre des fichier dans $myfolder
nbre=$(ls "$myfolder" | wc -l)

#si le nombre n'est pas null, afficher
if [ "$nbre" -gt 0 ]; then

    echo "Le dossier $myfolder contient $nbre fichier(s)."
#sinon afficher zero
else
     
    echo "Le dossier $myfolder contient 0 fichier(s)."
fi
exit 0
