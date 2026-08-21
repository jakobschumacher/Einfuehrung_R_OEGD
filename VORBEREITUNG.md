# Vorbereitung auf den Kurs

Damit wir im Kurs direkt loslegen können, erledigen Sie diese vier Schritte
bitte vorab. Melden Sie sich gern, wenn dabei etwas klemmt - am besten vor dem
Kurstermin.

## 1. R und RStudio installieren

Bitte bringen Sie einen Laptop mit, auf dem beides installiert ist – zuerst R, danach RStudio:

- **R**: über CRAN, <https://cran.r-project.org> → passendes Betriebssystem wählen. Empfohlen ist die jeweils aktuelle Version.
- **RStudio Desktop** (kostenlose Open-Source-Variante): <https://posit.co/download/rstudio-desktop/>. Empfohlen ist die aktuelle Version.

Die Reihenfolge ist wichtig: RStudio ist nur eine Oberfläche und findet beim ersten Start keine R-Installation, wenn R noch nicht vorhanden ist.

> Sollten Installationen auf Ihrem dienstlichen Rechner nicht möglich sein (fehlende Administrationsrechte, gesperrte Downloads), klären Sie das bitte frühzeitig mit Ihrer IT oder bringen Sie ein privates Laptop mit.


## 2. Pakete installieren

Kopieren Sie den folgenden Befehl in die **Console** (diese finden Sie in Rstudio in einem Tab zumeist links unten) und bestätigen Sie mit Enter:

```r
install.packages(c("tidyverse", "rmarkdown", "knitr", "sf", "pacman",
                   "gt", "leaflet", "DT", "geodata"))
```

Hinweise dazu:

- Der Befehl gehört in die Console, **nicht** in ein Skript oder einen R-Markdown-Chunk. Installiert wird einmalig
- Falls Sie nach einem CRAN-Mirror gefragt werden: einen beliebigen (z. B. Deutschland/Münster) auswählen.
- Sollte die Frage erscheinen, ob Pakete „from source" kompiliert werden sollen, antworten Sie mit **No** (bzw. `n`). Damit werden fertige Binärpakete installiert, was schneller und weniger fehleranfällig ist.
  
> Auf manchen Arbeitsrechnern ist die Installation von bestimmten Paketen nicht möglich, da diese bestimmte Software auf dem Arbeitsrechner voraussetzen. Wenn das der Fall ist lassen Sie diese zur Not weg. 

## 3. Kursmaterial herunterladen

Alle Skripte, Daten und Berichte des Kurses liegen in einem Repository auf
Github: <https://github.com/jakobschumacher/Einfuehrung_R_OEGD>. Sie können es
auf zwei Wegen auf Ihren Rechner holen. Variante 1 genügt völlig, Variante 2
setzt Git voraus.

### Variante 1: Repository als ZIP herunterladen

Auf der Github-Seite auf den grünen Knopf "Code" klicken und "Download ZIP"
wählen. Anschliessend das Archiv an einen Ort Ihrer Wahl entpacken.

![](.github/download.png)

### Variante 2: Repository clonen

1. Öffnen Sie RStudio
2. Gehen Sie ins Terminal
3. Führen Sie diesen Befehl aus:

```
git clone https://github.com/jakobschumacher/Einfuehrung_R_OEGD.git
```

## 4. Das Kursprojekt öffnen

Öffnen Sie im entpackten Ordner die Datei `Einfuehrung_R_OEGD.Rproj` per
Doppelklick. RStudio startet damit das Kursprojekt und setzt das
Arbeitsverzeichnis richtig. Das ist wichtig, weil die Skripte ihre Daten über
Pfade wie `beispieldaten/INKAR.csv` finden.
