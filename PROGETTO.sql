CREATE TABLE BORSELLINO(
	ID_borsellino varchar(100) PRIMARY KEY,
	MetodoPagamento varchar(100), --(contanti,carta,satispay)
	Saldo decimal(10,2), 
	SpeseTotali decimal(10,2)
);


CREATE TABLE UTENTE(
	Email varchar(100) PRIMARY KEY,
	Telefono varchar(13),
	Nome varchar(100) NOT NULL,
	Password varchar(100) NOT NULL,
	Borsellino varchar(100),
		FOREIGN KEY (Borsellino) REFERENCES BORSELLINO(ID_borsellino)
			ON UPDATE CASCADE
			ON DELETE SET NULL
);

CREATE TABLE RECAPITO(
	Indirizzo varchar(100) PRIMARY KEY,
	Utente varchar(100) NOT NULL,
		FOREIGN KEY (Utente) REFERENCES UTENTE(Email)
			ON UPDATE CASCADE
			ON DELETE CASCADE
);

CREATE TABLE SCONTO(
	Codice varchar(100) PRIMARY KEY
);

CREATE TABLE INSERIMENTO(
	Utente varchar(100) NOT NULL,
	Sconto varchar(100) NOT NULL,
		FOREIGN KEY (Utente) REFERENCES UTENTE(Email)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
		FOREIGN KEY (Sconto) REFERENCES SCONTO(Codice)
			ON UPDATE NO ACTION
			ON DELETE SET NULL,
	PRIMARY KEY (Utente,Sconto)
);

CREATE TABLE ORDINE(
	OraPartenza timestamp PRIMARY KEY,
	StatoOrdine varchar(100) NOT NULL,
	Utente varchar(100) NOT NULL,
	Sconto varchar(100),
		FOREIGN KEY (Utente) REFERENCES UTENTE(Email)
			ON UPDATE CASCADE
			ON DELETE CASCADE,
		FOREIGN KEY (Sconto) REFERENCES SCONTO(Codice)
			ON UPDATE CASCADE
			ON DELETE SET NULL
);

CREATE TABLE ANNULLAMENTO(
	ID_annullamento varchar(100) PRIMARY KEY,
	Data timestamp NOT NULL,
	Causa varchar(100),
	Ordine timestamp NOT NULL,
		FOREIGN KEY (Ordine) REFERENCES ORDINE(OraPartenza)
			ON UPDATE CASCADE
			ON DELETE CASCADE
);

CREATE TABLE CONSEGNATO(
	Ordine timestamp PRIMARY KEY,
	OraArrivo time NOT NULL,
	Mancia decimal(5,2),
		FOREIGN KEY (Ordine) REFERENCES ORDINE(OraPartenza)
			ON UPDATE CASCADE
			ON DELETE CASCADE
);

CREATE TABLE PIATTO (
	ID_piatto varchar(100) PRIMARY KEY,
	Prezzo decimal(10,2) NOT NULL,
	Immagine varchar(255) NOT NULL,
	Popolarità varchar(100),
	Sconto decimal(5,2),
	ListaAppartenenza varchar(255),
	Titolo varchar(100)
);

CREATE TABLE SCELTAPIATTO (
	Ordine timestamp NOT null,
	Piatto varchar(100) NOT NULL,
	FOREIGN KEY (Ordine) REFERENCES ORDINE(OraPartenza)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (Piatto) REFERENCES PIATTO(ID_piatto)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	PRIMARY KEY (Ordine, Piatto)
);

CREATE TABLE ALLERGENI (
	NomeLista varchar(100) PRIMARY KEY
);

CREATE TABLE INFOALLERGENI (
	Piatto varchar(100) NOT NULL,
	Allergeni varchar(100) NOT NULL,
	FOREIGN KEY (Piatto) REFERENCES PIATTO(ID_piatto)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (Allergeni) REFERENCES ALLERGENI(NomeLista)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	PRIMARY KEY (Piatto, Allergeni)
);

CREATE TABLE INGREDIENTI (
	NomeLista varchar(100) PRIMARY KEY
);

CREATE TABLE INFOINGREDIENTI (
	Piatto varchar(100) NOT NULL,
	Ingredienti varchar(100) NOT NULL,
	FOREIGN KEY (Piatto) REFERENCES PIATTO(ID_piatto)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (Ingredienti) REFERENCES INGREDIENTI(NomeLista)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	PRIMARY KEY (Piatto, Ingredienti)

);

CREATE TABLE RECENSIONI (
	Data date PRIMARY KEY,
	Commento varchar(255),
	Valutazione int NOT NULL
);

CREATE TABLE RECENSIONICONSEGNA (
	Consegnato timestamp(2) PRIMARY KEY,
	Recensioni date,
	FOREIGN KEY (Consegnato) REFERENCES CONSEGNATO(Ordine)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (Recensioni) REFERENCES RECENSIONI(Data)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	UNIQUE (Recensioni)
);

CREATE TABLE RIDER (
	Codice varchar(100) PRIMARY KEY,
	NumConsegne int NOT NULL,
	Velocità float NOT NULL,
	GPS varchar(100),
	Stato varchar(100)
);

/*RECENSIONI-RECENSIONE RIDER-RIDER (uno a molti)
RIDER(Codice, Num-consegne, Velocità, GPS, Stato)
•	RECENSIONI(Rider*) referenzia RIDER(Codice)*/
ALTER TABLE RECENSIONI
	ADD COLUMN Rider varchar(100),
	ADD CONSTRAINT fk_rider_codice FOREIGN KEY (Rider) REFERENCES RIDER(Codice)
								   ON UPDATE CASCADE
								   ON DELETE SET NULL;

