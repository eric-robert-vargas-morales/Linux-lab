cat >> inventario.sh << 'EOF'
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

# --- 2: Conteo por extension --
declare -A conteo
declare -A tamano_ext

for f in "${archivos[@]}"; do
	nombre="${f##*/}"
	if [[ "$nombre" == *.* ]]; then
		ext="${nombre##*.}"
	else
		ext="(sin extension)"
	fi
	conteo["$ext"]=$(( ${conteo["$ext"]:-0} + 1 ))
	bytes=$(stat -c%s "$f" 2>/dev/null || echo 0)
	tamano_ext["$ext"]=$(( ${tamano_ext["$ext"]:-0} + bytes))
done
EOF

git add inventario.sh
git commit -m "feat: add associative arrays for extension count and size"
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

# --- 2: Conteo por extension --
declare -A conteo
declare -A tamano_ext

for f in "${archivos[@]}"; do
	nombre="${f##*/}"
	if [[ "$nombre" == *.* ]]; then
		ext="${nombre##*.}"
	else
		ext="(sin extension)"
	fi
	conteo["$ext"]=$(( ${conteo["$ext"]:-0} + 1 ))
	bytes=$(stat -c%s "$f" 2>/dev/null || echo 0)
	tamano_ext["$ext"]=$(( ${tamano_ext["$ext"]:-0} + bytes))
done
EOF
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

# --- 2: Conteo por extension --
declare -A conteo
declare -A tamano_ext

for f in "${archivos[@]}"; do
	nombre="${f##*/}"
	if [[ "$nombre" == *.* ]]; then
		ext="${nombre##*.}"
	else
		ext="(sin extension)"
	fi
	conteo["$ext"]=$(( ${conteo["$ext"]:-0} + 1 ))
	bytes=$(stat -c%s "$f" 2>/dev/null || echo 0)
	tamano_ext["$ext"]=$(( ${tamano_ext["$ext"]:-0} + bytes))
done
