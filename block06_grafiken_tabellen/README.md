# Block 6: Grafiken und Tabellen erstellen

Referent: F

## Lernziele

* Sie kennen den Aufbau eines ggplot2-Befehls: Daten, `aes()`-Zuordnung, `geom_`-Schicht, verbunden mit `+`
* Sie erstellen eine erste Grafik und beschriften sie
* Sie erstellen eine formatierte Tabelle mit dem Paket `gt`

## Dateien

| Datei | Inhalt |
|---|---|
| `3_Grafiken_Tabellen.R` | Hauptskript des Blocks |

## Offen

Das Skript ist mit rund 55 Zeilen noch knapp und arbeitet mit dem eingebauten
Datensatz `mtcars`. Sinnvolle Erweiterungen:

* Weitere Geome: `geom_col()`, `geom_histogram()`, `geom_point()`
* Beschriftung mit `labs()` und ein Theme wie `theme_classic()`
* Grafik speichern mit `ggsave()`
* Umstellung der Beispiele auf `../beispieldaten/SC2Hospitalisierungen.csv`, damit die Blöcke 4 bis 6 auf demselben Datensatz aufeinander aufbauen

## Weiterführend

* [ggplot basics, Epi R Handbook](https://epirhandbook.com/en/ggplot-basics.html)
* [Dokumentation des Pakets gt](https://gt.rstudio.com/)
