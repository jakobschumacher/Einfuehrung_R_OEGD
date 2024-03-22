

<div id="header" align="center">
<img src="logo.png">
</div>


In der Fortbildung lernen Sie die Programmiersprache R und die Entwicklungsumgebung RStudio kennen. Der R-Kurs ist für den Öffentlichen Gesundheitsdienst (ÖGD) gedacht. Dieses Repository enthält Begleitmaterialien zum Präsenzkurs an der [Akademie für öffentliches Gesundheitswesen](https://www.akademie-oegw.de/).   

__Link zur Anmeldung zum Präsenzkurs__  
April 2024 [https://www.akademie-oegw.de/fortbildung/details/e-62024]https://www.akademie-oegw.de/fortbildung/details/e-62024)

__Inhalte der Schulung__  
In der Fortbildung erhalten Sie einen Überblick über die Programmiersprache R und die Entwicklungsumgebung RStudio. Die Fortbildung richtet sich vor allem an Anfänger:innen, es sind keine Vorkenntnisse in R notwendig - Basiskenntnisse der Statistik sowie Erfahrungen mit anderen syntaxbasierten Statistikprogrammen sind jedoch von Vorteil. Wir empfehlen das Epidemiologist R Handbook, welches als Open Access Publikation online verfügbar ist, zu nutzen. Vorbereitend empfehlen wir die Kapitel 1 bis 11 zu lesen.

In der Fortbildung erhalten Sie neben einer kurzen Einführung in die Grundlagen der Programmierung mit Base R, eine theoretische und praktische Einführung in die moderne Datenanalyse mit Tidyverse und RMarkdown. Wir folgen im Kurs den Schritten: 1) Daten einlesen, 2) Daten transformieren 3) Tabellen und Grafiken erstellen 4) Bericht erstellen. Diese Schritte werden immer wieder wiederholt: Im Showcase und in der Praxis beim Sehen und Nachmachen am ersten Veranstaltungstag, in den Übungen am zweiten Tag sowie als optionale Lehrwiederholung, die Sie zu Hause im Nachgang durchführen können. Für die praktischen Lerneinheiten können Sie unseren vorbereiteten Lehrdatensatz nutzen oder eigene Daten mitbringen. 

__Voraussetzungen__
Ein Laptop auf dem R (möglichst >= R version 4.1.3) und RStudio (möglichst >= 2022.07.1) installiert sind. Außerdem installieren Sie bitte folgende Packages: tidyverse, rmarkdown, knitr, sf, pacman, gt, leaflet, DT, geodata. Melden Sie sich gern bei Fragen zu den notwendigen Installationen.

Sollten die Installationen auf Ihrem dienstlichen Rechner nicht möglich sein, empfehlen wir ein privates Laptop mitzunehmen. 

__Tag 1__  

* 10.00 Begrüßung und Einführung in den Kurs
* 10.15 SHOWCASE: Vom [R-Script](showcase/Showcase_OEGD_Bericht.Rmd) zum [HTML-Bericht](showcase/Showcase_OEGD_Bericht.html) oder [PDF-Bericht](showcase/Showcase_OEGD_Bericht.pdf)
* 10.45 [SETUP: Installation und Kennenlernen von RStudio]((sehen_nachmachen/1_Variabltentypen_und_einfache_operationen.R))
  * Installation von R und RStudio falls noch notwendig
  * Was ist R?
  * Wie ist RStudio aufgebaut?
* 13.30 [SEHEN & NACHMACHEN 1: Daten einlesen]   
* 14.20 [SEHEN & NACHMACHEN 2: Daten transformieren](sehen_nachmachen/2_Packages_Tidyverse.R)  
* 16.30 [SEHEN & NACHMACHEN 3: Grafiken und Tabellen erstellen](sehen_nachmachen/3_Daten_lesen_transformieren.R)  
* 17.15 [SEHEN & NACHMACHEN 4: Bericht erstellen](sehen_nachmachen/4_Grafiken_und_Bericht.Rmd)  

__Tag 2__  

* PRAXIS: Freies Arbeiten mit R
* EXKURS 1: Github
* EXKURS 2: Kartenerstellung
* EXKURS 3: ChatGPT
* Resümee des Kurses und Abschluss

__Nach dem Kurs__

* [Handout der wichtigsten Inhalte des Kurses](handout_r-kurs.html)
* [Data specialization als Vertiefung](https://www.coursera.org/specializations/jhu-data-science)

## Benutzung
#### Variante 1: Gitrepository als ZIP herunterladen
![](img/download.png)


#### Variante 2: Gitrepository clonen

1. Öffne RStudio
2. Gehe ins Terminal 
3. "Klonen des Repositorys"
```
git clone https://github.com/jakobschumacher/Einfuehrung_R_OEGD.git
```



## Ordnerstruktur
Dieses Repository enthält alle notwendigen Datein für den Kurs

* Ordner __Sehen_und_Nachmachen__: Hier sind Skripte enthalten, die am Tag 1 verwendet werden
* Ordner __Showcase__: Hier ist der Showcase für einen Bericht
* Ordner __Beispieldaten__: Hier sind Daten angelgt, die während des Kurses verwendet werden
  * __Datei INKAR.csv__  Die Datei stammt aus der [Datenbank INKAR](https://www.inkar.de/). Die Datei wurde von BBSR heruntergeladen. BBSR ist an der Erstellung dieses R-Scriptes nicht beteiligt.
  * __Datei SC2Hospitalisierungen.csv__ Diese Datei stammt vom [Robert Koch-Institut](rki.de).  

## Bildquellen und Credits
- Logo [Freelogodesign.org](https://www.freelogodesign.org/)  
- Hosting [Github.com](https://github.com)  
- Software R [R-Project.org](https://www.r-project.org/) und RStduio [Posit.com](https://posit.com)  
- Wichtigste R-Packages [Tidyverse](https://www.tidyverse.org/packages/), [sf](https://r-spatial.github.io/sf/), [pacman](https://github.com/trinker/pacman)
- Inhalte [Epidemiologist R Handbook](https://epirhandbook.com/en/), [R epidemics consortium](https://www.repidemicsconsortium.org/)
