# Progetto: SuperEnalotto Analyzer PRO - Dynamic

## Panoramica del Progetto
**ANALYZER_PRO_v5.0_DYNAMIC** è un'applicazione web standalone (Single Page Application) progettata per l'analisi statistica e la generazione di previsioni per il gioco del SuperEnalotto. L'applicazione è interamente contenuta in un singolo file HTML, rendendola estremamente portabile e priva di dipendenze esterne.

L'interfaccia utente adotta uno stile "Terminal/Cyberpunk" con contrasti scuri e accenti verdi, ottimizzata per offrire una chiara visualizzazione dei dati e delle statistiche.

## Tecnologia e Architettura
*   **Tipo:** Applicazione Web Client-Side.
*   **Linguaggi:** HTML5, CSS3, JavaScript (Vanilla ES6+).
*   **Dipendenze:** Nessuna. Non richiede server, Node.js o librerie di terze parti.
*   **Struttura:** Architettura a singolo file (`index.html`) che ingloba:
    *   **Struttura (HTML):** Layout responsivo.
    *   **Stile (CSS):** Tematizzazione custom "Dark Mode/Terminal".
    *   **Logica (JS):** Motore di calcolo statistico, gestione dell'archivio e generazione previsioni.

## Guida Rapida

### Esecuzione
Poiché si tratta di un file statico, non è necessario alcun processo di build o installazione.

1.  Scaricare o clonare il repository.
2.  Aprire il file `index.html` con un qualsiasi browser web moderno (Chrome, Firefox, Edge, Safari).

### Funzionalità Principali
*   **Analisi Statistica:** Calcolo di frequenze e ritardi.
*   **Pannello di Aggiornamento:** Modulo (`.update-panel`) per l'inserimento manuale delle nuove estrazioni.
*   **Visualizzazione:** Layout a griglia e indicatori visivi per i dati recenti.

## Convenzioni di Sviluppo

### Stile del Codice
*   **All-in-One:** Mantenere tutto il codice all'interno di `index.html` per garantire la portabilità.
*   **CSS:** Utilizzare classi semantiche. I colori principali sono definiti come: Sfondo `#020617`, Accento `#34d399`, Pannelli `#1e293b`.
*   **JavaScript:** Utilizzare JavaScript moderno senza framework.

### Gestione dei Dati
*   I dati delle estrazioni sono presumibilmente gestiti tramite array JavaScript all'interno del codice o tramite input dell'utente (local storage o sessione).

## File Chiave
*   `index.html`: Il cuore dell'applicazione. Contiene l'interfaccia, gli stili e tutta la logica di business.
*   `README.md`: Documentazione essenziale per l'utente finale.
