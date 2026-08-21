# Block 4: Daten einlesen

Referentin/Referent: L

## Lernziele

* Sie lesen eine CSV-Datei mit Base R ein
* Sie erkennen und lösen die drei üblichen Probleme: Semikolon statt Komma als Trennzeichen, falsche Zeichenkodierung (Umlaute), Kopfzeilen vor den eigentlichen Daten
* Sie installieren und laden Pakete (`install.packages()`, `library()`, `pacman::p_load()`)
* Sie lesen eine Excel-Datei ein
* Sie kennen `rio::import()` als bequeme Alternative für alle Dateiformate

## Dateien

| Datei | Inhalt |
|---|---|
| `1_Daten_lesen_pakete.R` | Hauptskript des Blocks, Abschnitte 1 bis 6 |

Die Übungsdateien liegen in diesem Ordner:

| Datei | Zeigt |
|---|---|
| `csv_datei_unproblematisch.csv` | Der Normalfall |
| `csv_datei_semikolon.csv` | Semikolon als Trennzeichen (`sep = ";"`) |
| `csv_datei_kodierung_utf8.csv` | Umlaute in UTF-8 (`fileEncoding = "UTF-8"`) |
| `csv_datei_kodierung_ascii.csv` | Umlaute in ASCII |
| `csv_datei_kopfzeilen.csv` | Kopfzeilen überspringen (`skip = 2`) |
| `xlsx_datei.xlsx` | Excel-Datei (`readxl::read_excel()`) |

## Wichtig

Das Skript liest die Daten mit Pfaden wie `"block04_daten_einlesen/csv_datei_unproblematisch.csv"`.
Diese Pfade gelten relativ zum Wurzelverzeichnis des Kursprojekts. Öffnen Sie
deshalb zuerst die `.Rproj`-Datei, sonst findet R die Dateien nicht (siehe Block 2).

## Offen

Der Agendapunkt "Einlesen mit KI-Unterstützung" ist im Skript noch nicht enthalten
und müsste als Abschnitt 7 ergänzt werden.

## Weiterführend

* [Import and export, Epi R Handbook](https://epirhandbook.com/en/import-and-export.html)
