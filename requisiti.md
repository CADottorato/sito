---
layout: default
---

![CAD-logo](assets/img/CAD-logo-long.png)

# Codificare, Analizzare, Diffondere: <br />Le *Digital Humanities* nei progetti di ricerca
<br/>
&#11025; [Torna alla Homepage](index.md)
<br/>

## Requisiti

L’Università di Verona mette a disposizione dei computer; ove possibile, per esperienza personale, vi consigliamo di lavorare con i vostri portatili in modo da avere le installazioni e tutto il necessario per continuare a lavorare dopo la scuola. Di seguito trovate i requisiti per i singoli corsi, mentre questi sono **i requisiti di base per tutti**:

- Computer proprio con almeno **5-10GB di spazio disponibile**.
- Sistema operativo: Windows (preferibilmente 7+), Linux o Mac OSX.
- **[Java 8](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)** per il vostro sistema operativo. È possibile che dobbiate crearvi un account **Oracle** per scaricare Java 8.
- **Programmi zip/unzip** (si tratta di programmi che normalmente avete di default nel vostro computer, come 7-Zip o WinZip per Windows, per gestire le cartelle compresse).
- **Browser**: [Mozilla Firefox](https://www.mozilla.org/en-US/firefox/new/) e [Google Chrome](https://www.google.com/intl/en/chrome/).
- Programma di lettura di testo semplice (per `txt` e `csv`):
	- **[Sublime Text Editor 3](https://www.sublimetext.com/3)** per Windows, Linux e Mac.

---
<br/><br/><br/>

### Codifica dei testi

- **[oXygen XML Editor](https://www.oxygenxml.com/xml_editor.html)**. Il software è a pagamento, ma si può scaricare una licenza di prova che dura 30 giorni, riempiendo il [form disponibile](https://www.oxygenxml.com/xml_editor/register.html?p=editor); l'ideale sarà scaricare il software a ridosso della scuola per poterlo utilizzare il più a lungo possibile.

---

### Trattamento Automatico del Linguaggio

#### WINDOWS
- **[Cygwin](https://www.cygwin.com/)**. Istruzioni di installazione [qui](https://www.youtube.com/watch?v=hh-V6el8Oxk). Cygwin emula la linea di comando propria di sistemi Unix (MAC OSX/Linux).
	<!-- Pacchetti da installare: 
		- `vim`
		- `make`
		- `gcc-core`-->
- **[TreeTagger](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/)**. Nella sezione “Windows version” della homepage di TreeTagger cliccare sul link `Windows64` (64-bit) o `Windows32` (32-bit) a seconda del proprio processore (trovate tutte le informazioni relative al vostro processore nelle vostre "Proprietà del sistema").

#### MAC
- **[Homebrew](https://brew.sh/)**
- **[TreeTagger](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/)**. L'installazione prevede il download dei seguenti file:
	1. [Pacchetto Tagger](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/tree-tagger-MacOSX-3.2.2.tar.gz)
	2. [Tagging scripts](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/tagger-scripts.tar.gz)
	3. Installation script [install-tagger.sh](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/install-tagger.sh)
	4. Parameter files:
		- [Italian parameter file](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/italian.par.gz) (gzip compressed, UTF8, tagset documentation)
		- Marco Baroni's [Italian parameter file](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/italian2.par.gz) (gzip compressed, Latin1, tagset documentation)

Mettere tutti i file scaricati in una cartella `treetagger` sul vostro Desktop.

#### LINUX
- **[TreeTagger](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/)**. L'installazione prevede il download dei seguenti file:
	1. Pacchetto Tagger: seguire istruzioni sulla homepage di TreeTagger.
	2. [Tagging scripts](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/tagger-scripts.tar.gz).
	3. Installation script [install-tagger.sh](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/install-tagger.sh).
	4. Parameter files:
		- [Italian parameter file](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/italian.par.gz) (gzip compressed, UTF8, tagset documentation).
		- Marco Baroni's [Italian parameter file](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger/data/italian2.par.gz) (gzip compressed, Latin1, tagset documentation).

Mettere tutti i file scaricati in una cartella `treetagger` sul vostro Desktop.

---

### Diffondere la ricerca online
**oXygen XML Editor** (già usato per codifica dei testi, vd. sopra dettagli di installazione); in alternativa **Sublime Text Editor 3**.

---

### Analisi semantica e di stile
-  **R** (linguaggio di programmazione)
	- Windows: https://cran.r-project.org/bin/windows/base/R-3.6.0-win.exe 
	- Mac: https://cran.r-project.org/bin/macosx/R-3.6.0.pkg (per prevenire possibili errori con il pacchetto Stylo, gli utenti Mac sono pregati di installare **[XQuartz](https://www.xquartz.org/)** prima di installare R). 
	- Linux (command line): `$ sudo apt install r-base-core`
- **RStudio** (interfaccia grafica)
	- Windows: https://download1.rstudio.org/desktop/windows/RStudio-1.2.1335.exe
	- Mac: https://download1.rstudio.org/desktop/macos/RStudio-1.2.1335.dmg
	- Linux: https://www.rstudio.com/products/rstudio/download/#download
- **Pacchetto Stylo** (Stilometria): Una volta installati R e RStudio, aprire RStudio e nel pannello “Console” scrivete:
`install.packages("stylo")`; premete `enter`, e una serie di files sarà scaricata (...quindi dovrete essere connessi a internet!). Per verificare l’installazione, sempre nella Console scrivete: `library(stylo)`; Premete `enter`, e un messaggio di benvenuto comparirà nella Console.
- **Pacchetto Syuzhet** (Sentiment Analysis): una volta installati R e RStudio, aprire RStudio e nel pannello “Console” scrivete: `install.packages("syuzhet")`; premete `enter`, e una serie di files sarà scaricata (...quindi dovrete essere connessi a internet!).
Per verificare l’installazione, sempre nella Console scrivete: `library(syuzhet)`; premete `enter`, e in questo caso nessun messaggio di benvenuto comparirà (ma nemmeno messaggi di errore).
- Le esercitazioni di topic modeling saranno eseguite tramite un servizio online che non richiede installazione: [https://mimno.infosci.cornell.edu/jsLDA/](https://mimno.infosci.cornell.edu/jsLDA/).

---

### Cartografia e network

- **[QGIS](https://www.qgis.org/it/site/forusers/download.html)**.
- **[Gephi](https://gephi.org/)**.
- Account **Google**.
- Account **[GitHub Education](https://education.github.com/)**.
- Account **[Carto](https://carto.com/)** da fare attraverso l’account GitHub Education. Carto è un’applicazione online che permette l’utilizzo gratuito ai ricercatori con una email universitaria registrata su GitHub Education. Attenzione perché Carto prende alcuni giorni per l’attivazione e se vi registrate durante la scuola rischiate di non aver il profilo attivo.