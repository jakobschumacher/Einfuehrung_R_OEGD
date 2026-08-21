# Block 1: Showcase - Vom R-Skript zum fertigen Bericht

Referent: J

## Lernziele

Sie sehen an einem vollständigen Beispiel, was am Ende des Kurses möglich ist:
ein Bericht für den ÖGD, der aus einer einzigen Datei heraus als HTML, PDF oder
Word-Dokument erzeugt wird. Sie müssen hier noch nichts selbst tippen. Ziel ist,
die vier Schritte wiederzuerkennen, die der Kurs danach einzeln durchgeht:

1. Daten einlesen (Block 4)
2. Daten transformieren (Block 5)
3. Grafiken und Tabellen erstellen (Block 6)
4. Bericht erstellen (Block 7)

## Dateien

| Datei | Inhalt |
|---|---|
| `Showcase_OEGD_Bericht.Rmd` | Der Quelltext des Berichts |
| `Showcase_OEGD_Bericht.html` | Gerendertes Ergebnis als Webseite |
| `Showcase_OEGD_Bericht.pdf` | Gerendertes Ergebnis als PDF |
| `Showcase_OEGD_Bericht.docx` | Gerendertes Ergebnis als Word-Datei |

## Hinweise

* Der Bericht lädt die Daten live vom [Open-Data-Server des Robert Koch-Instituts](https://github.com/robert-koch-institut/COVID-19-Hospitalisierungen_in_Deutschland). Ohne Internetverbindung lässt er sich nicht rendern.
* Über den YAML-Block `params:` lässt sich das Bundesland umstellen, ohne eine einzige Codezeile zu ändern. Das ist der Kern der reproduzierbaren Berichterstattung.
* Die Karte nutzt die vorbereitete Datei `../beispieldaten/gadm/gadm41_DEU_1_pk.rds`. Der Kartenteil wird in Block 9 ausführlich behandelt.

## Weiterführend

* [Reports with R Markdown, Epi R Handbook](https://epirhandbook.com/en/reports-with-r-markdown.html)
