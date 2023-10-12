#!/bin/bash

# Définissez la date au format jj-mm-aaaa-HH:MM
current_date=$(date +"%d-%m-%Y-%H:%M")

# Chemin du fichier de logs à analyser (ajustez le chemin en fonction de votre distribution)
log_file="/var/log/auth.log"

# Chemin complet du fichier de sauvegarde
backup_dir="$HOME/Job8/Backup"

# Créez le répertoire de sauvegarde s'il n'existe pas
mkdir -p "$backup_dir"

# Nom du fichier de sauvegarde avec la date
backup_file="$backup_dir/number_connection-$current_date.tar"

# Utilisez grep pour extraire le nombre de connexions de l'utilisateur (par exemple, l'utilisateur 'votre_utilisateur')
user="votre_utilisateur"
connections=$(grep -c "$user" "$log_file")

# Créez un fichier de log avec le nombre de connexions
echo "Nombre de connexions de $user à $current_date : $connections" > "$backup_dir/connections_log.txt"

# Archivez le fichier de log
tar -cvf "$backup_file" "$backup_dir/connections_log.txt"

# Supprimez le fichier de log non archivé
rm -f "$backup_dir/connections_log.txt"

# Affichez un message de confirmation
echo "Fichier archivé : $backup_file"

# Fin 


