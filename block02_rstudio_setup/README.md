# Block 2: Setup - Installation und Kennenlernen von RStudio

Referent: F

## Lernziele

* R und RStudio sind installiert und starten
* Sie wissen, was der Unterschied zwischen R und RStudio ist
* Sie finden sich in den vier Panelen von RStudio zurecht
* Sie öffnen das Kursprojekt über die `.Rproj`-Datei und verstehen, warum das für die Pfade in den Skripten wichtig ist

## Dateien

| Datei | Inhalt |
|---|---|
| `rstudio_kennenlernen.R` | Aufbau von RStudio, Kursprojekt öffnen, Arbeitsverzeichnis prüfen |

## Installation (falls noch nicht geschehen)

Reihenfolge beachten: zuerst R, danach RStudio. RStudio ist nur eine Oberfläche
und findet beim ersten Start keine R-Installation, wenn R noch nicht vorhanden ist.

1. **R** über CRAN: <https://cran.r-project.org>, passendes Betriebssystem wählen
2. **RStudio Desktop** (kostenlose Open-Source-Variante): <https://posit.co/download/rstudio-desktop/>

Danach die Pakete des Kurses installieren. Der Befehl gehört in die **Console**
(Panel links unten), nicht in ein Skript:

```r
install.packages(c("tidyverse", "rmarkdown", "knitr", "sf", "pacman",
                   "gt", "leaflet", "DT", "geodata"))
```

* Falls nach einem CRAN-Mirror gefragt wird: einen beliebigen wählen (z. B. Deutschland/Münster)
* Auf die Frage, ob Pakete "from source" kompiliert werden sollen: **No** bzw. `n`

## Weiterführend

* [R und RStudio, Kapitel aus dem Buch von produnis](https://www.produnis.de/R/r-und-rstudio.html#rstudio)