CREATE TABLE RISTORANTE (
	Indirizzo varchar(255) PRIMARY KEY,
	Nome varchar(100) NOT NULL, 
	Categoria varchar(100) NOT NULL, 
	ImmagineProfilo varchar(255), 
	CostoSpedizione decimal(3,2) NOT NULL, 
	Descrizione varchar(255) NOT NULL, 
	Stelline varchar(6) NOT NULL
);

/*RISTORANTE-PREPARAZIONE-PIATTO (uno a molti)
	In PIATTO viene inserito Ristorante
	PIATTO(Ristorante) referenzia RISTORANTE(Indirizzo)*/
ALTER TABLE PIATTO
	ADD COLUMN Ristorante varchar(100),
	ADD CONSTRAINT fk_ristorante_indirizzo 
				   FOREIGN KEY (Ristorante) REFERENCES RISTORANTE(Indirizzo)
										   ON UPDATE CASCADE 
										   ON DELETE SET NULL;

/*RECENSIONI-RECENSIONE RISTORANTE-RISTORANTE (uno a molti)
RISTORANTE(Indirizzo, Nome, Categoria, Immagine-profilo, 
           Costo-spedizione, Descrizione, Stelline)
	RECENSIONI(Ristorante*) referenzia RISTORANTE(Indirizzo)*/
ALTER TABLE RECENSIONI
	ADD COLUMN Ristorante varchar(100),
	ADD CONSTRAINT fk_recensioni_ristorante 
				   FOREIGN KEY (Ristorante) REFERENCES RISTORANTE(Indirizzo)
											ON UPDATE CASCADE
											ON DELETE CASCADE;

CREATE TABLE TOPPARTNER (
	Ristorante varchar(100) PRIMARY KEY,
	DataEntrata date NOT NULL,
	FOREIGN KEY (Ristorante) REFERENCES RISTORANTE(Indirizzo)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

CREATE TABLE CHAT (
	ID_chat varchar(100) PRIMARY KEY,
	Data date NOT NULL,
	Reclamo varchar(255),
	Info varchar(255),
	Utente varchar(100) NOT NULL,
	FOREIGN KEY (Utente) REFERENCES UTENTE(Email)
);

/*In CHAT viene inserito l’attributo Ristorante
CHAT(ID-chat, Data, Reclamo, Info, Utente, Ristorante*, …)
	CHAT(Ristorante) referenzia RISTORANTE(Indirizzo) */
ALTER TABLE CHAT
	ADD COLUMN Ristorante varchar(100),
	ADD CONSTRAINT fk_ristorante_indirizzo 
				   FOREIGN KEY (Ristorante) REFERENCES RISTORANTE(Indirizzo)
										   ON UPDATE CASCADE
										   ON DELETE SET NULL;

/*In CHAT viene inserito l’attributo Rider
CHAT(ID-chat, Data, Reclamo, Info, Utente, Ristorante*, Rider*)
	CHAT(Rider*) referenzia RIDER(Codice)*/
ALTER TABLE CHAT
	ADD COLUMN Rider varchar(100),
	ADD CONSTRAINT fk_rider_codice FOREIGN KEY (Rider) REFERENCES RIDER(Codice)
								   ON UPDATE CASCADE
								   ON DELETE SET NULL;
CREATE TABLE CHATORDINI (
	Ordine timestamp,
	Chat varchar(100),
	FOREIGN KEY (Ordine) REFERENCES ORDINE(OraPartenza)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (Chat) REFERENCES CHAT(ID_chat)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	PRIMARY KEY (Ordine, Chat),
	UNIQUE (Chat)
);

CREATE TABLE ORDINEASSEGNATO (
	Ordine timestamp,
	Rider varchar(100),
	OraInizioConsegna timestamp NOT NULL,
	OraFineConsegna timestamp,
	FOREIGN KEY (Ordine) REFERENCES ORDINE(OraPartenza)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (Rider) REFERENCES RIDER(Codice)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	PRIMARY KEY (Ordine, Rider)
);

CREATE TABLE BICI (
	Matricola varchar(100) PRIMARY KEY
);

CREATE TABLE RM1 (
	Bici varchar(100) NOT NULL,
	Rider varchar(100) NOT NULL,
	FOREIGN KEY (Bici) REFERENCES BICI(Matricola)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (Rider) REFERENCES RIDER(Codice)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	PRIMARY KEY (Bici, Rider)
);

CREATE TABLE BICIELETTRICA (
	Matricola varchar(100) PRIMARY KEY
);

CREATE TABLE RM2 (
	BiciElettrica varchar(100),
	Rider varchar(100),
	FOREIGN KEY (BiciElettrica) REFERENCES BICIELETTRICA(Matricola)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (Rider) REFERENCES RIDER(Codice)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	PRIMARY KEY (BiciElettrica, Rider)
);

CREATE TABLE MONOPATTINO (
	Matricola varchar(100) PRIMARY KEY,
	KmPossibili decimal(10, 4) NOT NULL
);

CREATE TABLE RM3 (
	Monopattino varchar(100),
	Rider varchar(100),
	FOREIGN KEY (Monopattino) REFERENCES MONOPATTINO(Matricola)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (Rider) REFERENCES RIDER(Codice)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	PRIMARY KEY (Monopattino, Rider)
);
