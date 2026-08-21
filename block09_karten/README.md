# Block 9: Kartenerstellung

Referentin/Referent: L

Status: Gerüst. Die Inhalte werden noch ergänzt.

## Lernziele (geplant)

* Sie verstehen, was Geodaten von normalen Tabellen unterscheidet
* Sie laden Verwaltungsgrenzen und wandeln sie mit `sf::st_as_sf()` um
* Sie verbinden Ihre Daten mit den Grenzen über einen Join
* Sie erstellen eine Choroplethenkarte mit `ggplot2::geom_sf()`
* Sie erstellen eine interaktive Karte mit `leaflet`

## Vorhandenes Material als Vorlage

Der Code existiert bereits verstreut im Kurs und muss nur in ein eigenes Skript
zusammengeführt werden:

* Karten-Chunk in [`../block01_showcase/Showcase_OEGD_Bericht.Rmd`](../block01_showcase/Showcase_OEGD_Bericht.Rmd): RDS einlesen, `st_as_sf()`, `left_join()` mit den Inzidenzen, `geom_sf()`, ein Bundesland rot hervorheben
* Leaflet-Beispiel in [`../block07_bericht/4_Bericht.Rmd`](../block07_bericht/4_Bericht.Rmd), Abschnitt 6

## Vorhandene Daten

| Datei | Inhalt |
|---|---|
| `../beispieldaten/gadm/gadm41_DEU_1_pk.rds` | Grenzen der Bundesländer |
| `../beispieldaten/gadm/gadm41_DEU_2_pk.rds` | Grenzen der Landkreise |
| `../beispieldaten/INKAR.csv` | Kreisdaten aus der [Datenbank INKAR](https://www.inkar.de/), geeignet für eine Choroplethenkarte auf Kreisebene |
| `../beispieldaten/SC2Hospitalisierungen.csv` | Hospitalisierungen, Robert Koch-Institut |

Die Grenzdateien stammen von [GADM](https://gadm.org/) und lassen sich mit
`geodata::gadm()` auch neu herunterladen. Für den Kurs liegen sie lokal vor,
damit der Block ohne Internetverbindung funktioniert.

## Geplante Dateien

| Datei | Inhalt | Status |
|---|---|---|
| `karten.R` | Statische Karte mit sf und ggplot2, interaktive Karte mit leaflet | fehlt |

## Weiterführend

* [GIS basics, Epi R Handbook](https://epirhandbook.com/en/gis-basics.html)
* [Dokumentation des Pakets sf](https://r-spatial.github.io/sf/)
