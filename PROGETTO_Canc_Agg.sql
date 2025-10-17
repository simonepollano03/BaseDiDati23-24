/*---CONTROLLO DEI VINCOLI DELLA TABELLA UTENTE---*/

--Visualizzazione della tabella UTENTE orginale
SELECT * FROM UTENTE;

UPDATE NomeTabella SET NomeAttributo = 'xyz' WHERE NomeAttributo = 'abc';


-- Modifica della chiave primaria 'B001' in 'B110'
UPDATE BORSELLINO SET ID_borsellino = 'B110' WHERE ID_borsellino = 'B001';

-- Verifica dei dati nella tabella UTENTE aggiornata
SELECT * FROM UTENTE;

/************************************************/

--Visualizzazione della tabella UTENTE
SELECT * FROM UTENTE;
select * from borsellino

-- Cancellazione della chiave primaria 'B002'
DELETE FROM BORSELLINO WHERE ID_borsellino = 'B002';

-- Verifica dei dati nella tabella UTENTE
SELECT * FROM UTENTE;

DELETE FROM NomeTabella WHERE NomeAttributo = 'xyz';


/*---CONTROLLO DEI VINCOLI DELLA TABELLA RISTORANTE---*/

--Visualizzazione della tabella PIATTO originale
SELECT * FROM PIATTO;

-- Modifica dell'indirizzo 'Via Lagrange 17' in 'Via Roma 33'
UPDATE RISTORANTE SET Indirizzo = 'Via Roma 33' WHERE Indirizzo = 'Via Lagrange 17';

-- Verifica dei dati nella tabella PIATTO aggiornata
SELECT * FROM PIATTO;
guaardares
select * from recensioni;
/************************************************/

--Visualizzazione della tabella PIATTO 
SELECT * FROM PIATTO;

-- Cancellazione della riga con indirizzo 'Via Spalato 131'
DELETE FROM RISTORANTE WHERE Indirizzo = 'Via Spalato 131';

-- Verifica dei dati nella tabella PIATTO
SELECT * FROM PIATTO;




/*---CONTROLLO DEI VINCOLI DELLA TABELLA RM1*/

--Visualizzazione della tabella RM1 orginale
SELECT * FROM RM1;

-- Modifica del codice 'R1551' in 'R2222'
UPDATE RIDER SET Codice = 'R2222' WHERE Codice = 'R1551';

-- Verifica dei dati nella tabella RM2
SELECT * FROM RM1;

/************************************************/

--Visualizzazione della tabella RM1 
SELECT * FROM RM1;

-- Cancellazione della riga con codice 'R1562'
DELETE FROM RIDER WHERE Codice = 'R1562';

-- Verifica dei dati nella tabella RM1 
SELECT * FROM RM1;
select * from RIDER
