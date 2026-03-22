# Semana 06: Bash Scripting - Condicionales 

## Descripcion

`backup-check-sh` valida el estado de un directorio de backups
Verificac existencia, contenidom amtiguedad y tamño, y emite un diagnostico con niveles OK / WARNING / ERROR

## Uso

```bash
./backup-check.sh 			# Usa /backup por defecto
./backup-check.sh  /mnt/respaldo	# Directorio personalizado
./backup-check.sh  ~/backup-prueba	# Directorio de prueba
./backup-check.sh  --version		# Version del script
./backup-check.sh  --help 		# Ayuda
```

## Estructura

```
semana06/
|-- README.md
|-- backup-check.sh
|-- commands-used.ms
'-- logs/
   '-- backup-check-YYYYMMDD.log
```

## Verificaciones que realiza 

1. Existencai y permisos del directorio de backups 
2. Presencia de archivos .tar.gz y que no esten vacios 
3. Antiguedad: alerta si el ultimo backup supera las 24 horas
4. Tamaño: alerta si el directirui esta fuera del rango esperado

## Salida de ejemplo 

```
eric@eric-VirtualBox:~/Linux-lab/semana06$./backup-check.sh ~/backup-prueba
[2026-03-22 14:41:33] [INFO   ] === backup-check.sh v1.0.0 - Inicio ===
[2026-03-22 14:41:33] [INFO   ] Directorio objetivo /home/eric/backup-prueba
[2026-03-22 14:41:33] [INFO   ] Verificando directorio: /home/eric/backup-prueba
[2026-03-22 14:41:34] [OK     ] Directorio accesible: /home/eric/backup-prueba
[2026-03-22 14:41:34] [INFO   ] Buscando archivos de backup (*.tar.gz=...
[2026-03-22 14:41:34] [ERROR  ] No se encontraron archivos .tar.gz en /home/eric/backup-prueba
[2026-03-22 14:41:34] [INFO   ] Verificando antiguedad del backup mas reciente...
[2026-03-22 14:41:34] [WARNING] No hay backups de las ultimas 24h
[2026-03-22 14:41:34] [INFO   ] Verificando tamaño del directorio de backups...
[2026-03-22 14:41:34] [INFO   ] Tamaño total: 1 MB
[2026-03-22 14:41:34] [WARNING] Directorio pequeño: 1 MB (minimo:10 MB)
[2026-03-22 14:41:34] [INFO   ] === Verificacion completa ===
[2026-03-22 14:41:34] [ERROR  ] RESULTADO: se detectaron errores que requiere atencion
```

## Conceptos aprendidos
- El comando test y la sintaxis [ ] y [[ ]]
- if/elif/else con operadores numericos, de cadena y de archivo
- Operadores logicos &&, || y !
- La estructura case/esac
- Funciones con parametros, return y local
- Logging estructurado con tee -a
- Medicion de espacio con du -sm
- Busqueda por antiguedad con find -mtime

