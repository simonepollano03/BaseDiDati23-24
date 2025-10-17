INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B001', 'Contanti', 34.50, 50);
INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B002', 'Carta', 82.30, 100);
INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B003', 'Contanti', 0, 15);
INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B004', 'Contanti', 45.5, 100);
INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B005', 'Satispay', 31, 24);
INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B006', 'Carta', 10.35, 30.44);
INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B007', 'Carta', 34.5, 50);
INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B008', 'Contanti', 10.1, 40);
INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B009', 'Carta', 1.10, NULL);
INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B010', 'Contanti', 69.90, 90.69);
INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B011', 'Satispay', 100.50, 140);
INSERT INTO BORSELLINO(ID_borsellino, MetodoPagamento, Saldo, SpeseTotali) VALUES ('B012', 'Satispay', 12.45, NULL);

INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('simonepollano@gmail.com', '+393664726653', 'Simone', 'SimoneCibora', 'B001');
INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('kevinroberto@gmail.com', '+393313204101', 'Kevin', 'Kevin03', 'B002');
INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('manuelasaccone@outlook.it', '+393478659584', 'Manuela', 'eL5969%', 'B003');
INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('giovannipirone@libero.it', '+393804376403', 'Giovanni', '0U:v1+4', 'B004');
INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('michaelgibellato@hotmail.com', '+393331146194', 'Michael', 'tb6N49~', 'B005');
INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('stivendedja@yahoo.it', '+393425705434', 'Stiven', 'h61C3?H', 'B006');
INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('beabibi04@gmail.com', '+393473336962', 'Beatrice', 'p|2P913', 'B007');
INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('riccardosaccone27@outlook.it', '+393342525024', 'Riccardo', 'JOt_191skls_', 'B008');
INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('luca.pollano65@yahoo.it', '+393316200163', 'Luca', '@=733O8zr', 'B009');
INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('peter.parker@spiderman.com', '+393496302231', 'Peter', 'm=U~331x]', 'B010');
INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('giulia.cavicchia402@hotmail.com', '+393461169331', 'Giulia', 'tA5)6693', 'B011');
INSERT INTO UTENTE(Email,Telefono, Nome, Password, Borsellino) 
			VALUES ('zuccarello.sara04@outlook.it', '+393280147464', 'Sara', 'u2,c5X4', 'B012');

INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Via piave 37', 'simonepollano@gmail.com');
INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Via Duomo 97', 'kevinroberto@gmail.com');
INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Viale Ippocrate 66', 'manuelasaccone@outlook.it');
INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Via Corio 58', 'giovannipirone@libero.it');
INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Via Enrico Fermi 78', 'michaelgibellato@hotmail.com');
INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Via delle Azalee 93', 'stivendedja@yahoo.it');
INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Piazza Pilastri 64', 'beabibi04@gmail.com');
INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Via Vicenza 65', 'riccardosaccone27@outlook.it');
INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Via San Pietro Ad Aram 36', 'luca.pollano65@yahoo.it');
INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Via Vipacco 54', 'peter.parker@spiderman.com');
INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Via torino 4/c', 'giulia.cavicchia402@hotmail.com');
INSERT INTO RECAPITO(Indirizzo, Utente) VALUES ('Via torino 6', 'zuccarello.sara04@outlook.it');

INSERT INTO SCONTO (Codice) VALUES ('PRIMOACQUISTO');
INSERT INTO SCONTO (Codice) VALUES ('IceIce'); --gelati
INSERT INTO SCONTO (Codice) VALUES ('Hamburgerdays'); --hamburger
INSERT INTO SCONTO (Codice) VALUES ('Black Friday');
INSERT INTO SCONTO (Codice) VALUES ('pOKeY'); --pokè
INSERT INTO SCONTO (Codice) VALUES ('Supremesushi'); --sushi
INSERT INTO SCONTO (Codice) VALUES ('Italiandays'); --cibo italiano
INSERT INTO SCONTO (Codice) VALUES ('Hola Mexico');-- cibo messicano

