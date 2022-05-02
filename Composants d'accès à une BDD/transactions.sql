/*
1. La transaction n'aboutit pas.
2. Tout dépend des permissions accordées aux utilisateurs.
3. Non, la transaction n'est pas terminée.
4. Pour rendre la mise à jour permanente il faut ajouter l'instruction COMMIT.
5. Pour annuler la mise à jour il faut ajouter l'instruction ROLLBACK.
*/

/* Validation de la transaction */

START TRANSACTION;
SELECT nomfou FROM fournis WHERE numfou = 120;
UPDATE fournis SET nomfou = 'GROSBRIGAND' WHERE numfou = 120;
SELECT nomfou FROM fournis WHERE numfou = 120;
COMMIT;

/* Annulation de la transaction */

START TRANSACTION;
SELECT nomfou FROM fournis WHERE numfou = 120;
UPDATE fournis SET nomfou = 'GROSBRIGAND' WHERE numfou = 120;
SELECT nomfou FROM fournis WHERE numfou = 120;
ROLLBACK;