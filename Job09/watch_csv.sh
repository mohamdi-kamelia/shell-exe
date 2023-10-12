#!/bin/bash

csv_file="utilisateurs.csv"

# Fonction pour exécuter accessrights.sh
execute_accessrights() {
    ./accessrights.sh
}

# Surveillance du fichier CSV pour les modifications
inotifywait -m -e close_write "$csv_file" |
    while read -r directory events filename; do
        execute_accessrights
    done