INSERT INTO INSERIMENTO(Utente, Sconto) VALUES ('simonepollano@gmail.com', 'PRIMOACQUISTO');
INSERT INTO INSERIMENTO(Utente, Sconto) VALUES ('kevinroberto@gmail.com', 'PRIMOACQUISTO');
INSERT INTO INSERIMENTO(Utente, Sconto) VALUES ('manuelasaccone@outlook.it', 'Hamburgerdays');
INSERT INTO INSERIMENTO(Utente, Sconto) VALUES ('michaelgibellato@hotmail.com', 'pOKeY');
INSERT INTO INSERIMENTO(Utente, Sconto) VALUES ('stivendedja@yahoo.it', 'Italiandays');
INSERT INTO INSERIMENTO(Utente, Sconto) VALUES ('beabibi04@gmail.com', 'IceIce');
INSERT INTO INSERIMENTO(Utente, Sconto) VALUES ('riccardosaccone27@outlook.it', 'Italiandays');
INSERT INTO INSERIMENTO(Utente, Sconto) VALUES ('giulia.cavicchia402@hotmail.com', 'Black Friday');
INSERT INTO INSERIMENTO(Utente, Sconto) VALUES ('zuccarello.sara04@outlook.it', 'IceIce');

INSERT INTO ORDINE(OraPartenza, StatoOrdine, Utente, Sconto) 
			VALUES ('2024-05-31 23:05:00', 'Ritardo', 'simonepollano@gmail.com', 'PRIMOACQUISTO');
INSERT INTO ORDINE(OraPartenza, StatoOrdine, Utente, Sconto) 
			VALUES ('2024-09-11 15:30:50', 'Consegnato', 'kevinroberto@gmail.com', 'PRIMOACQUISTO');
INSERT INTO ORDINE(OraPartenza, StatoOrdine, Utente, Sconto) 
			VALUES ('2024-04-30 18:15:20', 'Mancata consegna', 'manuelasaccone@outlook.it', 'Hamburgerdays');
INSERT INTO ORDINE(OraPartenza, StatoOrdine, Utente, Sconto) 
			VALUES ('2024-04-15 12:00:00', 'Consegnato', 'michaelgibellato@hotmail.com', 'pOKeY');
INSERT INTO ORDINE(OraPartenza, StatoOrdine, Utente, Sconto) 
			VALUES ('2024-10-10 16:01:45', 'Consegnato', 'stivendedja@yahoo.it', 'Italiandays');
INSERT INTO ORDINE(OraPartenza, StatoOrdine, Utente, Sconto) 
			VALUES ('2024-11-16 18:50:00', 'Ritardo', 'beabibi04@gmail.com', 'IceIce');
INSERT INTO ORDINE(OraPartenza, StatoOrdine, Utente, Sconto) 
			VALUES ('2024-09-24 21:00:00', 'Consegnato', 'riccardosaccone27@outlook.it', 'Italiandays');
INSERT INTO ORDINE(OraPartenza, StatoOrdine, Utente, Sconto) 
			VALUES ('2024-08-15 13:11:12', 'Consegnato', 'giulia.cavicchia402@hotmail.com', 'Black Friday');
INSERT INTO ORDINE(OraPartenza, StatoOrdine, Utente, Sconto) 
			VALUES ('2024-02-19 09:10:00', 'Mancata consegna', 'zuccarello.sara04@outlook.it', 'IceIce');

INSERT INTO ANNULLAMENTO(ID_annullamento, Data, Causa, Ordine) 
			VALUES ('An01', '2024-04-30', 'Maltempo', '2024-04-30 18:15:20');
INSERT INTO ANNULLAMENTO(ID_annullamento, Data, Causa, Ordine) 
			VALUES ('An02', '2024-02-19', 'Incidente stradale', '2024-02-19 09:10:00');

