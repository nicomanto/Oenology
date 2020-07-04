/*QUERY 1
 Stampa resoconto settimanale fatturato.*/

SELECT
	SUM(Ordini.PrezzoTotale)
FROM
	Ordini
WHERe
	Ordini.Data <= CURRENT_TIMESTAMP
	AND Ordini.Data >= DATE_ADD(CURRENT_TIMESTAMP, INTERVAL -7 DAY);


/*QUERY 2
 Bottiglia/e di vino più venduta/e dell'anno 2019 con la relativa quantità.
Inizialmente viene creata una vista per definire le bottiglie vendute nell'anno 2019*/

CREATE VIEW OrdineQuantita AS
SELECT 
	Vini.Nome, SUM(Dettagli.QuantitaBottiglie) AS BottiglieVendute
FROM 
	Dettagli, BottiglieDiVino, Vini, Ordini
WHERE
	Dettagli.BottigliaDiVino = BottiglieDiVino.Id
	AND Vini.Nome = BottiglieDiVino.Vino
	AND DATE_FORMAT(Ordini.Data, '%Y') = '2019'
	AND Ordini.Id = Dettagli.Ordine
GROUP BY
	Dettagli.BottigliaDiVino;


SELECT 
	OrdineQuantita.Nome, OrdineQuantita.BottiglieVendute
FROM
	OrdineQuantita
WHERE 
	OrdineQuantita.BottiglieVendute IN (
	SELECT 
		MAX(OrdineQuantita.BottiglieVendute)
	FROM 
		OrdineQuantita);
    

/*QUERY 3
 Lista dei vini prodotti con la relativa tipologia di uva utilizzata e il fornitore di quest'ultima.*/
SELECT DISTINCT
	Vini.Nome AS Vino,
	Uva.TipoUva as TipoUva,
	Informazioni.Nome as Fornitore
FROM
	Vini,
	Uva,
	Informazioni,
	Aziende
WHERE
	Vini.Uva = Uva.Id
	AND Uva.Fornitore = Aziende.PartitaIVA
	AND Aziende.InformazioniAggiuntive = Informazioni.Id;




    /*QUERY 4
     Lista dei dipendenti (ordinati in ordine alfabetico) che sono supervisori di altri dipendenti*/
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
    D1.Cognome;




/*QUERY 5
 Lista dei dipendenti (nome, cognome), con inizio e fine turno, 
 ordinati in modo decrescente sull'inizio del turno,
 che sono a lavorare il giorno 22 ottobre 2019 */
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
    AND DATE_FORMAT(T.InizioTurno, '%Y-%m-%d') = '2019-10-22'
ORDER BY
    T.InizioTurno DESC;




/* QUERY 6
 Lista degli acquirenti che hanno acquistato il maggiore valore (Prezzo) di bottiglie di vino dalla nostra cantina.
Viene creata una vista che identifica le spese totali per ogni singolo acquirente
 */
CREATE VIEW SpeseTotali AS
SELECT
    Ordini.Acquirente,
    SUM(Ordini.PrezzoTotale) AS SpesaTotale
FROM
    Ordini
GROUP BY
    Ordini.Acquirente;

SELECT
    SpeseTotali.Acquirente,
    SpeseTotali.SpesaTotale
FROM
    SpeseTotali
WHERE
    SpeseTotali.SpesaTotale IN (
        SELECT
            MAX(SpeseTotali.SpesaTotale)
        FROM
            SpeseTotali
    );