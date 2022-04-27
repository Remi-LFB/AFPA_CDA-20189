CREATE USER 'util1'@'%' IDENTIFIED BY 'util1pw';
GRANT ALL PRIVILEGES
ON papyrus.*
TO 'util1'@'%';

CREATE USER 'util2'@'%' IDENTIFIED BY 'util2pw';
GRANT SELECT
ON papyrus.*
TO 'util2'@'%';

CREATE USER 'util3'@'%' IDENTIFIED BY 'util3pw';
GRANT SELECT
ON papyrus.fournis
TO 'util3'@'%';