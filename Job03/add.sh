#!/bin/bash

# Vérifier le nombre d'arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <nombre1> <nombre2>"
    exit 1
fi

# Récupérer les deux nombres passés en arguments
nombre1="$1"
nombre2="$2"

# Effectuer l'addition
resultat=$(($nombre1 + $nombre2))

# Afficher le résultat
echo "Résultat de l'addition : $resultat"

