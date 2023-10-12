#!/bin/bash

# Emplacement du fichier CSV
csv_file="utilisateurs.csv"

# Fonction pour créer un utilisateur
create_user() {
    username="$1"
    password="$2"
    admin="$3"

    # Créer l'utilisateur
    sudo useradd -m "$username"

    # Définir le mot de passe
    echo "$username:$password" | sudo chpasswd

    # Si l'utilisateur est un admin, donner des privilèges sudo
    if [ "$admin" == "admin" ]; then
        sudo usermod -aG sudo "$username"
    fi
}

# Parcourir le fichier CSV et créer des utilisateurs
awk -F, '{print $1, $2, $3}' "$csv_file" | while IFS= read -r line; do
    create_user $line
done
