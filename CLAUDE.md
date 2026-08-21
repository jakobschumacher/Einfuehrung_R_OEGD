# Projektkontext: Einführung in R für den ÖGD

Kursmaterial für den Präsenzkurs an der Akademie für öffentliches Gesundheitswesen.
Zielgruppe sind Anfängerinnen und Anfänger ohne R-Vorkenntnisse. Kurssprache und
Sprache aller Materialien ist Deutsch, mit korrekten Umlauten (Dateien sind UTF-8).

## Ordnerkonvention

Der Kurs ist in zehn Blöcke gegliedert. Pro Block gibt es genau einen Ordner
`blockNN_thema` im Wurzelverzeichnis, dazu eine `README.md` im Blockordner mit
Lernzielen, Dateiübersicht und weiterführenden Links.

Die Blockordner müssen auf Ebene 1 bleiben, keine Verschachtelung nach Kurstagen.
Grund sind die Pfade im Material:

* `.R`-Skripte lesen Daten projekt-relativ, z. B. `"beispieldaten/INKAR.csv"`. Das
  funktioniert, weil RStudio beim Öffnen der `.Rproj`-Datei das Wurzelverzeichnis
  als Arbeitsverzeichnis setzt.
* `.Rmd`-Dateien lesen Daten dokument-relativ, z. B. `"../beispieldaten/..."`, weil
  knitr das Verzeichnis der Quelldatei als Arbeitsverzeichnis setzt.

Beide Varianten bleiben nur bei gleichbleibender Ordnertiefe gültig. Nach jeder
Verschiebung von Material die Pfade prüfen.

Gemeinsam genutzte Ordner im Wurzelverzeichnis: `beispieldaten`, `handout`, `img`,
`eigener_bericht`.

## Stand des Materials

Ausgearbeitet sind die Blöcke 1 bis 7. Die Blöcke 8 (Github und Opencode),
9 (Kartenerstellung) und 10 (AI-Workflow) bestehen bisher nur aus einem
README-Gerüst mit geplanter Gliederung. Offene Punkte sind in den jeweiligen
Block-READMEs unter der Überschrift "Offen" bzw. "Status" vermerkt.

## Hinweise für Änderungen

* Skripte sind zum zeilenweisen Mitmachen gedacht. `block03_base_r/base_r_grundlagen.R`
  enthält absichtlich eine nicht lauffähige Zeile (`mein_datum <- 03.05.2023`), die
  zeigt, dass ein Datum sich nicht als Zahl anlegen lässt. Die Datei lässt sich
  deshalb nicht am Stück mit `source()` ausführen.
* Bei Gesetzesbezügen immer einen Link auf die Fundstelle setzen.
* Keine Emoji in Materialien und Dokumentation.