INSERT INTO CONSEGNATO(Ordine, OraArrivo, Mancia) VALUES ('2024-09-11 15:30:50', '15:45:00', 3);
INSERT INTO CONSEGNATO(Ordine, OraArrivo, Mancia) VALUES ('2024-04-15 12:00:00', '12:15:00', NULL);
INSERT INTO CONSEGNATO(Ordine, OraArrivo, Mancia) VALUES ('2024-10-10 16:01:45', '16:10:50', 1.50);
INSERT INTO CONSEGNATO(Ordine, OraArrivo, Mancia) VALUES ('2024-09-24 21:00:00', '21:29:50', 0.50);
INSERT INTO CONSEGNATO(Ordine, OraArrivo, Mancia) VALUES ('2024-08-15 13:11:12', '13:25:30', NULL);

INSERT INTO RISTORANTE(Indirizzo, Nome, Categoria, ImmagineProfilo, CostoSpedizione, Descrizione, Stelline) 
	  VALUES ('Via Lagrange 17', 'La Romana', 'Gelaterie', 'Immagine profilo:...', 3.99, 'Questo ristorante è...', '5'); 
INSERT INTO RISTORANTE(Indirizzo, Nome, Categoria, ImmagineProfilo, CostoSpedizione, Descrizione, Stelline) 
      VALUES ('Via delle Viole 32', 'McDonalds', 'Fast food', 'Immagine profilo:...', 1.34, 'Questo ristorante è...', '4.2');
INSERT INTO RISTORANTE(Indirizzo, Nome, Categoria, ImmagineProfilo, CostoSpedizione, Descrizione, Stelline) 
      VALUES ('Via Giulio Camuzzoni 51', 'Pokè House', 'Cibo salutare', 'Immagine profilo:...', 3.00, 'Questo ristorante è...', '3.3');
INSERT INTO RISTORANTE(Indirizzo, Nome, Categoria, ImmagineProfilo, CostoSpedizione, Descrizione, Stelline) 
      VALUES ('Strada Provinciale 65 97', 'Kinshi', 'Cibo giapponese', 'Immagine profilo:...', 3.25, 'Questo ristorante è...', '2');
INSERT INTO RISTORANTE(Indirizzo, Nome, Categoria, ImmagineProfilo, CostoSpedizione, Descrizione, Stelline) 
	  VALUES ('Via Nolana 47', 'Olive Garden', 'Cibo italiano', 'Immagine profilo:...', 1.50, 'Questo ristorante è...', '1');
INSERT INTO RISTORANTE(Indirizzo, Nome, Categoria, ImmagineProfilo, CostoSpedizione, Descrizione, Stelline) 
	  VALUES ('Via Spalato 131', 'Taco Bell', 'Cibo messicano', 'Immagine profilo:...', 0.90, 'Questo ristorante è...', '3.5');


INSERT INTO PIATTO(ID_piatto, Prezzo, Immagine, Popolarità, Sconto, ListaAppartenenza, Titolo, Ristorante)
	   VALUES ('P1111', 5.50, 'Immagine gelato al pistacchio', 'Molto popolare', NULL, 'Gelati', 'Pistacchio', 'Via Lagrange 17');
INSERT INTO PIATTO(ID_piatto, Prezzo, Immagine, Popolarità, Sconto, ListaAppartenenza, Titolo, Ristorante)
	   VALUES ('P2222', 7.00, 'Immagine hamburger', 'Molto popolare', 2, 'Hamburger', 'Cripsy McBacon', 'Via delle Viole 32');
INSERT INTO PIATTO(ID_piatto, Prezzo, Immagine, Popolarità, Sconto, ListaAppartenenza, Titolo, Ristorante)
	   VALUES ('P3333', 13.60, 'Immagine pokè', 'Mediamente popolare', NULL, 'Pokè', 'Hawaiian Passion', 'Via Giulio Camuzzoni 51'); 
INSERT INTO PIATTO(ID_piatto, Prezzo, Immagine, Popolarità, Sconto, ListaAppartenenza, Titolo, Ristorante)
	   VALUES ('P4444', 25, 'Immagine sushi', 'Molto popolare', 3.30, 'Sushi', 'Tris di sashimi', 'Strada Provinciale 65 97');
