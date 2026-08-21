#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Lernziele ------------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In diesem Block lernen wir die Entwicklungsumgebung RStudio kennen. RStudio ist
# nicht R selbst, sondern die Oberfläche, in der wir mit R arbeiten. Wir schauen
# uns an, wofür die vier Panele da sind, wo wir Skripte schreiben, wo Code
# ausgeführt wird, wo wir sehen welche Daten geladen sind und wo Grafiken und
# Hilfeseiten erscheinen. Außerdem öffnen wir das Kursprojekt über die
# .Rproj-Datei, damit alle Pfade in den späteren Skripten funktionieren.
# Die Programmierung mit R selbst folgt im nächsten Block.

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 1 R Studio als Entwicklungsumgebung ---------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# R Studio ist eine sogenannte Enticklungsumgebung. Entwicklungsumgebungen 
# unterstützen den Programmierprozess mit vielen hilfreichen Tools, um die Arbeit 
# mit Daten und Code zu strukturieren und zu erleichtern. R Studio ist dabei die 
# Entwicklungsumgebung in der wir das Programmieren mit R strukturieren. R Studio 
# bietet zahlreiche Tools. Für den Einstieg in das Arbeiten mit R sind zunächst jedoch
# vor allem die vier Panele relevant, die man beim Öffnen von R Studio zu sehen bekommt:

## Source/Skriptfenster (oben links)
# Dieses Panel dient der Erstellung von Skripten. Hier können wir unseren Code schreiben 
# und kommentieren (damit andere oder wir selbst den Code verstehen). Skripte, die wir hier
# geschrieben haben können wir als .R-Datei abspeichern, um sie in Zukunft wieder zu verwenden.

## Console (unten links)
# In der Konsole befindet sich unser Taschenrechner R. In der Konsole können wir ähnlich
# wie im Skriptfenster Code schreiben. Der Unterschied: In der Konsole können wir keine Skripte
# schreiben -- wir können hier lediglich Code ausführen. Auch der Code den wir im Skriptfenster
# schreiben, wird in der Konsole verarbeitet und ausgeführt. 

## Environment/Umgebung (oben rechts)
# Die Umgebung zeigt uns an, welche Objekte wir aktuell geladen/zwischengespeichert haben. Die 
# Umgebung ist sehr hilfreich, da sie uns einen Überblick über die geladenen Datenstrukturen gibt.
# Das wird später deutlich, wenn wir unsere ersten Objekte erstellt oder ersten Daten geladen haben.

## Ausgabefenster und Sonstiges (unten rechts)
# In diesem Panel sind verschiedene Dinge zu finden. Beispielsweise werden hier Abbildungen angezeigt, 
# die wir mit unserem Code generieren (Reiter "Plots"). Des Weiteren können wir hier einsehen, auf welchen 
# Ordner unser aktuelles Skript zugreift, was beim Einlesen von Daten und Abspeichern von Output 
# relevant sein kann (Reiter "Files"). Ein besonders hilfreiches Tool in diesem Panel ist der 
# Help-Reiter. Hier können wir uns die Hilfsseiten von Funktionen anzeigen lassen, in dem wir in 
# der Konsole ?Funktionsname oder help(Funktionsname) eingeben und ausführen. Dazu aber später mehr.


# Neben dem grundlegenden Aufbau hat R Studio viele weitere Tools zu bieten. Beispielsweise kann 
# man R Studio personalisieren (z.B. Panelanordnung, Textfarbe etc.). Für weitere Informationen
# zu R Studio siehe bspw.: https://www.produnis.de/R/r-und-rstudio.html#rstudio

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 2 Das Kursprojekt öffnen -------------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Im Wurzelverzeichnis des Kursmaterials liegt eine .Rproj-Datei. Wenn Sie diese
# Datei doppelklicken, öffnet RStudio das Kursprojekt und setzt das
# Arbeitsverzeichnis auf den Kursordner. Das ist wichtig, weil die Skripte der
# folgenden Blöcke Daten mit Pfaden wie "beispieldaten/INKAR.csv" einlesen.
# Diese Pfade gelten relativ zum Arbeitsverzeichnis.

# Mit dieser Funktion können Sie prüfen, wo R gerade steht:
getwd()

# Die Ausgabe sollte auf den Ordner mit dem Kursmaterial zeigen und nicht auf
# einen der Blockordner.

# Diese Funktion zeigt, welche Dateien R dort findet:
list.files()
