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
noch fehlt, steht hier, nicht dort.

Ausgearbeitet: Blöcke 1 bis 7. Offene Punkte darin:

* Block 4: Der Agendapunkt "Einlesen mit KI-Unterstützung" steht in der Kursagenda,
  fehlt aber im Skript. Wäre Abschnitt 7 in `1_Daten_lesen_pakete.R`
* Block 6: `3_Grafiken_Tabellen.R` ist mit rund 55 Zeilen knapp und arbeitet mit
  dem eingebauten Datensatz `mtcars`. Sinnvoll wären weitere Geome
  (`geom_col()`, `geom_histogram()`, `geom_point()`), Beschriftung mit `labs()`,
  ein Theme, `ggsave()` und eine Umstellung auf
  `beispieldaten/SC2Hospitalisierungen.csv`, damit Block 4 bis 6 auf demselben
  Datensatz aufeinander aufbauen
* Block 7: Der Agendapunkt "Quarto" hat kein Material. Geplant ist ein
  Minimalbeispiel `bericht_quarto.qmd`

Nur Ziele, kein Material: Blöcke 8, 9 und 10.

* Block 8 Github und Opencode: Warum Versionskontrolle im ÖGD, Konto anlegen,
  Repository klonen, der Zyklus aus add/commit/push, ZIP-Download für alle ohne
  Git, Einordnung von Opencode. Geplante Dateien `git_grundlagen.md` und
  `spickzettel_git.md`
* Block 9 Kartenerstellung: Der Code existiert schon verstreut und muss nur in
  ein Skript `karten.R` zusammengeführt werden. Vorlagen sind der Karten-Chunk
  in `block01_showcase/Showcase_OEGD_Bericht.Rmd` (RDS lesen, `st_as_sf()`,
  `left_join()`, `geom_sf()`, ein Bundesland hervorheben) und die Leaflet-Karte
  in `block07_bericht/4_Bericht.Rmd`. Daten liegen bereit:
  `beispieldaten/gadm/gadm41_DEU_1_pk.rds` für die Bundesländer und
  `beispieldaten/INKAR.csv` für eine Choroplethenkarte auf Kreisebene. Die
  Kreisgrenzen wurden entfernt, weil sie 7,5 MB gross waren und nirgends
  gelesen wurden; sie lassen sich mit
  `geodata::gadm(country = "Germany", level = 2)` nachladen
* Block 10 KI-Workflow: Live-Demonstration von der Fragestellung bis zum Bericht,
  also Datensatz beschreiben, Skript erzeugen lassen, Fehlermeldung
  zurückspielen, Bericht erzeugen, Ergebnis gegenprüfen. Dazu der Unterschied
  zwischen Chat im Browser und einem Werkzeug mit Dateizugriff. Geplante Dateien
  `demo_ablauf.md` und ein bewusst unsauberer `demo_datensatz.csv`. Referentin
  oder Referent ist in der Kursagenda noch nicht benannt

Datenschutz in Block 3 und Block 10:
Gesundheitsdaten sind besondere Kategorien personenbezogener Daten nach
[Art. 9 DSGVO](https://dsgvo-gesetz.de/art-9-dsgvo/) und gehören nicht in einen
externen Chatdienst. Im Kurs nur offene oder synthetische Daten verwenden.

Die ausführlichen Fassungen der Block-READMEs mit Dateitabellen und
weiterführenden Links stehen in der Historie bei Commit 971c270.

## Hinweise für Änderungen

* Skripte sind zum zeilenweisen Mitmachen gedacht. `block03_base_r/base_r_grundlagen.R`
  enthält absichtlich eine nicht lauffähige Zeile (`mein_datum <- 03.05.2023`), die
  zeigt, dass ein Datum sich nicht als Zahl anlegen lässt. Die Datei lässt sich
  deshalb nicht am Stück mit `source()` ausführen.
* Bei Gesetzesbezügen immer einen Link auf die Fundstelle setzen.
* Keine Emoji in Materialien und Dokumentation.
