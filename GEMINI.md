# Progetto: SuperEnalotto Analyzer PRO - Dynamic

## Panoramica del Progetto
**ANALYZER_PRO_v5.0_DYNAMIC** è un'applicazione web standalone (Single Page Application) progettata per l'analisi statistica e la generazione di previsioni per il gioco del SuperEnalotto. L'applicazione è interamente contenuta in un singolo file HTML, rendendola estremamente portabile e priva di dipendenze esterne.

L'interfaccia utente adotta uno stile "Terminal/Cyberpunk" con contrasti scuri e accenti verdi/viola, ottimizzata per offrire una chiara visualizzazione dei dati e delle statistiche.

## Tecnologia e Architettura
*   **Tipo:** Applicazione Web Client-Side.
*   **Linguaggi:** HTML5, CSS3, JavaScript (Vanilla ES6+).
*   **Dipendenze:** Nessuna. Non richiede server, Node.js o librerie di terze parti.
*   **Struttura:** Architettura a singolo file (`index.html`) che ingloba:
    *   **Struttura (HTML):** Layout responsivo a pannelli dinamici.
    *   **Stile (CSS):** Tematizzazione custom "Dark Mode".
    *   **Logica (JS):** Motore di calcolo statistico, algoritmi combinatori e gestione export file.

## Funzionalità Core (v5.0)

### 1. Motore Statistico
*   Analisi frequenze (totali e parziali).
*   Calcolo ritardi attuali e storici.
*   Identificazione "Numeri Spia" e correlazioni.

### 2. Super Sistema (Algoritmo Combinatorio)
Il modulo principale per la generazione di previsioni. Permette di combinare pool di numeri provenienti da diverse logiche (Strategie) attraverso operatori insiemistici.

**Logiche di Combinazione (Modalità):**
*   **UNION:** $A \cup B \cup C$ (Unione di tutti i set, rimozione duplicati).
*   **INTERSECTION:** $A \cap B$ (Solo elementi presenti in $n \ge 2$ set).
*   **HYBRID:** Combinazione pesata (50% da Intersection, 50% da Union \ Intersection).
*   **MEGASYSTEM:** Generazione cartesiana delle sestine (con filtro duplicati).

**Strategie Disponibili:**
*   `hotNumbers`: Top frequenti.
*   `coldNumbers`: Top ritardatari.
*   `balanced`: Mix pesato (default: 40% caldi, 30% freddi, 30% casuali).
*   `recentFocused`: Analisi ultimi 12 concorsi.
*   `contrarian`: Inversione della logica di frequenza.
*   `mathematical`: Progressioni aritmetiche e figure geometriche.

### 3. Utility
*   **Export TXT:** Generazione client-side di file `.txt` (Blob API) con le combinazioni generate.
*   **Budget Control:** Algoritmo di taglio ("slicing") delle combinazioni per rientrare nel budget utente.

## Convenzioni di Sviluppo

### Stile del Codice
*   **All-in-One:** Mantenere tutto il codice all'interno di `index.html`.
*   **Nomenclatura:** CamelCase per funzioni JS, kebab-case per classi CSS.

### Palette Colori (UI)
*   **Background:** `#020617` (Slate 950)
*   **Pannelli:** `#1e293b` (Slate 800)
*   **Primary (Analisi):** `#34d399` (Emerald 400)
*   **Secondary (Super Sistema):** `#a855f7` (Purple 500) - *Nuovo in v5.0*
*   **Alert/Error:** `#ef4444` (Red 500)
*   **Warning/Gold:** `#fbbf24` (Amber 400)

## File Chiave
*   `index.html`: Il codice sorgente completo.
*   `README.md`: Documentazione pubblica per l'utente.
*   `GEMINI.md`: Documentazione tecnica interna e memoria del progetto.