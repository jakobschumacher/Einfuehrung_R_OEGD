# Sich mit KI unterstützen lassen

Status: Gerüst. Wird im Kurs mündlich ergänzt.

Sprachmodelle wie ChatGPT, Claude oder Gemini sind beim Erlernen von R vor allem
als Nachschlagewerk nützlich. Sie ersetzen das Verstehen nicht, aber sie
verkürzen die Suche nach dem richtigen Befehl erheblich.

## Vier Situationen, in denen sich der Chat lohnt

**1. Ich weiß, was ich will, aber nicht wie es heißt**

> Ich habe in R einen data.frame mit den Spalten Landkreis, Datum und Fallzahl.
> Ich möchte die Summe der Fallzahlen pro Landkreis. Wie geht das mit dplyr?

**2. Ich verstehe eine Zeile Code nicht**

> Erkläre mir Zeile für Zeile, was dieser R-Code macht:
> `daten %>% group_by(Landkreis) %>% summarise(n = sum(Fallzahl, na.rm = TRUE))`

**3. Ich bekomme eine Fehlermeldung**

Die vollständige Fehlermeldung kopieren, zusammen mit dem Code, der sie ausgelöst
hat. Ohne den Code kann das Modell nur raten.

> Dieser Code wirft die Fehlermeldung `Error in ...: object 'Fallzahl' not found`.
> Hier ist der Code: ...  Hier ist die Ausgabe von `str(daten)`: ...

**4. Ich will Code aufräumen**

> Kannst du diesen R-Code kürzer und lesbarer schreiben, ohne das Ergebnis zu ändern?

## Was einen guten Prompt ausmacht

* Sagen, dass es um R geht, und welches Paket verwendet werden soll (Base R oder Tidyverse)
* Die Struktur der Daten mitliefern, am besten die Ausgabe von `str(daten)` oder `head(daten)`
* Das gewünschte Ergebnis beschreiben, nicht nur das Problem
* Nachfragen, wenn die Antwort nicht passt. Der zweite Versuch ist fast immer besser als der erste

## Grenzen

* Sprachmodelle erfinden Funktionen und Argumente, die es nicht gibt. Prüfen Sie jeden Befehl mit `?funktionsname`
* Ein Ergebnis, das ohne Fehlermeldung durchläuft, ist nicht automatisch richtig. Rechnen Sie Stichproben von Hand nach
* Keine personenbezogenen Daten in externe Chatdienste eingeben. Gesundheitsdaten sind besondere Kategorien personenbezogener Daten nach [Art. 9 DSGVO](https://dsgvo-gesetz.de/art-9-dsgvo/). Beschreiben Sie die Struktur der Daten, nicht die Daten selbst
* Klären Sie vor dem dienstlichen Einsatz mit Ihrer Behörde und der Datenschutzbeauftragten, welche Werkzeuge zulässig sind

## Weiterführend

Der komplette Arbeitsablauf mit KI, von der Fragestellung bis zum fertigen
Bericht, ist Thema von [Block 10](../block10_ki_workflow/README.md).
