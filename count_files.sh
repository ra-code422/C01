#!/bin/bash

# Nom du dossier
read dossier

# Vérifie si le dossier existe
if [ -d "$dossier" ]; then
    # Compte uniquement les fichiers normaux (sans les dossiers)
    nb_fichiers=$(ls -p "$dossier" | grep -v / | wc -l)
    echo "Le dossier $dossier contient $nb_fichiers fichier(s)"
else
    echo "Le dossier '$dossier' n'existe pas."
fi
