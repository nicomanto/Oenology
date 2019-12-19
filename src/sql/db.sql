SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS Informazioni, TipiUva, Uva, Dipendenti, LineeProduttive, Vini, Aziende, Fornitori,
                    Tappi, Bottiglie, BottiglieDiVino, Indirizzi, Vigneti, Vigne,
                    Macchinari, Manutenzione, Turni, Acquirenti, Ordini, Privati,
                    Dettagli, Corrieri, Spedizioni, NegoziInterni, Eventi, Ospita,
                    Partecipanti, TemiVino;
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE Indirizzi (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Via VARCHAR(255) NOT NULL,
    NumeroCivico INTEGER NOT NULL,
    Stato VARCHAR(255) NOT NULL,
    Provincia VARCHAR(255) DEFAULT NULL,
    Citta VARCHAR(255) DEFAULT NULL,
    CAP VARCHAR(5) DEFAULT NULL,

    PRIMARY KEY (Id)
);

CREATE TABLE Informazioni (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Telefono VARCHAR(11) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    Indirizzo INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Indirizzo) REFERENCES Indirizzi(Id)
);

CREATE TABLE Acquirenti (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    
    PRIMARY KEY (Id)
);

CREATE TABLE Privati (
    Id INTEGER NOT NULL,
    Cognome VARCHAR(255) NOT NULL,
    InformazioniAggiuntive INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Id) REFERENCES Acquirenti(Id),
    FOREIGN KEY (InformazioniAggiuntive) REFERENCES Informazioni(Id)
);

CREATE TABLE Aziende (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    NumAcquirente INTEGER DEFAULT NULL,
    PartitaIVA VARCHAR(255) NOT NULL,
    NomeReferente VARCHAR(255) NOT NULL,
    CognomeReferente VARCHAR(255) NOT NULL,
    InformazioniAggiuntive INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (NumAcquirente) REFERENCES Acquirenti(Id),
    FOREIGN KEY (InformazioniAggiuntive) REFERENCES Informazioni(Id)
);

CREATE TABLE Fornitori (
    Id INTEGER NOT NULL,
    Tipologia VARCHAR(255) NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Id) REFERENCES Aziende(Id),
    CHECK (Tipologia = 'Uva' OR Tipologia = 'Tappo' OR Tipologia = 'Bottiglia')
);

CREATE TABLE TipiUva (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Colore VARCHAR(255) NOT NULL,

    PRIMARY KEY (Id)
);

CREATE TABLE Uva (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    TipoUva INTEGER NOT NULL,
    Fornitore INTEGER NOT NULL,
    Annata INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Fornitore) REFERENCES Fornitori(Id),
    FOREIGN KEY (TipoUva) REFERENCES TipiUva(Id)
);

CREATE TABLE Dipendenti (
    CodiceFiscale VARCHAR(16) NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Cognome VARCHAR(255) NOT NULL,
    Referente VARCHAR(16),

    PRIMARY KEY (CodiceFiscale),
    FOREIGN KEY (Referente) REFERENCES Dipendenti(CodiceFiscale)
);

CREATE TABLE LineeProduttive (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Nome VARCHAR (255) NOT NULL,
    Direttore VARCHAR (255) NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Direttore) REFERENCES Dipendenti(CodiceFiscale)
);

CREATE TABLE Vini (
    Nome VARCHAR(255) NOT NULL,
    GradazioneAlcolica TINYINT NOT NULL,
    TempoFermentazione TINYINT NOT NULL,
    StatoProduzione BOOLEAN NOT NULL,
    IdProduzione INTEGER NOT NULL,
    Uva INTEGER NOT NULL,

    PRIMARY KEY (Nome),
    FOREIGN KEY (Uva) REFERENCES Uva(Id),
    FOREIGN KEY (IdProduzione) REFERENCES LineeProduttive(Id)
);

CREATE TABLE Tappi (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Forma VARCHAR(255),
    Materiale VARCHAR(255),
    Quantita INTEGER,
    Prezzo INTEGER NOT NULL,
    Fornitore INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Fornitore) REFERENCES Fornitori(Id)
);

CREATE TABLE Bottiglie (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Capacita INTEGER NOT NULL,
    Colore VARCHAR(255),
    Quantita INTEGER NOT NULL,
    Prezzo INTEGER NOT NULL,
    Fornitore INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Fornitore) REFERENCES Fornitori(Id)
);

