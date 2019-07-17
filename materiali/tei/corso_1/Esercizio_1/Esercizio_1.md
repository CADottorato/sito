Scuola estiva CADottorato

# Esercizio 1

Simon Gabay
Verona, 17 luglio 2019

---
## Oxyxen
---

### Crea un nuovo documento…
![80% center](Esercizio_1_images/Oxygen_1.png)

---
### …in XML-TEI
![80% center](Esercizio_1_images/Oxygen_2.png)

---
### Per ora, lavoreremo solo nel ```<body>```
![80% center](Esercizio_1_images/Oxygen_3.png)

---
### Rimuovi il elemento ```<p>```: cosa succede?
![80% center](Esercizio_1_images/Oxygen_4.png)

---
### Apri i caporali : cosa succede?
![80% center](Esercizio_1_images/Oxygen_5.png)

---
## Esercizio

---
### Copia il testo
![80% center](Esercizio_1_images/Oxygen_6.png)

---

Cosa vedi? Come si analizza formalmente il testo?

---
### Codifica il primo verso con ```<l>```
![80% center](Esercizio_1_images/Oxygen_7.png)

---
### Puoi accelerare il lavoro selezionando l'intero verso e premendo ```cmd + E``` (mac) o ```ctrl + E``` (windows)
![80% center](Esercizio_1_images/Oxygen_8.png)

---
### Usa questi elementi
- Codifica i versi con ```<l>``` (_line_)
- Codifica il titolo con ```<head>```
- Codifica le stanze con ```<lg>``` (_line group_)

### Usa questi attributi
- ```@n``` per numerare i versi del sonetto (```<l n="1">```)
- ```@type``` per specificare il tipo di stanza (```<lg n="quartina">```)
