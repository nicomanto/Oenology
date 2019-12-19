#!/usr/bin/python

import MySQLdb as sqldb
import mechanicalsoup
from random import randint
import contextlib

host = "localhost"
user = "filippo"
password = ""
dbname = "progetto_basi"
link = "https://it.fakenamegenerator.com/advanced.php?t=country&n%5B%5D=it&c%5B%5D=it&gen=50&age-min=19&age-max=71"
browser = mechanicalsoup.StatefulBrowser()
browser.set_user_agent('progetto-basi')


class Field:
    def __init__(self, label, value):
        self.label = label
        self.value = value


def insert(connection, table, properties):
    query = " ".join(
        ["INSERT INTO", table, "(", ", ".join(p.label for p in properties), ")", "VALUES (", ", ".join(str(p.value) if type(p.value) is int else "'" + p.value + "'" for p in properties), ");"])
    print(query)
    cursor = connection.cursor()
    cursor.execute(query)
    connection.commit()


def populateIndirizzi(connection):
    for i in range(100):
        indirizzo = []
        while True:
            r = browser.open(link)
            if r.status_code == 200:
                break

        page = browser.get_current_page()
        cognome = page.findAll("div", {"class": "address"})[
            0].findAll("h3")[0].text.split(" ")[1]
        via = " ".join(["Via", cognome])
        numCivico = randint(1, 100)
        stato = "Italia"
        indirizzo = [Field("Via", via),
                     Field("NumeroCivico", numCivico),
                     Field("Stato", stato)]
        insert(connection, 'Indirizzi', indirizzo)


def populateInformazioni(connection):
    for i in range(100):
        informazione = []
        while True:
            r = browser.open(link)
            if r.status_code == 200:
                break

        page = browser.get_current_page()
        nome = page.findAll("div", {"class": "address"})[
            0].findAll("h3")[0].text.split(" ")[0]
        cognome = page.findAll("div", {"class": "address"})[
            0].findAll("h3")[0].text.split(" ")[1]
        telefono = str(randint(3450000000, 3459999999))
        email = "".join([nome, cognome, "@email.com"]).lower()
        indirizzo = i
        informazione = [Field("Nome", nome),
                        Field("Telefono", telefono),
                        Field("Email", email),
                        Field("Indirizzo", indirizzo)]
        insert(connection, 'Informazioni', informazione)


def populateAcquirenti(connection):
    for i in range(80):
        insert(connection, 'Acquirenti', [])


def populatePrivati(connection):
    for i in range(50):
        privato = []
        while True:
            r = browser.open(link)
            if r.status_code == 200:
                break

        page = browser.get_current_page()
        numAcquirente = i
        cognome = page.findAll("div", {"class": "address"})[
            0].findAll("h3")[0].text.split(" ")[1]
        infAgg = i
        privato = [Field("NumAcquirente", numAcquirente),
                   Field("Cognome", cognome),
                   Field("InformazioniAggiuntive", infAgg)]
        insert(connection, 'Privati', privato)


def populateAziende(connection):
    for i in range(50):
        azienda = []
        while True:
            r = browser.open(link)
            if r.status_code == 200:
                break

        page = browser.get_current_page()
        numAcquirente = i
        partIVA = randint(10000000000, 99999999999)
        nome = page.findAll("div", {"class": "address"})[
            0].findAll("h3")[0].text.split(" ")[0]
        cognome = page.findAll("div", {"class": "address"})[
            0].findAll("h3")[0].text.split(" ")[1]
        infAgg = i
        azienda = [Field("NumAcquirente", numAcquirente),
                   Field("ParitaIVA", partIVA),
                   Field("NomeReferente", nome),
                   Field("CognomeReferente", cognome),
                   Field("InformazioniAggiuntive", infAgg)]
        insert(connection, 'Privati', azienda)


def populateFornitori(connection):
    for i in range(20):
        fornitore = []
        azienda = i
        tipologia = "Uva" if randint(0, 1) else "Tappo"
        fornitore = [Field("Azienda", azienda),
                     Field("Tipologia", tipologia)]
        insert(connection, 'Fornitori', fornitore)


def populateTipiUva(connection):
    for i in range(10):
        tipo = []
        nome = "nomeTipo"
        colore = "colore"
        tipo = [Field("Nome", nome),
                Field("Colore", colore)]
        insert(connection, 'TipiUva', tipo)


def populateUva(connection):
    for i in range(20):
        uva = []
        tipo = i
        fornitore = i
        annata = 2015
        uva = [Field("TipoUva", tipo),
               Field("Fornitore", fornitore),
               Field("Annata", annata)]
        insert(connection, 'Uva', uva)