CREATE TABLE BottiglieDiVino (
    Vino VARCHAR(255) NOT NULL,
    Annata  INTEGER NOT NULL,
    Prezzo FLOAT NOT NULL,
    Classificazione VARCHAR(4),
    NumBottiglieVendute INTEGER,
    NumBottiglieMagazzino INTEGER,
    NumBottiglieProdotte INTEGER,
    IdTappo INTEGER,
    IdBottiglia INTEGER,
    IdMagazzino INTEGER,

    PRIMARY KEY (Vino, Annata),
    FOREIGN KEY (Vino) REFERENCES Vini(Nome),
    FOREIGN KEY (IdTappo) REFERENCES Tappi(Id),
    FOREIGN KEY (IdBottiglia) REFERENCES Bottiglie(Id),
    FOREIGN KEY (IdMagazzino) REFERENCES LineeProduttive(Id)
);

CREATE TABLE Vigneti (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Indirizzo INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Indirizzo) REFERENCES Indirizzi(Id)
);

CREATE TABLE Vigne (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Tipologia INTEGER NOT NULL,
    DataPiantagione DATE NOT NULL,
    VignetoDiAppartenenza INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Tipologia) REFERENCES Uva(Id),
    FOREIGN KEY (VignetoDiAppartenenza) REFERENCES Vigneti(Id)
);

CREATE TABLE Macchinari (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    DataProssimaManutenzione DATE NOT NULL,
    DataAcquisto DATE NOT NULL,
    LineaProduttiva INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (LineaProduttiva) REFERENCES LineeProduttive(Id)
);

CREATE TABLE Manutenzione (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Macchinario INTEGER NOT NULL,
    Azienda INTEGER NOT NULL,
    Costo INTEGER NOT NULL,
    Data DATE NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Macchinario) REFERENCES Macchinari(Id),
    FOREIGN KEY (Azienda) REFERENCES Aziende(Id)
);


CREATE TABLE Turni (
    Dipendente VARCHAR(16) NOT NULL,
    InizioTurno DATETIME NOT NULL,
    FineTurno DATETIME NOT NULL,
    LineaProduttiva INTEGER NOT NULL,

    PRIMARY KEY (Dipendente, InizioTurno),
    FOREIGN KEY (Dipendente) REFERENCES Dipendenti(CodiceFiscale),
    FOREIGN KEY (LineaProduttiva) REFERENCES LineeProduttive(Id)
);

CREATE TABLE Ordini (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    PrezzoTotale FLOAT NOT NULL,
    Data DATETIME DEFAULT CURRENT_TIMESTAMP,
    Acquirente INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Acquirente) REFERENCES Acquirenti(Id)
);

CREATE TABLE Dettagli ( /*cambiare nome!! */
    Ordine INTEGER NOT NULL,
    Vino VARCHAR(255) NOT NULL,
    QuantitaBottiglie INTEGER NOT NULL,

    PRIMARY KEY (Ordine),
    FOREIGN KEY (Vino) REFERENCES Vini(Nome)
);

CREATE TABLE Corrieri (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,

    PRIMARY KEY (Id)
);

CREATE TABLE Spedizioni (
    Ordine INTEGER NOT NULL,
    Corriere INTEGER NOT NULL,
    DataSpedizione DATE NOT NULL,
    DataConsegna DATE,
    Prezzo FLOAT NOT NULL,

    PRIMARY KEY (Ordine, Corriere),
    FOREIGN KEY (Ordine) REFERENCES Ordini(Id),
    FOREIGN KEY (Corriere) REFERENCES Corrieri(Id)
);

CREATE TABLE NegoziInterni (
    Id INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Id) REFERENCES Aziende(Id)
);

CREATE TABLE Eventi (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Titolo VARCHAR(255),
    Edizione INTEGER NOT NULL,

    PRIMARY KEY (Id)
);

CREATE TABLE Ospita (
    Evento INTEGER NOT NULL,
    Negozio INTEGER NOT NULL,
    Date DATE NOT NULL,

    PRIMARY KEY (Evento, Negozio),
    FOREIGN KEY (Evento) REFERENCES Eventi(Id),
    FOREIGN KEY (Negozio) REFERENCES NegoziInterni(Id)
);

CREATE TABLE Partecipanti (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Cognome VARCHAR(255) NOT NULL,
    Eta INTEGER NOT NULL,
    Evento INTEGER NOT NULL,
    Negozio INTEGER NOT NULL,
    
    PRIMARY KEY (Id),
    FOREIGN KEY (Evento) REFERENCES Eventi(Id),
    FOREIGN KEY (Negozio) REFERENCES NegoziInterni(Id)
);

CREATE TABLE TemiVino (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Vino VARCHAR(255) NOT NULL,
    Evento INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Vino) REFERENCES Vini(Nome),
    FOREIGN KEY (Evento) REFERENCES Eventi(Id)
);