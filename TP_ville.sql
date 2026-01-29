-- ALWAYS ADD LIMIT 1-5 (36700 lines lmao)
SELECT nom,habitants FROM ville;
SELECT nom,habitants FROM ville WHERE dep = '78' ORDER BY nom;
SELECT nom,habitants FROM ville ORDER BY surface DESC;
SELECT nom FROM ville ORDER BY habitants LIMIT 1;
SELECT nom FROM ville ORDER BY habitants DESC LIMIT 10;
SELECT * FROM ville WHERE nom = 'Rennes';
SELECT nom,altitude FROM ville WHERE altitude LIKE '4___' ORDER BY altitude;
SELECT nom,habitants FROM ville WHERE nom LIKE 'X%';
SELECT nom,habitants FROM ville WHERE UPPER(nom) LIKE '%X%';
SELECT nom FROM ville WHERE dep = '78' AND habitants > '10000' AND habitants < '20000';
SELECT nom,dep FROM ville WHERE nom LIKE 'La Queue%';
SELECT COUNT(nom) FROM ville;
SELECT COUNT(DISTINCT nom) FROM ville;
SELECT COUNT(DISTINCT dep) FROM ville;
SELECT SUM(habitants) FROM ville;
SELECT AVG(Densite) FROM ville;
SELECT Densite FROM ville ORDER BY Densite LIMIT 1;
SELECT nom,longitude FROM ville WHERE Longitude > -5 ORDER BY Longitude LIMIT 1;
SELECT nom,habitants FROM ville WHERE dep = '78' ORDER BY habitants OFFSET 5 LIMIT 5;
SELECT COUNT(nom) FROM ville WHERE nom LIKE '%x_';
SELECT COUNT(nom) AS petites FROM ville WHERE dep = '78' AND habitants < 100;
SELECT nom FROM ville WHERE habitants > ( 
    SELECT habitants FROM ville WHERE nom = 'Lille');
SELECT COUNT(nom) FROM ville WHERE densite > (
    SELECT densite FROM ville WHERE nom =  'La Queue-les-Yvelines');
SELECT nom FROM ville WHERE dep = '13' AND habitants >(
    SELECT AVG(habitants) FROM ville WHERE dep = '13') ORDER BY nom;
SELECT nom FROM ville AS tordu WHERE UPPER(nom) LIKE 'B%' AND habitants > (
    SELECT SUM(habitants) FROM ville WHERE dep = '78' AND densite < (
        SELECT AVG(densite) FROM ville)) ORDER BY habitants;
 