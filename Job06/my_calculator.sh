


if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <chiffre1> <opération> <chiffre2>"
    exit 1
fi
chiffre1="$1"
operation="$2"
chiffre2="$3"

# Une instruction conditionnelle pour effectuer l'opération appropriée
resultat=0

case "$operation" in
    +)
        resultat=$(($chiffre1 + $chiffre2))
        ;;
    -)
        resultat=$(($chiffre1 - $chiffre2))
        ;;
    \*)
        resultat=$(($chiffre1 * $chiffre2))
        ;;
    /)
        if [ "$chiffre2" -eq 0 ]; then
            echo "Erreur : Division par zéro."
            exit 1
        fi
        resultat=$(($chiffre1 / $chiffre2))
        ;;
    *)
        echo "Opération non reconnue. Utilisez '+', '-', '*', ou '/'."
        exit 1
        ;;
esac

echo "Résultat : $resultat"

