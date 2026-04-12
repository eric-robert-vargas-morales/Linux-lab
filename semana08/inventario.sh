cat > inventario.sh << 'EOF'
#!/bin/bash
set -euo pipefail

REPO="${1:-$HOME/Linux-lab}"

if [[ ! -d "$REPO" ]]; then
	echo "Error: directorio '$REPO' no existe" <&2
	exit 1
fi

echo "Analizando repositorio: $REPO"

# --- 1: Cargar lista de arcchivos ---
mapfile -t archivos < <(find "$REPO" -type f | sort)
echo "Total de archivos encontrados: $(#arvchivos[@]}"
EOF
