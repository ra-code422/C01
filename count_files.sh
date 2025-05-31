#!/bin/bash

# Demande du nom du dossier à l'utilisateur
echo "Entrez le nom du dossier :"
read dossier

# Vérification si le dossier existe
if [ -d "$dossier" ]; then
    # On compte les fichiers dans le dossier (uniquement les fichiers, pas les dossiers)
    compteur=0
    for element in "$dossier"/*; do
        if [ -f "$element" ]; then
            compteur=$((compteur + 1))
        fi
    done

    echo "Le dossier $dossier contient $compteur fichier(s)"
else
    echo "Le dossier '$dossier' n'existe pas."
fi

