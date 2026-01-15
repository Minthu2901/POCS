CREATE TABLE eleve(
nom VARCHAR(255) PRIMARY KEY,
prenom VARCHAR(255) UNIQUE NOT NULL,
naissance DATE,
age INT,
CHECK (age >= 18)
);

-- copier le fichier dans /tmp/...
-- executer avec \i /tmp/... dans psql