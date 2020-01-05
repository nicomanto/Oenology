/*
 -Ogni query è stata fatta tenendo conto dell'aggiunta di ID per BottigliaDiVino come chiave primaria
 -Ogni query è da provare nel database perchè non sono sicuro della correttezza
 */
/*QUERY 1
 Bottiglia/e di vino più venduta/e dell'anno 2019 con la relativa quantita(Da vedere se è corretta, 
 si potrebbero usare le viste per rendere le cose più semplici)*/
SELECT
    Vini.Nome,
    Dettagli.BottigliaDiVino,
    SUM(Dettagli.QuantitaBottiglie) AS BottiglieVendute
FROM
    (
        SELECT
            Dettagli.*
        FROM
            Dettagli,
            Ordini
        WHERE
            DATE_FORMAT(Ordini.Data, '%Y') = '2019'
            AND Ordini.Id = Dettagli.Ordine
    ) AS Dettagli,
    BottiglieDiVino,
    Vini
WHERE
    Dettagli.BottigliaDiVino = BottiglieDiVino.Id
    AND Vini.Nome = BottiglieDiVino.Vino
GROUP BY
    Dettagli.BottigliaDiVino
ORDER BY
    (BottiglieVendute) DESC
LIMIT
    1;

/*QUERY 2
 Numero di tipi di vino prodotti divisi per colore*/
SELECT
    T.Colore,
    COUNT(*) as TipiDiVino
FROM
    TipiUva as T,
    Uva as U,
    Vini as V
WHERE
    V.Uva = U.Id
    AND U.TipoUva = T.Nome
GROUP BY
    T.Colore;

/*QUERY 3
 Coppie di aziende che hanno acquistato lo stesso giorno, con il relativo giorno, in ordine alfabetico*/
SELECT
    Acq1.Nome,
    Acq2.Nome,
    Acq1.Data
FROM
    Acquirenti as Acq1
    JOIN Aziende as A ON Acq1.Id = NumAcquirente
    JOIN Ordini ON Acquirente = Acq1.Id
    JOIN Informazioni ON InformazioniAggiuntive = Informazioni.Id,
    Acquirenti as Acq2
    JOIN Aziende as A ON Acq2.Id = NumAcquirente
)
JOIN Ordini ON Acquirente = Acq2.Id
JOIN Informazioni ON InformazioniAggiuntive = Informazioni.Id,
WHERE
    Acq1.Id < Acq2.Id
    and Acq1.Data = Acq2.Data
ORDER BY
    Acq1.Nome,
    Acq2.Nome
    /*QUERY 4 (vecchia)
     il vino/i che rappresenta il tema di un evento che è stato visto da meno partecipanti
     
     CREATE VIEW Num_partecipanti_evento as
     SELECT Evento as Cod_evento, SUM(Id) as Num_partecipanti
     FROM Partecipanti
     GROUP BY Evento
     
     
     
     SELECT V.Nome
     FROM Vino as V, TemiVino as T
     WHERE T.Vino=V.Id and T.Id IN
     
     (SELECT Cod_evento, 
     FROM Num_partecipanti_evento
     WHERE Num_partecipanti IN
     
     SELECT MIN(Num_partecipanti)
     FROM Num_partecipanti_evento))*/
    /*QUERY 4
     Lista dei dipendenti (ordinati in ordine alfabetico) che sono supervisori di altri dipendenti (se sono troppi limita le nuple a 10)*/
SELECT
    DISTINCT D1.Nome,
    D1.Cognome
FROM
    Dipendenti as D1,
    Dipendenti as D2
WHERE
    D2.Referente = D1.CodiceFiscale
ORDER BY
    D1.Nome,
    D1.Cognome
    /*QUERY 5
     Lista dei dipendenti (nome, cognome), con inizio e fine turno, 
     ordinati in modo decrescente sull'inizio del turno,
     che sono a lavorare il giorno 12 giugno 2019 (giorno da decidere) */
SELECT
    D.Nome,
    D.cognome,
    T.InizioTurno,
    T.FineTurno
FROM
    Dipendenti as D,
    Turni as T
WHERE
    T.Dipendente = D.CodiceFiscale
    AND DATE_FORMAT(T.InizioTurno, '%Y-%m-%d') = '2019-10-20'
ORDER BY
    T.InizioTurno DESC