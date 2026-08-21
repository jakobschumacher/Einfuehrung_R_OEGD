# Projektkontext: Einführung in R für den ÖGD

Kursmaterial für den Präsenzkurs an der Akademie für öffentliches Gesundheitswesen.
Zielgruppe sind Anfängerinnen und Anfänger ohne R-Vorkenntnisse. Kurssprache und
Sprache aller Materialien ist Deutsch, mit korrekten Umlauten (Dateien sind UTF-8).

## Ordnerkonvention

Der Kurs ist in zehn Blöcke gegliedert. Pro Block gibt es genau einen Ordner
`blockNN_thema` im Wurzelverzeichnis, dazu eine `README.md` im Blockordner, die
ausschließlich die Ziele des Blocks enthält. Alles andere, insbesondere was noch
fehlt, steht in dieser Datei unter "Stand des Materials".

Die Blockordner müssen auf Ebene 1 bleiben, keine Verschachtelung nach Kurstagen.
Grund sind die Pfade im Material:

* `.R`-Skripte lesen Daten projekt-relativ, z. B. `"beispieldaten/INKAR.csv"`. Das
  funktioniert, weil RStudio beim Öffnen der `.Rproj`-Datei das Wurzelverzeichnis
  als Arbeitsverzeichnis setzt.
* `.Rmd`-Dateien lesen Daten dokument-relativ, z. B. `"../beispieldaten/..."`, weil
  knitr das Verzeichnis der Quelldatei als Arbeitsverzeichnis setzt.

Beide Varianten bleiben nur bei gleichbleibender Ordnertiefe gültig. Nach jeder
Verschiebung von Material die Pfade prüfen.

Material, das nur zu einem Block gehört, liegt in dessen Ordner:

* `block03_base_r/handout/` das Handout
* `block07_bericht/eigener_bericht/` die Berichtsvorlage für das freie Arbeiten
* `block04_daten_einlesen/*.csv` und `.xlsx` die kleinen Übungsdateien zum Einlesen

Im Wurzelverzeichnis bleiben nur `README.md`, `VORBEREITUNG.md`, die
`.Rproj`-Datei und `beispieldaten` (Datensätze, die in mehreren Blöcken
vorkommen: INKAR, SC2Hospitalisierungen, gadm). Alles, was Kursteilnehmende
nicht brauchen, liegt in Punktordnern, die RStudio ausblendet: diese Datei in
`.claude/`, die Bilder der Dokumentation in `.github/`.

## Stand des Materials

Die Block-READMEs enthalten bewusst nur die Ziele des jeweiligen Blocks. Was
noch fehlt, steht in `.github/CONTRIBUTING.md` unter "Woran gerade Hilfe
gebraucht wird", und zwar nur dort. Diese Liste beim Bearbeiten dort pflegen,
nicht hier zusätzlich führen.

Kurzfassung: Die Blöcke 1 bis 7 sind ausgearbeitet und haben einzelne offene
Punkte, die Blöcke 8, 9 und 10 bestehen bisher nur aus einer README mit Zielen.

Die ausführlichen Fassungen der Block-READMEs mit Dateitabellen und
weiterführenden Links stehen in der Historie bei Commit 971c270.

## Hinweise für Änderungen

* Skripte sind zum zeilenweisen Mitmachen gedacht. `block03_base_r/base_r_grundlagen.R`
  enthält absichtlich eine nicht lauffähige Zeile (`mein_datum <- 03.05.2023`), die
  zeigt, dass ein Datum sich nicht als Zahl anlegen lässt. Die Datei lässt sich
  deshalb nicht am Stück mit `source()` ausführen.
* Bei Gesetzesbezügen immer einen Link auf die Fundstelle setzen.
* Keine Emoji in Materialien und Dokumentation.
