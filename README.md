

<div id="header" align="center">
<img src=".github/logo.png">
</div>

# Einführung in R für den ÖGD

In der Fortbildung lernen Sie die Programmiersprache R und die Entwicklungsumgebung RStudio kennen. Der R-Kurs ist für den Öffentlichen Gesundheitsdienst (ÖGD) gedacht. Dieses Repository enthält Begleitmaterialien zum Präsenzkurs an der [Akademie für öffentliches Gesundheitswesen](https://www.akademie-oegw.de/).   

## Inhalte der Schulung

In der Fortbildung erhalten Sie einen Überblick über die Programmiersprache R und die Entwicklungsumgebung RStudio. Die Fortbildung richtet sich vor allem an Anfänger:innen, es sind keine Vorkenntnisse in R notwendig - Basiskenntnisse der Statistik sowie Erfahrungen mit anderen syntaxbasierten Statistikprogrammen sind jedoch von Vorteil. Wir empfehlen das Epidemiologist R Handbook, welches als Open Access Publikation online verfügbar ist, zu nutzen. Vorbereitend empfehlen wir die Kapitel 1 bis 11 zu lesen.

In der Fortbildung erhalten Sie neben einer kurzen Einführung in die Grundlagen der Programmierung mit Base R, eine theoretische und praktische Einführung in die moderne Datenanalyse mit Tidyverse und RMarkdown. Wir folgen im Kurs den Schritten: 1) Daten einlesen, 2) Daten transformieren 3) Tabellen und Grafiken erstellen 4) Bericht erstellen. Diese Schritte werden immer wieder wiederholt: Im Showcase und in der Praxis beim Sehen und Nachmachen am ersten Veranstaltungstag, in den Übungen am zweiten Tag sowie als optionale Lehrwiederholung, die Sie zu Hause im Nachgang durchführen können. Für die praktischen Lerneinheiten können Sie unseren vorbereiteten Lehrdatensatz nutzen oder eigene Daten mitbringen. 

## Vor dem Kurs

Bitte bringen Sie einen Laptop mit installiertem R und RStudio mit und laden
Sie vorab das Kursmaterial herunter. Die Anleitung dazu steht in
[VORBEREITUNG.md](VORBEREITUNG.md).

## Kursplan

### Tag 1

* Begrüßung und Einführung in den Kurs
* **Block 1:** [SHOWCASE](block01_showcase/): Vom [R-Script](block01_showcase/Showcase_OEGD_Bericht.Rmd) zum [HTML-Bericht](block01_showcase/Showcase_OEGD_Bericht.html) oder [PDF-Bericht](block01_showcase/Showcase_OEGD_Bericht.pdf) (J)
* **Block 2:** [SETUP: Installation und Kennenlernen von RStudio](block02_rstudio_setup/) (F)
  * Installation von R und RStudio falls noch notwendig
  * Was ist R?
  * Wie ist RStudio aufgebaut?
  * [Skript zum Mitmachen](block02_rstudio_setup/rstudio_kennenlernen.R)
* **Block 3:** [Basis-Programmierinhalte und AI-Unterstützung](block03_base_r/) (F)
  * Base-R
  * Syntax
  * [Handout](block03_base_r/handout/handout_r-kurs.html)
  * Sich mit AI unterstützen lassen
  * [Skript zum Mitmachen](block03_base_r/base_r_grundlagen.R)
* **Block 4:** [Daten einlesen](block04_daten_einlesen/) (L)
  * Datengrundlage (Excel, CSV, Webseiten)
  * Einlesen mit BaseR
  * Übliche Probleme: Trennzeichen, Kodierung, Kopfzeilen
  * Pakete installieren und laden
  * Einlesen rio::import
  * Einlesen mit AI Unterstützung
  * [Skript zum Mitmachen](block04_daten_einlesen/1_Daten_lesen_pakete.R)
* **Block 5:** [Daten transformieren](block05_daten_transformieren/) (L)
  * Tidyverse und die Pipe
  * Filter
  * Select
  * Mutate
  * Summarise
  * Pivot longer und pivot wider
  * Für Experten: Separate and unite
  * Für Experten: Join
  * [Skript zum Mitmachen](block05_daten_transformieren/2_Daten_transformieren.R)
* **Block 6:** [Grafiken und Tabellen erstellen](block06_grafiken_tabellen/) (F)
  * Ggplot2
  * GT
  * [Skript zum Mitmachen](block06_grafiken_tabellen/3_Grafiken_Tabellen.R)


### Tag 2

* Begrüßung
* Freies Arbeiten mit R: [eigener Bericht](block07_bericht/eigener_bericht/Abwasserwochenbericht_unvollstaendig.Rmd)
* **Block 7:** [Bericht erstellen](block07_bericht/) (J)
  * Markdown
  * Quarto
  * [Datei zum Mitmachen](block07_bericht/4_Bericht.Rmd)
* **Block 8:** [Github und Opencode](block08_github/) (J)
* **Block 9:** [Kartenerstellung](block09_karten/) (L)
* **Block 10:** [Showcase Arbeiten im AI-Chat und arbeiten mit Claude Code](block10_ki_workflow/)
* Resümee des Kurses und Abschluss

## Weiterlernen nach dem Kurs 

* [Handout der wichtigsten Inhalte des Kurses](block03_base_r/handout/handout_r-kurs.html)
* [Buch für R zum Thema Gesundheit in deutsch](https://www.produnis.de/R/)
* [The Epidemiologist R Handbook](https://epirhandbook.com/en/)
* [Data specialization als Vertiefung](https://www.coursera.org/specializations/jhu-data-science)

## Mitarbeiten

Verbesserungen am Kursmaterial sind willkommen. Wie das geht, steht in
[CONTRIBUTING.md](.github/CONTRIBUTING.md).
