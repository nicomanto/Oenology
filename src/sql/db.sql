DROP INDEX IF EXISTS idx_dipendenti ON Dipendenti;
DROP VIEW IF EXISTS OrdineQuantita,SpeseTotali;
DROP TABLE IF EXISTS FornituraBottiglie, FornituraTappi, FornituraUva, TemiVino, Ospita,
                    Eventi, NegoziInterni, Spedizioni, Corrieri, Dettagli, Ordini,
                    Turni, Manutenzioni, Macchinari, Vigneti, BottiglieDiVino, Bottiglie,
                    Tappi, Vini, LineeProduttive, Dipendenti, Uva, TipiUva, Fornitori,
                    Aziende, Privati, Acquirenti, Informazioni, Indirizzi;
                    
CREATE TABLE Indirizzi (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Via VARCHAR(190) NOT NULL,
    NumeroCivico INTEGER NOT NULL,
    Stato VARCHAR(190) NOT NULL,
    Provincia VARCHAR(190) DEFAULT NULL,
    Citta VARCHAR(190) DEFAULT NULL,
    CAP VARCHAR(5) DEFAULT NULL,

    PRIMARY KEY (Id)
);

CREATE TABLE Informazioni (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(190) NOT NULL,
    Telefono VARCHAR(11) NOT NULL,
    Email VARCHAR(190) NOT NULL,
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
    Cognome VARCHAR(190) NOT NULL,
    InformazioniAggiuntive INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Id) REFERENCES Acquirenti(Id),
    FOREIGN KEY (InformazioniAggiuntive) REFERENCES Informazioni(Id)
);

CREATE TABLE Aziende (
    PartitaIVA VARCHAR(190) NOT NULL,
    NumAcquirente INTEGER DEFAULT NULL,
    NomeReferente VARCHAR(190) NOT NULL,
    CognomeReferente VARCHAR(190) NOT NULL,
    InformazioniAggiuntive INTEGER NOT NULL,

    PRIMARY KEY (PartitaIVA),
    FOREIGN KEY (NumAcquirente) REFERENCES Acquirenti(Id),
    FOREIGN KEY (InformazioniAggiuntive) REFERENCES Informazioni(Id)
);

CREATE TABLE Fornitori (
    Id VARCHAR(190) NOT NULL,
    Tipologia ENUM('Uva','Tappo','Bottiglia') NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Id) REFERENCES Aziende(PartitaIVA)
);

CREATE TABLE TipiUva (
    Nome VARCHAR(190) NOT NULL,
    Colore VARCHAR(190) NOT NULL,

    PRIMARY KEY (Nome)
);

CREATE TABLE Uva (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    TipoUva VARCHAR(190) NOT NULL,
    Fornitore VARCHAR(190) NOT NULL,
    Annata INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Fornitore) REFERENCES Fornitori(Id),
    FOREIGN KEY (TipoUva) REFERENCES TipiUva(Nome)
);

CREATE TABLE Dipendenti (
    CodiceFiscale VARCHAR(16) NOT NULL,
    Nome VARCHAR(190) NOT NULL,
    Cognome VARCHAR(190) NOT NULL,
    Referente VARCHAR(16),

    PRIMARY KEY (CodiceFiscale),
    FOREIGN KEY (Referente) REFERENCES Dipendenti(CodiceFiscale)
);

CREATE TABLE LineeProduttive (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Nome ENUM('ProduzioneVino','Imbottigliamento','MagazzinoBianco', 'MagazzinoRosso', 'MagazzinoSpumante', 'MagazzinoRosato') NOT NULL,
    Direttore VARCHAR (190) NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Direttore) REFERENCES Dipendenti(CodiceFiscale)
);

CREATE TABLE Vini (
    Nome VARCHAR(190) NOT NULL,
    GradazioneAlcolica TINYINT NOT NULL,
    TempoFermentazione TINYINT NOT NULL,
    StatoProduzione BOOLEAN NOT NULL,
    Uva INTEGER NOT NULL,
    Classificazione ENUM('DOC','IGT','DOCG') DEFAULT NULL,

    PRIMARY KEY (Nome),
    FOREIGN KEY (Uva) REFERENCES Uva(Id)
);

CREATE TABLE Tappi (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Forma VARCHAR(190),
    Materiale VARCHAR(190),
    Quantita INTEGER,
    Fornitore VARCHAR(190) NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Fornitore) REFERENCES Fornitori(Id),
    UNIQUE (Forma, Materiale)
);

CREATE TABLE Bottiglie (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Capacita INTEGER NOT NULL,
    Colore VARCHAR(190),
    Quantita INTEGER NOT NULL,
    Fornitore VARCHAR(190) NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Fornitore) REFERENCES Fornitori(Id),
    UNIQUE (Capacita, Colore)
);

