# Semana 03: Procesamiento de Texto y Pipes

## Objetivo

Desarrollar un analizador de logs usando unicamente herramientas
de procesamiento de texto UNIX: grep, cut, sort, uniq, wc, tr y awk.

## Archivos del Proyecto

|         Archivo          |              Descripcion             |
|--------------------------|--------------------------------------|
| ‘generate-sample-log.sh‘ | Genera 500 entradas de log de prueba |
| ‘log-analyzer.sh‘        | Analizador principal                 |
| ‘report.md‘              | Reporte generado en Markdown         |
| ‘commands-used.md‘       | Documentacion de comandos y pipelines|

> ‘sample.log‘ y ‘analysis-report.txt‘ no se versionan (.gitignore)

## Uso

### 1. Generar log de prueba

‘‘‘bash
./generate-sample-log.sh
‘‘‘

### 2. Analizar el log

‘‘‘bash
# Usar log de prueba
./log-analyzer.sh

# Usar otro archivo de log
./log-analyzer.sh /var/log/syslog
‘‘‘

### 3. Ver el reporte

‘‘‘bash
cat report.md
‘‘‘

## Secciones del Analisis

1. **Top 10 IPs** con mas actividad
2. **Distribucion por severidad** (FATAL, ERROR, WARNING, INFO)
3. **Linea de tiempo** de eventos por hora
4. **Top 5 mensajes** de error mas frecuentes
5. **Reporte Markdown** generado automaticamente

## Pipeline Principal

‘‘‘bash
# Extraer IPs, ordenar y contar frecuencias
cut -d’|’ -f2 sample.log | tr -d ’ ’ | \
	sort | uniq -c | sort -rn | head -10
‘‘‘

## Comandos Aprendidos
- ‘grep‘ - Buscar patrones en texto
- ‘cut‘ - Extraer columnas
- ‘sort‘ - Ordenar lineas
- ‘uniq -c‘ - Contar frecuencias
- ‘wc -l‘ - Contar lineas
- ‘tr‘ - Transformar caracteres
- ‘sed‘ - Editar flujo de texto
- ‘awk‘ - Procesar columnas
- ‘|' - Encadenar comandos
- ‘>‘, ‘>>‘, ‘2>/dev/null‘ - Redireccion

## Checklist
- [x] Script generador funcional
- [x] Analizador con 5 secciones
- [x] Reporte en Markdown generado
- [x] Comandos documentados
- [x] Desarrollo incremental con 8+ commits
