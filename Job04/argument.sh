

# Vérifier le nombre d'arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <nouveauFichier> <contenu>"
    exit 1
fi

# Récupérer les noms des fichiers passés en arguments
nouveauFichier="$1"
contenu="$2"

# Utiliser la redirection pour copier le contenu du fichier source dans le nouveau fichier
cat "$contenu" > "$nouveauFichier"

# Vérifier si la copie a réussi
if [ $? -eq 0 ]; then
    echo "Le contenu du fichier $contenu a été copié avec succès dans $nouveauFichier."
else
    echo "Une erreur s'est produite lors de la copie."
fi




