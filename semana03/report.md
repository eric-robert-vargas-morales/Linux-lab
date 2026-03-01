# Reporte de Analisis de Logs

**Archivo analizado:** sample.log
**Fecha del analisis:** 2026-02-28 20:38:45
**Total de entradas:** 500

---

## 1. Top 10 Direcciones IP

| Solicitudes   | Direccion IP |
|---------------|--------------|
| 159 | 192.168.1.10 |
| 116 | 10.0.0.5 |
| 62 | 192.168.1.25 |
| 62 | 172.16.0.3 |
| 52 | 10.0.0.99 |
| 49 | 203.0.113.42 |

## 2. Distribucion por Severidad

| Nivel  | Cantidad  |
|--------|-----------|
| FATAL | 73 |
| ERROR | 80 |
| WARNING | 74 |
| INFO | 273 |

## 3. Eventos por Hora
|  Hora  |  Eventos  |
|--------|-----------|
| 00:00 | 14 |
| 01:00 | 21 |
| 02:00 | 12 |
| 03:00 | 21 |
| 04:00 | 23 |
| 05:00 | 14 |
| 06:00 | 17 |
| 07:00 | 23 |
| 08:00 | 16 |
| 09:00 | 18 |
| 10:00 | 22 |
| 11:00 | 23 |
| 12:00 | 22 |
| 13:00 | 21 |
| 14:00 | 19 |
| 15:00 | 28 |
| 16:00 | 23 |
| 17:00 | 25 |
| 18:00 | 19 |
| 19:00 | 35 |
| 20:00 | 22 |
| 21:00 | 23 |
| 22:00 | 19 |
| 23:00 | 20 |

## 4. Top 5 Mensajes de Error

|  Frecuencia  |  Mensaje  |
|--------------|-----------|
| 56 | Connectiontimeoutafter30s |
| 41 | Authenticationfailedforuseradmin |
| 24 | Failedtowritetodisk |
| 17 | OutofmemoryerrorinmoduleX |
| 15 | Databaseconnectionrefused |

## 5. Resumen

- Sistema analizado con 500 eventos registrados
- 153 eventos requieren atencion (ERROR y FATAL)
- Analisis completado con herramientas UNIX estandar
