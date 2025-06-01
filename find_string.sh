#!/bin/bash

# Demande du nom du fichier
echo "Entrez le nom du fichier :"
read fichier

# Demande de la chaîne à rechercher
echo "Entrez la chaîne à rechercher :"
read chaine

# Vérifie que le fichier existe
if [ -f "$fichier" ]; then

    # Recherche de la chaîne (grep insensible à la casse avec -i)
    if grep -i "$chaine" "$fichier" > /dev/null; then
        echo "La chaîne '$chaine' a été trouvée dans $fichier."
    else
        echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
    fi

else
    echo "Le fichier '$fichier' n'existe pas."
fi
