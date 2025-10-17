# Progetto Basi di Dati – Cibora (A.A. 2023/2024)

Questo progetto è stato sviluppato nell’ambito del corso di **Basi di Dati** presso l’**Università degli Studi di Torino**.  
L’obiettivo è la **progettazione e implementazione completa** di una base di dati relazionale per **Cibora**, un innovativo servizio di *food delivery* che gestisce utenti, ristoranti, rider e ordini.

---

## 📋 Indice
1. [Obiettivi del Progetto](#-obiettivi-del-progetto)
2. [Requisiti e Modellazione](#-requisiti-e-modellazione)
3. [Progettazione del Database](#-progettazione-del-database)
4. [Script SQL e Struttura del Repository](#-script-sql-e-struttura-del-repository)
5. [Autori](#-autori)
6. [Bibliografia](#-bibliografia)

---

## 🎯 Obiettivi del Progetto
- Modellare un sistema *food delivery* per la gestione di:
  - **Utenti** con borsellino elettronico, codici sconto e abbonamento premium  
  - **Ristoranti** con menù, categorie, recensioni e status *Top Partner*  
  - **Riders** con posizione GPS, stato operativo e mezzo di trasporto  
  - **Ordini**, *chat* e recensioni tra utenti, rider e ristoranti
- Realizzare l’intera pipeline di sviluppo di una base dati:
  1. **Progettazione concettuale** – modello E-R con business rules  
  2. **Progettazione logica** – schema relazionale ottimizzato  
  3. **Implementazione SQL** – script DDL, DML e test di vincoli
- Dimostrare la coerenza e la correttezza del modello attraverso operazioni di:
  - Inserimento, aggiornamento e cancellazione  
  - Gestione dei vincoli di integrità referenziale  
  - Verifica di consistenza dei dati

---

## Requisiti e Modellazione

### Requisiti principali
- Gli **utenti** possono registrarsi, ricaricare il proprio borsellino e ordinare piatti.
- I **ristoranti** appartengono a una o più categorie, offrono piatti e ricevono recensioni.
- I **rider** sono assegnati agli ordini in base alla distanza minima e al tipo di mezzo.
- Gli **ordini** possono essere annullati, recensiti o oggetto di reclamo tramite chat.
- I **Top Partner** sono ristoranti con valutazioni eccellenti e servizio affidabile.
- Si aggiornano mensilmente classifiche come:
  - Rider più veloci
  - Cibi più popolari
  - Ristoranti con più recensioni positive
  - Clienti con maggiore spesa totale

### Schema E-R e regole principali
- Inclusione di **generalizzazioni** per:
  - *Rider* (stato e mezzo di trasporto)
  - *Ristorante* → *Top Partner*
  - *Ordine* → *Consegnato / Ritardo / Mancata consegna*
- Vincoli di integrità:
  1. Gli sconti non possono essere riutilizzati dallo stesso utente.
  2. I reclami sono ammessi solo su ordini passati.
  3. I ristoranti *Top Partner* devono rispettare soglie di qualità definite.
  4. Solo rider elettrici gestiscono ordini > 10 km di tragitto.
  5. Un utente può lasciare recensioni solo dopo la consegna.

---

## 🗂️ Progettazione del Database

### Struttura logica
- Entità principali:
  - `Utente`, `Ristorante`, `Piatto`, `Rider`, `Ordine`, `Chat`, `Recensione`, `Borsellino`
- Relazioni principali:
  - `SelezionaOrdine`, `OrdineAssegnato`, `ChatUtente`, `RecensioneRistorante`, `RecensioneRider`, ecc.
- Analisi delle ridondanze → mantenuta la ridondanza “Stelline” nel ristorante per migliorare le prestazioni
- Eliminazione generalizzazioni → accorpamento e creazione di tabelle distinte per *mezzo* e *stato del rider*

### Tavole e volumi stimati
- 5 000 utenti  
- 100 ristoranti (1 000 piatti totali)  
- 400 riders  
- 500 ordini medi  
- 1 000 recensioni totali  
- 5 000 ricariche borsellino  
- 300 applicazioni di sconto giornaliere

---

## Script SQL e Struttura del Repository

| File | Descrizione |
|------|--------------|
| **PROGETTO.sql** | Script DDL completo per la creazione di tutte le tabelle, chiavi primarie, esterne e vincoli di integrità. |
| **PROGETTO_DMLpop.sql** | Script DML di popolamento iniziale del database con dati coerenti (utenti, ristoranti, rider, ordini, ecc.). |
| **PROGETTO_Canc_Agg.sql** | Script di test per operazioni di cancellazione e aggiornamento al fine di verificare i vincoli referenziali. |
| **ProgDB_Pollano_Roberto.pdf** | Relazione progettuale completa: analisi requisiti, schema E-R, schema relazionale, tavola dei volumi e delle operazioni. |

📁 Struttura tipica del progetto:  
`Progetto_Cibora/`  
├── `PROGETTO.sql`  
├── `PROGETTO_DMLpop.sql`  
├── `PROGETTO_Canc_Agg.sql`  
└── `ProgDB_Pollano_Roberto.pdf`  

---

## 👥 Autori

Simone Pollano – 1068650 – simone.pollano593@edu.unito.it  
Kevin Roberto – 1085068 – kevin.roberto@edu.unito.it

---
