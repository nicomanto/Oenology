# Bottiglia di vino
- nome
- annata
- classificazione 
- bottiglia
- etichetta
- vino contenuto
- n. bottiglie prodotte
- n. bottiglie vendute
- ordini pendenti
- stato produzione


# Vino
- uva usata
- gradazione alcolica
- (Opzionale) Nome evento particolare
- tempo fermentazione

# Eventi
- nome
- luogo
- data

# Uva
- fornitore
- tipologia
- colore
- vigna provenienza
- data raccolta

# Vigna
- id
- vigneto di provenienza

# Vigneto
- id
- terreno

# Fornitore Uva
- id
- prezzo al kg
- uva fornita

# Fornitore bottiglie
- id
- prezzo alla bottiglia
- bottiglie fornite

# Bottiglie
- capacita
- colore

# Fornitore tappi
- id
- prezzo per tappo  
- tappi forniti

# Tappi
- forma
- materiale

# Linee produttive
- id
- vino prodotto
- macchine usate
- impiegati
- capo linea

# Macchinari
- id
- nome
- ultima manutenzione
- prossima manutenzione
- azienda manutenzione

# Azienda manutenzione
- id
- nome

# Impiegati
- id
- nome
- cognome
- linea produttiva
- referente
- stipendio

# Ordine
- numero
- tipo vino comprato
- numero bottiglie acquistate
- acquirente
- prezzo
- data
- data arrivo
- trasportatore

# Acquirenti
- id
- nome
- privato/azienda
- indirizzo

# Trasporto
- Azienda referente

# Negozio 
- id
- indirizzo
- vini disponibili e relative quantita'

