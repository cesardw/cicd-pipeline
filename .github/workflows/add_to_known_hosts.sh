# Verifica si se proporcionaron dos argumentos
if [ $# -ne 2 ]; then
    echo "Uso: $0 ubuntu@ec2-54-175-78-194.compute-1.amazonaws.com cicd-pipeline2.pem"
    exit 1
fi

# Variables
HOST="$1"
KEY="$2"
KNOWN_HOSTS_FILE="$HOME/.ssh/known_hosts"

# Verifica si el archivo known_hosts ya existe
if [ ! -f "$KNOWN_HOSTS_FILE" ]; then
    touch "$KNOWN_HOSTS_FILE"
fi

# Verifica si la entrada ya existe en known_hosts
grep -q "$HOST" "$KNOWN_HOSTS_FILE"
if [ $? -eq 0 ]; then
    echo "La entrada ya existe en el archivo known_hosts."
    exit 0
fi

# Agrega la nueva entrada
echo "$HOST $KEY" >> "$KNOWN_HOSTS_FILE"
echo "Entrada agregada correctamente a known_hosts."
