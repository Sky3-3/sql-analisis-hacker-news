-- Analizar el puntaje promedio y volumen de publicaciones por hora del día
SELECT 
   strftime('%H', timestamp) as 'hora',
   round(avg(score), 1) as 'promedio de puntaje',
   count(*) as 'conteo de tiempo'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;
