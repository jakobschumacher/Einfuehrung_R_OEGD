# Mitarbeiten am Kursmaterial

Dieser Leitfaden richtet sich an die Dozentinnen und Dozenten des R-Kurses und
an alle, die das Material verbessern möchten. Er ist bewusst kurz: Für alles,
was nicht speziell dieses Repository betrifft, stehen unten Links auf gute
Anleitungen.

Wer eine Frage hat oder etwas gefunden hat, ohne es selbst beheben zu wollen,
legt am einfachsten ein [Issue](https://docs.github.com/de/issues/tracking-your-work-with-issues/using-issues/creating-an-issue)
an. Das ist ausdrücklich willkommen und kostet nichts als zwei Sätze.

## Kleine Änderungen: direkt im Browser

Für Tippfehler, Textänderungen und neue Links braucht es kein Git auf dem
eigenen Rechner:

1. Die Datei auf github.com öffnen
2. Oben rechts auf das Stift-Symbol klicken
3. Ändern, unten einen kurzen Kommentar schreiben, auf "Propose changes" klicken

Github legt dabei von selbst einen Branch und einen Pull Request an. Anleitung
mit Bildern: [Dateien bearbeiten](https://docs.github.com/de/repositories/working-with-files/managing-files/editing-files).

## Grössere Änderungen: in RStudio

Für neue Skripte, geänderte Datensätze oder alles, was man vorher ausprobieren
muss:

1. **Branch anlegen.** Im Git-Reiter von RStudio auf das lila Symbol, Name zum
   Beispiel `block09-karten`. Nie direkt auf `main` arbeiten
2. **Ändern und committen.** Im Git-Reiter die geänderten Dateien anhaken,
   "Commit", eine Zeile schreiben, was sich geändert hat
3. **Push.** Der grüne Pfeil nach oben
4. **Pull Request öffnen.** Github bietet den Branch danach auf der
   Startseite des Repositories von selbst an.
   [Anleitung](https://docs.github.com/de/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)

Wenn Git in RStudio noch nicht eingerichtet ist, führt
[Happy Git and GitHub for the useR](https://happygitwithr.com/) Schritt für
Schritt hindurch. Das ist die beste Anleitung für R-Leute, die es gibt.

Wer eine `.Rmd` ändert, rendert sie einmal und committet die erzeugte
`.html`-Datei mit. Die gerenderten Fassungen liegen bewusst im Repository,
damit man sie ohne Rendern ansehen kann.

## Vor dem Pull Request kurz prüfen

* Geändertes Skript einmal komplett durchlaufen lassen, Arbeitsverzeichnis ist
  die Projektwurzel, also über die `.Rproj`-Datei geöffnet
* Geändertes `.Rmd` gerendert und die Ausgabe mitcommittet
* Neue oder geänderte Links einmal angeklickt
* Neue Dateien liegen im richtigen Blockordner

## Konventionen in diesem Repository

* Pro Kursblock gibt es einen Ordner `blockNN_thema`. Die `README.md` darin
  enthält ausschliesslich die Ziele des Blocks, sonst nichts
* **Blockordner bleiben auf Ebene 1**, keine Verschachtelung nach Kurstagen.
  Grund sind die Pfade: `.R`-Skripte lesen projekt-relativ
  (`beispieldaten/INKAR.csv`, funktioniert über die `.Rproj`-Datei),
  `.Rmd`-Dateien dokument-relativ (`../beispieldaten/...`, weil knitr das
  Verzeichnis der Quelldatei als Arbeitsverzeichnis setzt). Eine zusätzliche
  Ordnerebene bricht die zweite Variante
* Material, das nur zu einem Block gehört, liegt in dessen Ordner.
  `beispieldaten/` ist für das, was mehrere Blöcke brauchen
* Deutsch mit richtigen Umlauten, die Dateien sind UTF-8
* Die Skripte sind zum zeilenweisen Mitmachen im Kurs gedacht, nicht zum
  Durchlaufen am Stück. `block03_base_r/base_r_grundlagen.R` enthält deshalb
  bewusst eine nicht lauffähige Zeile (`mein_datum <- 03.05.2023`) als
  Negativbeispiel
* **Keine personenbezogenen Daten ins Repository.** Gesundheitsdaten sind
  besondere Kategorien personenbezogener Daten nach
  [Art. 9 DSGVO](https://dsgvo-gesetz.de/art-9-dsgvo/). Für den Kurs nur offene
  oder synthetische Daten verwenden
* Grosse Dateien vermeiden. Das Repository liegt bei rund 8,7 MB, und der
  ZIP-Download ist der übliche Weg der Teilnehmenden

## Woran gerade Hilfe gebraucht wird

**Ausgearbeitet sind die Blöcke 1 bis 7.** Offene Punkte darin:

* **Block 4**: Der Agendapunkt "Einlesen mit KI-Unterstützung" steht in der
  Kursagenda, fehlt aber im Skript. Wäre ein Abschnitt 7 in
  `1_Daten_lesen_pakete.R`
* **Block 6**: `3_Grafiken_Tabellen.R` ist mit rund 55 Zeilen knapp und
  arbeitet mit dem eingebauten Datensatz `mtcars`. Sinnvoll wären weitere Geome
  (`geom_col()`, `geom_histogram()`, `geom_point()`), Beschriftung mit `labs()`,
  ein Theme, `ggsave()` und eine Umstellung auf
  `beispieldaten/SC2Hospitalisierungen.csv`, damit die Blöcke 4 bis 6 auf
  demselben Datensatz aufeinander aufbauen
* **Block 7**: Der Agendapunkt "Quarto" hat kein Material. Geplant ist ein
  Minimalbeispiel `bericht_quarto.qmd`

**Nur Ziele, noch kein Material: Blöcke 8, 9 und 10.**

* **Block 8, Github und Opencode**: Warum Versionskontrolle im ÖGD, Konto
  anlegen, Repository klonen, der Zyklus aus add, commit und push,
  ZIP-Download für alle ohne Git, Einordnung von Opencode. Angedacht sind
  `git_grundlagen.md` und `spickzettel_git.md`
* **Block 9, Kartenerstellung**: Der Code existiert schon verstreut und muss
  nur in ein Skript `karten.R` zusammengeführt werden. Vorlagen sind der
  Karten-Chunk in `block01_showcase/Showcase_OEGD_Bericht.Rmd` (RDS lesen,
  `st_as_sf()`, `left_join()`, `geom_sf()`, ein Bundesland hervorheben) und die
  Leaflet-Karte in `block07_bericht/4_Bericht.Rmd`. Daten liegen bereit:
  `beispieldaten/gadm/gadm41_DEU_1_pk.rds` für die Bundesländer und
  `beispieldaten/INKAR.csv` für eine Choroplethenkarte auf Kreisebene. Die
  Kreisgrenzen wurden entfernt, weil sie 7,5 MB gross waren und nirgends
  gelesen wurden; sie lassen sich mit
  `geodata::gadm(country = "Germany", level = 2)` nachladen
* **Block 10, KI-Workflow**: Live-Demonstration von der Fragestellung bis zum
  Bericht, also Datensatz beschreiben, Skript erzeugen lassen, Fehlermeldung
  zurückspielen, Bericht erzeugen, Ergebnis gegenprüfen. Dazu der Unterschied
  zwischen Chat im Browser und einem Werkzeug mit Dateizugriff. Angedacht sind
  `demo_ablauf.md` und ein bewusst unsauberer `demo_datensatz.csv`. Wer den
  Block hält, ist in der Kursagenda noch nicht festgelegt

## Weiterführende Anleitungen

Github-Dokumentation, auf Deutsch:

* [Hello World, der Einstieg in Github](https://docs.github.com/de/get-started/start-your-journey/hello-world)
* [Github Flow](https://docs.github.com/de/get-started/using-github/github-flow), der Arbeitsablauf mit Branches und Pull Requests in Kurzform
* [Dateien im Browser bearbeiten](https://docs.github.com/de/repositories/working-with-files/managing-files/editing-files)
* [Pull Request erstellen](https://docs.github.com/de/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)
* [Pull Requests begutachten](https://docs.github.com/de/pull-requests/collaborating-with-pull-requests/reviewing-changes-in-pull-requests/about-pull-request-reviews)
* [Issue anlegen](https://docs.github.com/de/issues/tracking-your-work-with-issues/using-issues/creating-an-issue)

Git zusammen mit R und RStudio:

* [Happy Git and GitHub for the useR](https://happygitwithr.com/), das Standardwerk, inklusive Einrichtung
* [Versionskontrolle in RStudio](https://docs.posit.co/ide/user/ide/guide/tools/version-control.html)
* [Zugangsdaten einrichten mit usethis](https://usethis.r-lib.org/articles/git-credentials.html)
* [Collaboration, Epi R Handbook](https://epirhandbook.com/en/new_pages/collaboration.html)
* [Github Desktop](https://desktop.github.com/) für alle, die kein Terminal mögen

Sonstiges:

* [Markdown-Grundlagen](https://www.markdownguide.org/basic-syntax/)
