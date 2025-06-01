#!/bin/bash

# Lire le nom du fichier
read fichier

# Lire la chaîne à rechercher
read chaine

# Rechercher la chaîne (grep insensible à la casse)
if grep -i "$chaine" "$fichier" > /dev/null
then
    echo "La chaîne '$chaine' a été trouvée dans $fichier."
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi
