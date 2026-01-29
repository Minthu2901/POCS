-- ALWAYS ADD LIMIT 1-5 (36700 lines lmao)
SELECT nom,habitants FROM ville LIMIT 5;
SELECT nom,habitants FROM ville WHERE dep = '78' ORDER BY nom LIMIT 5;
SELECT nom,habitants FROM ville ORDER BY surface DESC LIMIT 5;
SELECT nom FROM ville ORDER BY habitants LIMIT 1;
SELECT nom FROM ville ORDER BY habitants DESC LIMIT 10;
SELECT * FROM ville WHERE nom = 'Rennes' LIMIT 5;
SELECT nom,altitude FROM ville WHERE altitude LIKE '4___' ORDER BY altitude LIMIT 5;
SELECT nom,habitants FROM ville WHERE nom LIKE 'X%' LIMIT 5;
SELECT nom,habitants FROM ville WHERE UPPER(nom) LIKE '%X%' LIMIT 5;
SELECT nom FROM ville WHERE dep = '78' AND habitants > '10000' AND habitants < '20000' LIMIT 5;
SELECT nom,dep FROM ville WHERE nom LIKE 'La Queue%' LIMIT 5;
SELECT COUNT(nom) FROM ville LIMIT 5;
SELECT COUNT(DISTINCT nom) FROM ville LIMIT 5;
SELECT COUNT(DISTINCT dep) FROM ville LIMIT 5;
SELECT SUM(habitants) FROM ville LIMIT 5;
SELECT AVG(Densite) FROM ville LIMIT 5;
SELECT Densite FROM ville ORDER BY Densite LIMIT 1;
SELECT nom,longitude FROM ville WHERE Longitude > -5 ORDER BY Longitude LIMIT 1;
SELECT nom,habitants FROM ville WHERE dep = '78' ORDER BY habitants OFFSET 5 LIMIT 5;
SELECT COUNT(nom) FROM ville WHERE nom LIKE '%x_' LIMIT 5;
SELECT COUNT(nom) AS petites FROM ville WHERE dep = '78' AND habitants < 100 LIMIT 5;
SELECT nom FROM ville WHERE habitants > ( 
    SELECT habitants FROM ville WHERE nom = 'Lille') LIMIT 5;
SELECT COUNT(nom) FROM ville WHERE densite > (
    SELECT densite FROM ville WHERE nom =  'La Queue-les-Yvelines') LIMIT 5;
SELECT nom FROM ville WHERE dep = '13' AND habitants >(
    SELECT AVG(habitants) FROM ville WHERE dep = '13') ORDER BY nom LIMIT 5;
SELECT nom FROM ville AS tordu WHERE UPPER(nom) LIKE 'B%' AND habitants > (
    SELECT SUM(habitants) FROM ville WHERE dep = '78' AND densite < (
        SELECT AVG(densite) FROM ville)) ORDER BY habitants LIMIT 5;
 