INSERT INTO PIATTO(ID_piatto, Prezzo, Immagine, Popolarità, Sconto, ListaAppartenenza, Titolo, Ristorante)
	   VALUES ('P5555', 15.30, 'Immagine lasagna', 'Molto popolare', NULL, 'Cibo italiano', 'Lasagna al sugo', 'Via Nolana 47'); 
INSERT INTO PIATTO(ID_piatto, Prezzo, Immagine, Popolarità, Sconto, ListaAppartenenza, Titolo, Ristorante)
	   VALUES ('P6666', 10.00, 'Immagine tacos', 'Poco popolare', NULL, 'Cibo Messicano', 'Mex tex tacos', 'Via Spalato 131'); 
			
INSERT INTO SCELTAPIATTO(Ordine, Piatto) VALUES ('2024-05-31 23:05:00', 'P1111');
INSERT INTO SCELTAPIATTO(Ordine, Piatto) VALUES ('2024-09-11 15:30:50', 'P1111');
INSERT INTO SCELTAPIATTO(Ordine, Piatto) VALUES ('2024-04-30 18:15:20', 'P3333');
INSERT INTO SCELTAPIATTO(Ordine, Piatto) VALUES ('2024-04-15 12:00:00', 'P4444');
INSERT INTO SCELTAPIATTO(Ordine, Piatto) VALUES ('2024-10-10 16:01:45', 'P2222'); 
INSERT INTO SCELTAPIATTO(Ordine, Piatto) VALUES ('2024-11-16 18:50:00', 'P6666');
INSERT INTO SCELTAPIATTO(Ordine, Piatto) VALUES ('2024-09-24 21:00:00', 'P3333');
INSERT INTO SCELTAPIATTO(Ordine, Piatto) VALUES ('2024-08-15 13:11:12', 'P5555');
INSERT INTO SCELTAPIATTO(Ordine, Piatto) VALUES ('2024-02-19 09:10:00', 'P6666');

INSERT INTO ALLERGENI(NomeLista) VALUES ('Gelato');
INSERT INTO ALLERGENI(NomeLista) VALUES ('Hamburger');
INSERT INTO ALLERGENI(NomeLista) VALUES ('Pokè');
INSERT INTO ALLERGENI(NomeLista) VALUES ('Sushi');
INSERT INTO ALLERGENI(NomeLista) VALUES ('Lasagna');
INSERT INTO ALLERGENI(NomeLista) VALUES ('Tacos');

INSERT INTO INFOALLERGENI(Piatto, Allergeni) VALUES ('P1111', 'Gelato');
INSERT INTO INFOALLERGENI(Piatto, Allergeni) VALUES ('P2222', 'Hamburger');
INSERT INTO INFOALLERGENI(Piatto, Allergeni) VALUES ('P3333', 'Pokè');
INSERT INTO INFOALLERGENI(Piatto, Allergeni) VALUES ('P4444', 'Sushi');
INSERT INTO INFOALLERGENI(Piatto, Allergeni) VALUES ('P5555', 'Lasagna');
INSERT INTO INFOALLERGENI(Piatto, Allergeni) VALUES ('P6666', 'Tacos');

INSERT INTO INGREDIENTI(NomeLista) VALUES ('Gelato');
INSERT INTO INGREDIENTI(NomeLista) VALUES ('Hamburger');
INSERT INTO INGREDIENTI(NomeLista) VALUES ('Pokè');
INSERT INTO INGREDIENTI(NomeLista) VALUES ('Sushi');
INSERT INTO INGREDIENTI(NomeLista) VALUES ('Lasagna');
INSERT INTO INGREDIENTI(NomeLista) VALUES ('Tacos');

