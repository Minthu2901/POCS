-- Q1
SELECT nom FROM ville ORDER BY nom;
-- Q2
SELECT nom,code FROM ville WHERE UPPER(nom) LIKE '%Z%'OR UPPER(nom) LIKE'T%';
-- Q3
SELECT DISTINCT categorie FROM evolution ORDER BY categorie;
-- Q4
SELECT code FROM ville WHERE nom LIKE 'Caullery';
-- Q5
SELECT nom FROM ville WHERE nom LIKE '_____';
-- Q6
SELECT * FROM evolution WHERE code = 59140 ORDER BY effectif;
-- Q7
INSERT INTO ville VALUES  (35000, 'Rennes', 50.291048, 2.7772211);
-- Q8
UPDATE ville SET nom = 'New-York' WHERE nom = 'Rennes';
-- Q9
ALTER TABLE ville RENAME COLUMN nom TO nomVille;
-- Q10
DELETE FROM evolution WHERE code = (SELECT code FROM ville WHERE nomville LIKE 'Lille');
DELETE FROM ville WHERE nomville LIKE 'New-York' OR nomville LIKE 'Lille';