def populateDipendenti(connection):
    for i in range(100):
        dipendente = []
        while True:
            r = browser.open(link)
            if r.status_code == 200:
                break

        page = browser.get_current_page()
        codiceFiscale = str(randint(1000000000000000, 9999999999999999))
        cognome = page.findAll("div", {"class": "address"})[
            0].findAll("h3")[0].text.split(" ")[1]
        nome = page.findAll("div", {"class": "address"})[
            0].findAll("h3")[0].text.split(" ")[0]
        dipendente = [Field("CodiceFiscale", codiceFiscale),
                      Field("Nome", nome),
                      Field("Cognome", cognome)]
        insert(connection, 'Dipendenti', dipendente)


def populateLineeProduttive(connection):
    for i in range(5):
        linea = []
        nome = "".join(["Linea", str(i)])
        direttore = i
        linea = [Field("Nome", nome),
                 Field("Direttore", direttore)]
        insert(connection, 'LineeProduttive', linea)


def populateVini(connection):
    for i in range(40):
        vino = []
        nome = "".join(["Vino", str(i)])
        gradazione = randint(10, 20)
        tempoFermentazione = randint(30, 40)
        statoProduzione = True if randint(0, 1) else False
        IdProduzione = randint(0, 5)
        uva = randint(0, 20)
        vino = [Field("Nome", nome),
                Field("Gradazione", gradazione),
                Field("TempoFermentazione", tempoFermentazione),
                Field("StatoProduzione", statoProduzione),
                Field("IdProduzione", IdProduzione),
                Field("Uva", uva)]
        insert(connection, 'Vini', vino)


def populateTappi(connection):
    for i in range(5):
        tappo = []
        forma = "".join(["Forma", str(i)])
        materiale = "".join(["Materiale", str(i)])
        quantita = randint(1000, 10000)
        prezzo = randint(0, 2)
        fornitore = randint(0, 20)
        tappo = [Field("Forma", forma),
                 Field("Materiale", materiale),
                 Field("Quantita", quantita),
                 Field("Prezzo", prezzo),
                 Field("Fornitore", fornitore)]
        insert(connection, 'Tappi', tappo)


def populateBottiglie(connection):
    for i in range(5):
        bottiglia = []
        capacita = 50 if randint(0, 1) else 75
        colore = "Verde" if randint(0, 1) else "Marrone"
        quantita = randint(0, 10000)
        prezzo = randint(10, 20)
        fornitore = randint(0, 20)
        bottiglia = [Field("Capacita", capacita),
                     Field("Colore", colore),
                     Field("Quantita", quantita),
                     Field("Prezzo", prezzo),
                     Field("Fornitore", fornitore)]
        insert(connection, 'Bottiglie', bottiglia)


def populateBottilieDiVino(connection):
    for i in range(50):
        bottigliaDiVino = []
        vino = i
        annata = 2015
        prezzo = randint(10, 20)
        classificazione = "BOH"
        numVendute = randint(0, 1000)
        numMagazzino = randint(0, 1000)
        numProdotte = numVendute + numMagazzino
        idTappo = randint(0, 5)
        idBottiglia = randint(0, 5)
        idMagazzino = randint(0, 20)
        bottigliaDiVino = [Field("Vino", vino),
                           Field("Annata", annata),
                           Field("Prezzo", prezzo),
                           Field("Classificazione", classificazione),
                           Field("NuBottiglieVenute", numVendute),
                           Field("NumBottiglieMagazzino", numMagazzino),
                           Field("NumBottiglieProdotte", numProdotte),
                           Field("IdTappo", idTappo),
                           Field("IdBottiglia", idBottiglia),
                           Field("IdMagazzino", idMagazzino)]
        insert(connection, 'BottiglieDiVino', bottigliaDiVino)


def populateVigneti(connection):
    for i in range(15):
        vigneto = []
        indirizzo = randint(0, 100)
        vigneto = [Field("Indirizzo", indirizzo)]
        insert(connection, 'Vigneti', vigneto)


def populateVigne(connection):
    for i in range(1000):
        vigna = []
        tipologia = randint(0, 20)
        data = 2000
        vigneto = randint(0, 15)
        vigna = [Field("Tipologia", tipologia),
                 Field("DataPiantagione", data),
                 Field("VignetoDiAppartenenza", vigneto)]
        insert(connection, 'Vigne', vigna)


def populateMacchinari(connection):
    for i in range(30):
        macchinario = []
        nome = "".join(["Macchinario", str(i)])
        dataProssimaManutenzione = 1  # da inserire data
        dataAcquisto = 1  # da inserire data
        lineaProduttiva = randint(0, 5)
        macchinario = [Field("Nome", nome),
                       Field("DataProssimaManutenzione",
                             dataProssimaManutenzione),
                       Field("DataAcquisto", dataAcquisto),
                       Field("LineaProduttiva", lineaProduttiva)]
        insert(connection, 'Macchinari', macchinario)


def populateTurni(connection):
    for i in range(6000):
        turno = []
        dipendente = randint(0, 100)
        inizio = 1  # da inserire la data
        fine = 1  # da inserire la data
        linea = randint(0, 5)
        turno = [Field("Dipendente", dipendente),
                 Field("InizioTurno", inizio),
                 Field("FineTurno", fine),
                 Field("LineaProduttiva", linea)]
        insert(connection, 'Turni', turno)


