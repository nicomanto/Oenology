# Oenology

[![PDF Build badge](https://img.shields.io/github/workflow/status/nicomanto/Oenology/PDF_build?label=PDF%20build)](https://shields.io/)

## Descrizione
Progetto sviluppato per l'esame di Basi di Dati.
Il progetto consiste in una relazione riguardante la strutturizzazione di un database. Nello specifico Oenology si occupa di creare una base di dati per una **cantina vinicola**. Maggiori informazioni sul progetto si possono trovare nel file **oenology.pdf** (vedere paragrafo *Compilazione*).

## Linee Guida 
Per ogni capitolo aggiungere una sottocartella con lo stesso nome in `src`. Creare quindi nella stessa un file chiamato `_main.tex` e un file aggiuntivo per ogni sottosezione del capitolo. La formattazione del capitolo deve essere demandata il piu' possibile al file `_main.tex` in modo che nei file di sottosezione sia presente quasi esclusivamente il contenuto. Incudere quindi del file `_main.tex` le sottosezioni del capitolo e includere nel file `main.tex` i vari `_main.tex`. Seguire l'esempio gia' presente.

## Compilazione
Il documento viene automaticamente compilato da github ogni volta che viene effetuato un push, il pdf frutto della compilazione e' disponibile per il download come artifact dalla conclusione della pipeline nella relativa sezione **Actions** in `PDF_build`

## PDF prodotto
Il PDF prodotto si può trovare nella sezione **release**
