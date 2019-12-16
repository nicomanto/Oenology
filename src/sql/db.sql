CREATE TABLE BottigliaDiVino (
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
    FOREIGN KEY (Vino) REFERENCES Vino(Nome),
    FOREIGN KEY (IdTappo) REFERENCES Tappi(Id),
    FOREIGN KEY (IdBottiglia) REFERENCES Bottiglia(Id),
    FOREIGN KEY (IdMagazzino) REFERENCES LineeProduttive(Id)
);

CREATE TABLE Vini (
    Nome VARCHAR(255) NOT NULL,
    GradazioneAlcolica TINYINTEGER NOT NULL,
    TempoFermentazione TINYINTEGER NOT NULL,
    StatoProduzione BOOLEAN NOT NULL,
    TipologiaUva INTEGER NOT NULL,
    IdProduzione INTEGER NOT NULL,

    PRIMARY KEY (Nome),
    FOREIGN KEY TipologiaUva REFERENCES Uva(Id),
    FOREIGN KEY IdProduzione REFERENCES LineeProduttive(Id)
);

CREATE TABLE Uva (
    Id INTEGER NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Colore VARCHAR(255) NOT NULL,

    PRIMARY KEY (Id),
);

CREATE TABLE Vigna (
    Id INTEGER NOT NULL,
    Tipologia INTEGER NOT NULL,
    DataPiantagione DATE NOT NULL,
    VignetoDiAppartenenza INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY Tipologia REFERENCES Uva(Id),
    FOREIGN KEY VignetoDiAppartenenza REFERENCES Vigneti(Id)
);

CREATE TABLE Tappo (
    Id INTEGER NOT NULL,
    Forma VARCHAR(255),
    Materiale VARCHAR(255),
    Quantita INTEGER,
    Prezzo INTEGER NOT NULL,
    Fornitore INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY Fornitore REFERENCES Fornitori(Id)
);

CREATE TABLE Bottiglia (
    Id INTEGER NOT NULL,
    Capacita INTEGER NOT NULL,
    Colore VARCHAR(255),
    Quantita INTEGER NOT NULL,
    Prezzo INTEGER NOT NULL,
    Fornitore INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY Fornitore REFERENCES Fornitori(Id)
);

CREATE TABLE Fornitori (
    Id INTEGER NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Tipologia VARCHAR(255) NOT NULL,
    PartitaIVA VARCHAR(255) NOT NULL,

    PRIMARY KEY (Id),
    CHECK (Tipologia = 'Uva' OR Tipologia = 'Tappo' OR Tipologia = 'Bottiglia')
);

CREATE TABLE LineeProduttive (
    Id INTEGER NOT NULL,
    Nome VARCHAR (255) NOT NULL,
    Direttore VARCHAR (255) NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY Direttore REFERENCES Dipendenti(CodiceFiscale)
);

CREATE TABLE Macchinari (
    Id INTEGER NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    DataProssimaManutenzione DATE NOT NULL,
    UltimaManutenzione INTEGER NOT NULL,
    DataAcquisto DATE NOT NULL,
    LineaProduttiva INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY LineaProduttiva REFERENCES LineeProduttive(Id),
    FOREIGN KEY UltimaManutenzione REFERENCES Manutenzione(Id)
);

CREATE TABLE Manutenzione (
    Id INTEGER NOT NULL,
    Macchinario INTEGER NOT NULL,
    Azienda VARCHAR(255) NOT NULL,
    Costo INTEGER NOT NULL,
    Data DATE NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY Macchinario REFERENCES Macchinari(Id),
    FOREIGN KEY Azienda REFERENCES AziendeManutenzione(Id)
);

CREATE TABLE AziendeManutenzione (
    Id INTEGER NOT NULL,
    Nome VARCHAR(255),

    PRIMARY KEY (Id)
);

CREATE TABLE Dipendenti (
    CodiceFiscale VARCHAR(16) NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Cognome VARCHAR(255) NOT NULL,
    Stipendio INTEGER NOT NULL,
    Referente VARCHAR(16) NOT NULL,

    PRIMARY KEY (CodiceFiscale),
    FOREIGN KEY Referente REFERENCES Dipendenti(CodiceFiscale)
);

CREATE TABLE Turni (
    Dipendente VARCHAR(16) NOT NULL,
    InizioTurno DATETIME NOT NULL,
    FineTurno DATETIME NOT NULL,
    LineaProduttiva INTEGER NOT NULL.

    PRIMARY KEY Dipendente REFERENCES Dipendenti(CodiceFiscale),
    FOREIGN KEY LineaProduttiva REFERENCES LineeProduttive(Id)
);

CREATE TABLE Ordine (
    Id INTEGER NOT NULL AUTO_INCREMENT,
    PrezzoTotale FLOAT NOT NULL,
    Data DATETIME DEFAULT CURRENT_TIMESTAMP,
    Acquirente INTEGER NOT NULL,

    PRIMARY KEY (Id),
    FOREIGN KEY Acquirente REFERENCES Acquirenti(Id),
);

CREATE TABLE Acquirenti (
    Id INTEGER NOT NULL,
    Nome VARCHAR(255) NOT NULL,
    Telefono VARCHAR(11) NOT NULL,
    Email VARCHAR(255) NOT NULL,
    IndirizzoSpedizione VARCHAR(255) NOT NULL,
    Tipologia VARCHAR(1), /*P/A*/

    PRIMARY KEY (Id),
    FOREIGN KEY IndirizzoSpedizione REFERENCES Indirizzi(Id),
);

CREATE TABLE Contenuto ( /*cambiare nome!! */
    Ordine INTEGER NOT NULL,
    Vino VARCHAR(255) NOT NULL,
    QuantitaBottiglie INTEGER NOT NULL

    PRIMARY KEY (Ordine),
    FOREIGN KEY Vino REFERENCES Vini(Id),
)