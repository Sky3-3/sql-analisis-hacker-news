# Proyecto SQL: Análisis Temporal de Interacción en Noticias Tecnológicas

Este repositorio contiene un proyecto práctico enfocado en el uso de funciones de manipulación de fechas, redondeo numérico y ordenamiento avanzado en SQL sobre un conjunto de datos de publicaciones. El objetivo es identificar qué horas del día acumulan las puntuaciones promedio más altas para optimizar los horarios de publicación.

---

## Código SQL del Proyecto

La consulta extrae el componente horario de una marca de tiempo, calcula la media del puntaje redondeada a un decimal y cuenta el volumen de publicaciones, agrupando y ordenando los resultados de manera descendente:

```sql
-- Analizar el puntaje promedio y volumen de publicaciones por hora del día
SELECT 
   strftime('%H', timestamp) as 'hora',
   round(avg(score), 1) as 'promedio de puntaje',
   count(*) as 'conteo de tiempo'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;

```

---

## Simulación del Flujo de Datos

A continuación se detalla cómo se procesa la información desde la estructura base hasta la obtención del resultado final mediante las transformaciones lógicas de SQL.

### 1. Esquema Base de la Tabla (hacker_news)

La tabla almacena los datos individuales de cada noticia enviada por los usuarios:

| title | score | timestamp | user |
| --- | --- | --- | --- |
| New Tech Trends | 15 | 2026-03-15 18:22:00 | dev_user |
| Open Source News | 112 | 2026-03-15 02:45:00 | linuxtroll |
| Database Optimization | 45 | 2026-03-15 18:05:00 | sql_master |
| AI Breakthrough | 310 | 2026-03-15 02:12:00 | future_tech |
| Coding Bootcamp Review | 8 | 2026-03-15 13:50:00 | learner99 |

### 2. Tabla Resultado (Luego de ejecutar el código)

Al ejecutar el script, el motor extrae únicamente la hora (`18`, `02`, `13`), calcula el promedio aritmético del puntaje (redondeado), cuenta cuántos registros ocurrieron en esa hora y ordena de mayor a menor según el rendimiento del puntaje:

| hora | promedio de puntaje | conteo de tiempo |
| --- | --- | --- |
| 02 | 211.0 | 2 |
| 18 | 30.0 | 2 |
| 13 | 8.0 | 1 |

---

## Licencia

Este proyecto está bajo la Licencia MIT. Para más detalles, puede consultar los términos en [Open Source Initiative (MIT)](https://opensource.org/license/MIT).

```

```