INSERT INTO INFOINGREDIENTI(Piatto, Ingredienti) VALUES ('P1111', 'Gelato');
INSERT INTO INFOINGREDIENTI(Piatto, Ingredienti) VALUES ('P2222', 'Hamburger');
INSERT INTO INFOINGREDIENTI(Piatto, Ingredienti) VALUES ('P3333', 'Pokè');
INSERT INTO INFOINGREDIENTI(Piatto, Ingredienti) VALUES ('P4444', 'Sushi');
INSERT INTO INFOINGREDIENTI(Piatto, Ingredienti) VALUES ('P5555', 'Lasagna');
INSERT INTO INFOINGREDIENTI(Piatto, Ingredienti) VALUES ('P6666', 'Tacos');

INSERT INTO RIDER(Codice, NumConsegne, Velocità, GPS, Stato) VALUES ('R1551', 10, 40, 'Coordinate GPS:...', 'Fuori servizio');
INSERT INTO RIDER(Codice, NumConsegne, Velocità, GPS, Stato) VALUES ('R1562', 27, 25, 'Coordinate GPS:...', 'Disponibile');
INSERT INTO RIDER(Codice, NumConsegne, Velocità, GPS, Stato) VALUES ('R1585', 100, 50, 'Coordinate GPS:...', 'Disponibile');
INSERT INTO RIDER(Codice, NumConsegne, Velocità, GPS, Stato) VALUES ('R1533', 3, 25.5, 'Coordinate GPS:...', 'Occupato');
INSERT INTO RIDER(Codice, NumConsegne, Velocità, GPS, Stato) VALUES ('R1544', 14, 33.6, 'Coordinate GPS:...', 'Occupato');
INSERT INTO RIDER(Codice, NumConsegne, Velocità, GPS, Stato) VALUES ('R1600', 20, 15, 'Coordinate GPS:...', 'Disponibile');

INSERT INTO RECENSIONI(Data, Commento, Valutazione, Rider, Ristorante) 
	   VALUES ('2024-09-11', 'Questo è un prodotto molto richiesto ma a mio parere per nulla buono ecc...', 2, 'R1551', 'Via Lagrange 17');
INSERT INTO RECENSIONI(Data, Commento, Valutazione, Rider, Ristorante) 
	   VALUES ('2024-04-15', NULL, 3, 'R1562', 'Strada Provinciale 65 97');
INSERT INTO RECENSIONI(Data, Commento, Valutazione, Rider, Ristorante) 
	   VALUES ('2024-09-24', NULL, 4, 'R1585', 'Via Giulio Camuzzoni 51');

INSERT INTO RECENSIONICONSEGNA(Consegnato, Recensioni) VALUES ('2024-09-1 15:30:50', '2024-09-11');
INSERT INTO RECENSIONICONSEGNA(Consegnato, Recensioni) VALUES ('2024-04-15 12:00:00', '2024-04-15');
INSERT INTO RECENSIONICONSEGNA(Consegnato, Recensioni) VALUES ('2024-09-24 21:00:00', '2024-09-24');
 
INSERT INTO TOPPARTNER(Ristorante, DataEntrata) VALUES ('Via Lagrange 17', '2024-05-30');
INSERT INTO TOPPARTNER(Ristorante, DataEntrata) VALUES ('Via delle Viole 32', '2024-01-25');  
INSERT INTO TOPPARTNER(Ristorante, DataEntrata) VALUES ('Via Nolana 47', '2024-02-17');

INSERT INTO CHAT(ID_chat, Data, Reclamo, Info, Utente, Ristorante, Rider) 
	   VALUES ('Ch101', '2024-04-15', NULL, 'Dove sei?', 'michaelgibellato@hotmail.com', 'Via Giulio Camuzzoni 51', 'R1562');
INSERT INTO CHAT(ID_chat, Data, Reclamo, Info, Utente, Ristorante, Rider) 
       VALUES ('Ch022', '2024-11-16', NULL, 'Hai trovato l indirizzo?', 'beabibi04@gmail.com', 'Via Lagrange 17', 'R1585');
INSERT INTO CHAT(ID_chat, Data, Reclamo, Info, Utente, Ristorante, Rider) 
	   VALUES ('Ch300', '2024-08-15', 'Reclamo:...', NULL, 'giulia.cavicchia402@hotmail.com', 'Via delle Viole 32', 'R1600');