def populateOrdini(connection):
    for i in range(200):
        ordine = []
        prezzo = randint(0, 1000)
        data = 1  # da inserire data
        acquirente = randint(0, 80)
        ordine = [Field("PrezzoTotale", prezzo),
                  Field("Data", data),
                  Field("Acquirente", acquirente)]
        insert(connection, 'Ordini', ordine)


def populateDettagli(connection):
    for i in range(randint(1, 10)):
        dettaglio = []
        ordine = randint(0, 200)
        vino = randint(0, 40)
        quantita = randint(1, 10)
        dettaglio = [Field("Ordine", ordine),
                     Field("Vino", vino),
                     Field("QuantitaBottiglie", quantita)]
        insert(connection, 'Dettagli', dettaglio)


def populateCorrieri(connection):
    for i in range(5):
        corriere = []
        nome = "".join(["Corriere", str(i)])
        corriere = [Field("Nome", nome)]
        insert(connection, 'Corrieri', corriere)


def populateSpedizioni(connection):
    for i in range(200):
        spedizione = []
        ordine = i
        corriere = randint(0, 5)
        dataS = 1  # inserire data
        dataA = 1  # inserire data
        prezzo = randint(100, 2000)
        spedizione = [Field("Ordine", ordine),
                      Field("Corriere", corriere),
                      Field("DataSpedizione", dataS),
                      Field("DataArrivo", dataA),
                      Field("Prezzo", prezzo)]
        insert(connection, 'Spedizioni', spedizione)


def populateNegoziInterni(connection):
    for i in range(5):
        negozio = []
        id = randint(0, 60)
        negozio = [Field("Id", id)]
        insert(connection, 'NegoziInterni', negozio)


def populateEventi(connection):
    for i in range(30):
        evento = []
        titolo = "".join(["Evento", str(i)])
        edizione = randint(1, 3)
        evento = [Field("Titolo", titolo),
                  Field("Edizione", edizione)]
        insert(connection, 'Eventi', evento)


def populateOspita(connection):
    for i in range(40):
        ospita = []
        evento = randint(0, 30)
        negozio = randint(0, 5)
        ospita = [Field("Evento", evento),
                  Field("Negozio", negozio)]
        insert(connection, 'Ospita', ospita)


def populatePartecipanti(connection):
    for i in range(100):
        partecipante = []
        cognome = browser.get_current_page().findAll("div", {"class": "address"})[
            0].findAll("h3")[0].text.split(" ")[1]
        nome = browser.get_current_page().findAll("div", {"class": "address"})[
            0].findAll("h3")[0].text.split(" ")[0]
        eta = randint(18, 80)
        # Perche' non ospita al posto dei due qui sotto?
        evento = randint(0, 30)
        negozio = randint(0, 5)
        partecipante = [Field("Nome", nome),
                        Field("Cognome", cognome),
                        Field("Eta", eta),
                        Field("Evento", evento),
                        Field("Negozio", negozio)]
        insert(connection, 'Partecipanti', partecipante)


def populateTemiVino(connection):
    for i in range(10):
        tema = []
        nome = "".join(["Tema", str(i)])
        vino = "".join(["Vino", str(randint(0, 40))])
        Evento = randint(0, 30)
        tema = [Field("Nome", nome),
                Field("Vino", vino),
                Field("Evento", Evento)]
        insert(connection, 'TemiVino', tema)


def main():
    connection = sqldb.connect(host=host,
                               user=user,
                               passwd=password,
                               db=dbname)

    populateIndirizzi(connection)
    populateInformazioni(connection)
    populateAcquirenti(connection)
    populatePrivati(connection)
    populateAziende(connection)
    populateFornitori(connection)
    populateTipiUva(connection)
    populateUva(connection)
    populateDipendenti(connection)
    populateLineeProduttive(connection)
    populateVini(connection)
    populateTappi(connection)
    populateBottiglie(connection)
    populateBottilieDiVino(connection)
    populateVigneti(connection)
    populateVigne(connection)
    populateMacchinari(connection)
    populateTurni(connection)
    populateOrdini(connection)
    populateDettagli(connection)
    populateCorrieri(connection)
    populateSpedizioni(connection)
    populateNegoziInterni(connection)
    populateEventi(connection)
    populateOspita(connection)
    populatePartecipanti(connection)
    populateTemiVino(connection)


if __name__ == "__main__":
    main()


"""
    100 indirizzi
    100 informazioni
    80 acquirenti
    40 privati
    60 aziende
    20 fornitori
    10 tipi di uva
    20 uva
    100 dipendenti
    5 linee produttive
    40 vini
    5 tappi
    5 bottiglie
    50 bottiglie di vino
    15 vigneti
    1000 vigne
    30 macchinari
    6000 turni
    200 ordini
    1-10 elementi per ordine
    5 corrieri
    200 spedizioni
    5 negozi interni
    30 eventi
    40 ospitazioni
    100 partecipanti
    10 temi vino
"""
