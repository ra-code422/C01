#!/bin/bash

# Demander à l'utilisateur le chemin du répertoire
echo "Entrez le chemin du répertoire :"
read repertoire

# Vérifier si le répertoire existe
if [ -d "$repertoire" ]; then
    echo "Contenu du répertoire : $repertoire"

    # Lister uniquement les fichiers (pas les dossiers), en boucle
    compteur=0
    for element in "$repertoire"/*; do
        if [ -f "$element" ]; then
            compteur=$((compteur + 1))
        fi
    done

    echo "Nombre de fichiers : $compteur"
else
    echo "Le répertoire n'existe pas."
fi

