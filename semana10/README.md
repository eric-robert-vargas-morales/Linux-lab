# Semana 10: Gestion de Paquetes

## Objetivo
Instalar y configurar automaticamente el dev stack completo del curso, usando tecnicas profesionales: idempotencia, deteccion de OS, verificacion y rollback

## Archivos

| Archivo | Descripcion |
|---------|-------------|
| `install-dev-stack.sh`| Script principal de instalacion |
| `verify-install.sh` | Verificacion independiente del stack |
| `rollback.sh` | Desinstalacion manual del stack |
| `install.log` | Log generado automaticamente |
| `verification-report.md` | Reporte de verificacion generado |
| `docs/package.md` | Lista y justificacion de paquetes |

## Uso

```
# 1. Ejecutar instalacion 
sudo ./install-dev-stack.sh

# 2. Modo dry-run (ver que haria sin instalar)
sudo ./install-ver-stack.sh --dry-run

# 3. Verificar instalacion
./verify-install.sh

# 4. Rollback manual (si se necesita)
sudo ./rollback.sh
```

## Conceptos Aplicados

- **Idempotencia**: verificar antes de instalar. seguro de re-ejecutar
- **Deteccion de OS**: compatible con Ubuntu, Debian, Linux Mint
- **Logging estructurado**: registro en archivo con niveles
- **Verificacion post-instalacion**: reporte de estado

## Paquetes Instalados

Ver `docs/packages.md` para la lista completa con justificacion
