

# Définissez la date au format jj-mm-aaaa-HH:MM
current_date=$(date +"%d-%m-%Y-%H:%M")

# Chemin du fichier de logs à analyser 
log_file="/var/log/auth.log"
# Chemin complet du fichier de sauvegarde
backup="/home/kamelia/shell-exe/Job08/Backup"

# Créez le répertoire de sauvegarde 
mkdir -p /home/kamelia/shell-exe/Job08/Backup

# Nom du fichier de sauvegarde avec la date
backup_file="$backup/number_connection-$current_date.tar"

# Utilisez grep pour extraire le nombre de connexions de l 'utilisateur
user="kamelia"
connections=$(grep "$user" "$log_file")

# Créez un fichier de log avec le nombre de connexions
echo "Nombre de connexions de $kamelia à $current_date : $connections" > "$backup/connections_log.txt"

# Archivez le fichier de log
tar -cvf "$backup_file" "$backup/connections_log.txt"


# Supprimez le fichier de log non archivé
rm "$backup/connections_log.txt"

# Affichez un message de confirmation
echo "Fichier archivé : $backup_file"





