/*QUERY 1
Bottiglia/e di vino più venduta/e dell'anno 2019 con la relativa quantita(Da vedere se è corretta, 
si potrebbero usare le viste per rendere le cose più semplici)*/

SELECT B.Nome,B.Annata, SUM(D.QuantitaBottiglia) as QuantitaVenduta
FROM BottiglieDiVino as B, Dettagli as D, Ordine as O
WHERE DATE_FORMAT(O.Data,'%Y')='2019'
GROUP BY D.Vino
HAVING QuantitaVenduta IN

/*Somma max della quantita venduta per bottigliaDiVino*/  
(SELECT SUM(D.QuantitaBottiglie) as Somma
FROM Dettagli as D, BottiglieDiVino as B
WHERE D.Vino=B.Id
GROUP BY D.Vino
HAVING MAX(Somma));


/*QUERY 2
Numero di tipi di vino prodotti divisi per colore*/

SELECT T.Colore, COUNT(*) as TipiDiVino 
FROM TipiUva as T, Uva as U, Vino as V
WHERE V.Uva=U.Id AND U.TipoUva=T.Id
GROUP BY T.Colore;

/*QUERY 3
Coppie di aziende che hanno acquistato lo stesso giorno, con il relativo giorno, in ordine alfabetico*/

SELECT Acq1.Nome, Acq2.Nome, Acq1.Data
FROM Acquirenti as Acq1 JOIN Aziende as A ON Acq1.Id=NumAcquirente JOIN Ordini ON Acquirente=Acq1.Id JOIN Informazioni ON InformazioniAggiuntive=Informazioni.Id, 
Acquirenti as Acq2 JOIN Aziende as A ON Acq2.Id=NumAcquirente) JOIN Ordini ON Acquirente=Acq2.Id JOIN Informazioni ON InformazioniAggiuntive=Informazioni.Id,
WHERE Acq1.Id<Acq2.Id and Acq1.Data=Acq2.Data
ORDER BY Acq1.Nome, Acq2.Nome