INSERT INTO CHAT(ID_chat, Data, Reclamo, Info, Utente, Ristorante, Rider)
	   VALUES ('Ch365', '2024-02-19', NULL, 'Dove sei?', 'zuccarello.sara04@outlook.it', 'Via Spalato 131', 'R1600');

INSERT INTO CHATORDINI(Ordine, Chat) VALUES ('2024-08-15 13:11:12', 'Ch300');

INSERT INTO ORDINEASSEGNATO(Ordine, Rider, OraInizioConsegna, OraFineConsegna) 
       VALUES ('2024-05-31 23:05:00', 'R1551', '2024-05-31 23:15:00', '2024-05-31 23:45:00');
INSERT INTO ORDINEASSEGNATO(Ordine, Rider, OraInizioConsegna, OraFineConsegna) 
       VALUES ('2024-09-11 15:30:50', 'R1585', '2024-09-11 15:30:50', '2024-09-11 15:45:00');
INSERT INTO ORDINEASSEGNATO(Ordine, Rider, OraInizioConsegna, OraFineConsegna) 
       VALUES ('2024-04-30 18:15:20', 'R1533', '2024-04-30 18:27:00', NULL);
INSERT INTO ORDINEASSEGNATO(Ordine, Rider, OraInizioConsegna, OraFineConsegna) 
       VALUES ('2024-04-15 12:00:00', 'R1562', '2024-04-15 12:00:00', '2024-04-15 12:15:00');
INSERT INTO ORDINEASSEGNATO(Ordine, Rider, OraInizioConsegna, OraFineConsegna) 
       VALUES ('2024-10-10 16:01:45', 'R1562', '2024-10-10 16:01:45', '2024-10-10 16:10:50');
INSERT INTO ORDINEASSEGNATO(Ordine, Rider, OraInizioConsegna, OraFineConsegna) 
       VALUES ('2024-11-16 18:50:00', 'R1585', '2024-11-16 19:00:00', '2024-11-16 19:10:30');
INSERT INTO ORDINEASSEGNATO(Ordine, Rider, OraInizioConsegna, OraFineConsegna) 
       VALUES ('2024-09-24 21:00:00', 'R1544', '2024-09-24 21:00:00', '2024-09-24 21:29:50');
INSERT INTO ORDINEASSEGNATO(Ordine, Rider, OraInizioConsegna, OraFineConsegna) 
       VALUES ('2024-08-15 13:11:12', 'R1600', '2024-08-15 13:11:12', '2024-08-15 13:25:30');
INSERT INTO ORDINEASSEGNATO(Ordine, Rider, OraInizioConsegna, OraFineConsegna) 
       VALUES ('2024-02-19 09:10:00', 'R1600', '2024-02-19 09:10:00', NULL);

INSERT INTO BICI(Matricola) VALUES ('Bi03011');
INSERT INTO BICI(Matricola) VALUES ('Bi04055');

INSERT INTO RM1(Bici, Rider) VALUES ('Bi03011', 'R1551');
INSERT INTO RM1(Bici, Rider) VALUES ('Bi04055', 'R1562');

INSERT INTO BICIELETTRICA(Matricola) VALUES ('BiI20801');
INSERT INTO BICIELETTRICA(Matricola) VALUES ('BiI18001');

INSERT INTO RM2(BiciElettrica, Rider) VALUES ('BiI20801', 'R1585');
INSERT INTO RM2(BiciElettrica, Rider) VALUES ('BiI18001', 'R1533');

INSERT INTO MONOPATTINO(Matricola, KmPossibili) VALUES ('Mo34259', 100.50);
INSERT INTO MONOPATTINO(Matricola, KmPossibili) VALUES ('Mo52316', 30.25);

INSERT INTO RM3(Monopattino, Rider) VALUES ('Mo34259', 'R1544');
INSERT INTO RM3(Monopattino, Rider) VALUES ('Mo52316', 'R1600');