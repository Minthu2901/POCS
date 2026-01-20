--CREATE TABLE eleve(
--nom VARCHAR(255) PRIMARY KEY,
--prenom VARCHAR(255) UNIQUE NOT NULL,
--naissance DATE,
--age INT,
--CHECK (age >= 18)
--);

-- copier le fichier dans /tmp/...
-- executer avec \i /tmp/... dans psql

SELECT espece, nom FROM animal;
INSERT INTO proprietaire
VALUES
(2,'DUHEM','Aude');
INSERT INTO animal
VALUES
(3,'Chien','F','2017-04-01','Nova','Peureuse',2),
(4,'Lapin', 'M', '2020-07-01', 'Jeannot', NULL, 2);