CREATE TABLE BottiglieDiVino (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Vino VARCHAR(190) NOT NULL,
    Annata  INTEGER NOT NULL,
    Prezzo FLOAT NOT NULL,
    NumBottiglieVendute INTEGER,
    NumBottiglieMagazzino INTEGER,
    NumBottiglieProdotte INTEGER,
    IdTappo INTEGER,
    IdBottiglia INTEGER,
    IdMagazzino INTEGER,

    PRIMARY KEY(Id),
    FOREIGN KEY (Vino) REFERENCES Vini(Nome),
    FOREIGN KEY (IdTappo) REFERENCES Tappi(Id),
    FOREIGN KEY (IdBottiglia) REFERENCES Bottiglie(Id),
    FOREIGN KEY (IdMagazzino) REFERENCES LineeProduttive(Id),
    UNIQUE (Vino, Annata)
);

CREATE TABLE Vigneti (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Indirizzo INTEGER NOT NULL,
    TipoUva VARCHAR(190) NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Indirizzo) REFERENCES Indirizzi(Id),
    FOREIGN KEY (TipoUva) REFERENCES TipiUva(Nome)
);

CREATE TABLE Macchinari (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(190) NOT NULL,
    DataProssimaManutenzione DATE NOT NULL,
    DataAcquisto DATE NOT NULL,
    LineaProduttiva INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (LineaProduttiva) REFERENCES LineeProduttive(Id)
);

CREATE TABLE Manutenzioni (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Macchinario INTEGER NOT NULL,
    Azienda VARCHAR(190) NOT NULL,
    Costo INTEGER NOT NULL,
    Data DATE NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Macchinario) REFERENCES Macchinari(Id),
    FOREIGN KEY (Azienda) REFERENCES Aziende(PartitaIVA)
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

CREATE TABLE Dettagli (
    Ordine INTEGER NOT NULL,
    BottigliaDiVino INTEGER NOT NULL,
    QuantitaBottiglie INTEGER NOT NULL,

    PRIMARY KEY (Ordine, BottigliaDiVino),
    FOREIGN KEY (Ordine) REFERENCES Ordini(Id),
    FOREIGN KEY (BottigliaDiVino) REFERENCES BottiglieDiVino(Id)
);

CREATE TABLE Corrieri (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(190) NOT NULL,

    PRIMARY KEY (Id)
);

CREATE TABLE Spedizioni (
    Ordine INTEGER NOT NULL,
    Corriere INTEGER NOT NULL,
    DataSpedizione DATE DEFAULT NULL,
    DataConsegna DATE DEFAULT NULL,
    Prezzo FLOAT NOT NULL,

    PRIMARY KEY (Ordine, Corriere),
    FOREIGN KEY (Ordine) REFERENCES Ordini(Id),
    FOREIGN KEY (Corriere) REFERENCES Corrieri(Id)
);

CREATE TABLE NegoziInterni (
    Id VARCHAR(190) NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY (Id) REFERENCES Aziende(PartitaIVA)
);

CREATE TABLE Eventi (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    Titolo VARCHAR(190),
    Edizione INTEGER NOT NULL,

    PRIMARY KEY (Id),
    UNIQUE (Titolo, Edizione)
);

CREATE TABLE Ospita (
    Evento INTEGER NOT NULL,
    Negozio VARCHAR(190) NOT NULL,
    Data DATE NOT NULL,

    PRIMARY KEY (Evento, Negozio),
    FOREIGN KEY (Evento) REFERENCES Eventi(Id),
    FOREIGN KEY (Negozio) REFERENCES NegoziInterni(Id)
);

CREATE TABLE TemiVino (
    Vino VARCHAR(190) NOT NULL,
    Evento INTEGER NOT NULL,
	
    PRIMARY KEY (Vino, Evento),
    FOREIGN KEY (Vino) REFERENCES Vini(Nome),
    FOREIGN KEY (Evento) REFERENCES Eventi(Id)
);

CREATE TABLE FornituraUva (
    Uva INTEGER NOT NULL,
    DataAcquisto DATE NOT NULL,
    Prezzo FLOAT NOT NULL,
    Quantita INTEGER NOT NULL,

    PRIMARY KEY (Uva, DataAcquisto),
    FOREIGN KEY (Uva) REFERENCES Uva(Id)
);

CREATE TABLE FornituraTappi (
    Tappo INTEGER NOT NULL,
    DataAcquisto DATE NOT NULL,
    Prezzo FLOAT NOT NULL,
    Quantita INTEGER NOT NULL,

    PRIMARY KEY (Tappo, DataAcquisto),
    FOREIGN KEY (Tappo) REFERENCES Tappi(Id)
);

CREATE TABLE FornituraBottiglie (
    Bottiglia INTEGER NOT NULL,
    DataAcquisto DATE NOT NULL,
    Prezzo FLOAT NOT NULL,
    Quantita INTEGER NOT NULL,

    PRIMARY KEY (Bottiglia, DataAcquisto),
    FOREIGN KEY (Bottiglia) REFERENCES Bottiglie(Id)
);

CREATE INDEX idx_dipendenti ON Dipendenti(CodiceFiscale)
