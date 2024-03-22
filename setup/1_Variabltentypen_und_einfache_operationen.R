

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Lernziele ------------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In diesem Block erhalten wir eine Einführung in die Vielfältigkeit von R. Um R 
# "benutzerfreundlicher" nutzen zu können gibt es eine Einführung in die dazu gehörige
# Entwicklungsumgebung R Studio, in der wir wiederverwendbare Skripte erstellen können, 
# um unsere Arbeit mit den Daten zu strukturieren und reproduzierbar zu machen. Im 
# Anschluss geht es um die Grundlagen in der Programmierung mit R.
# Zunächst wird dargestellt, wie R als Taschenrechner für einfache bis komplexe 
# mathematische Operationen genutzt werden kann, etwa zum Wurzelziehen oder zur
# Korrelationsberechnung. Im nächsten Abschnitt wird betont, dass R eine vollwertige
# Programmiersprache ist, wobei die Bedeutung von speziellen Zeichen wie "#", "<-", 
# und "%>%" erläutert wird. Zudem wird der Umgang mit Variablen und das Erstellen 
# eigener Funktionen vorgestellt. Weiterhin wird verdeutlicht, dass R sich von 
# Programmen wie Excel unterscheidet, da es keine visuellen Zellenbezüge gibt und 
# Daten im Kopf visualisiert werden sollten. Der nächste Teil widmet sich den 
# Datenklassen in R, welche von einfachen Texten und Zahlen bis hin zu komplexen 
# Strukturen wie Datenframes und Listen reichen. Der Umgang mit Datumsangaben in R 
# wird durch verschiedene Methoden zur Erstellung und Formatierung dargestellt. 
# Außerdem wird erläutert, wie in R einzelne Werte, Vektoren, Tabellen und Listen 
# gehandhabt werden, einschließlich des Zugriffs auf Teile eines Datenframes. 
# Schließlich zeigt der Block, wie eingebaute Funktionen in R verwendet werden.

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 0 R Studio als Entwicklungsumgebung ---------------------------------------
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
# die wir mit unserem Code generieren (Reiter "Plots"). Des Weiteren können wir hier einsehen, aus 
# Ordner unser aktuelles Skript zugreift, was beim Einlesen von Daten und Abspeichern von Output 
# relevant sein kann (Reiter "Files"). EIn besonders hilfreiches Tool in diesem Panel ist der 
# Help-Reiter. Hier können wir uns die Hilfsseiten von Funktionen anzeigen lassen, in dem wir in 
# der Konsole ?Funktionsname oder help(Funktionsname) eingeben und ausführen. Dazu aber später mehr.


# Neben dem grundlegenden Aufbau hat R Studio viele weitere Tools zu bieten. Beispielsweise kann 
# man R Studio personalisieren (z.B. Panelanordnung, Textfarbe etc.). Für weitere Informationen
# zu R Studio siehe bspw.: https://www.produnis.de/R/r-und-rstudio.html#rstudio

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 1 R ist ein Taschenrechner ------------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Mit R können einfache Rechenaufgaben erledigt werden
3 + 2 # Addition
3 - 2 # Substraktion
3 / 2 # Division
3 * 2 # Multiplikation
3 ^ 2 # Potenzierung (3 "hoch" 2)

# Neben einfachen Aufgaben können auch Komplexere bewältigt werden.
# Zum Beispiel Wurzel ziehen
sqrt(49)

# Es ist möglich einen Mittelwert zu berechnen.
mean(c(3,5,7,23,4))

# R kann auch eine Korrelation durchführen
cor(c(3,5,6,23,2,4,5), c(2,5,3,2,3,5,9))

# R kann auch Werte vergleichen
5 == 5 # ist gleich
5 != 5 # ist ungleich
3 >= 2 # ist größer gleich
3 <= 2 # ist kleiner gleich

# Das ist wichtig, wenn wir später Daten nach bestimmten Merkmalen "filtern" wollen.
# Der Vergleich funktioniert auch mit Wörtern/Buchstaben und anderen Datenstrukturen
"a" == "a" 
"b" == "B" # Was passiert hier?

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 2 R ist eine Programmiersprache -------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Programmierung ist eine eigene Welt für sich.
# Wichtig zum Verständnis:
# Das Zeichen "#" ist ein Kommentar
# Das Zeichen "<-" ist eine Zuweisung zu einer Variablen
# Das Zeichen "%>%" ist ein Pipe-Parameter und verbindet zwei Dinge miteinander
# Das Zeichen "," ist ein Zeichen, dass Elemente voneinander trennt. Der Punkt wird in R als Dezimaltrennzeichen verwendet (englische Schreibweise)
# Die Klammern "()" und "{}" werden an allen möglichen Stellen gebraucht
# Die Zeichenfolge NA steht für etwas nicht vorhandenes


# Mit R können Variablen gesetzt werden
a <- "Hallo"
b <- "Welt"

# Wenn man eine Variable mit Strg+Enter aufruft wird sie ausgeführt
a
b

# In R können Funktionen erstellt werden
# Programmierung der Funktion
meinefunktion <- function(x, y){
  print("Die Addition ergibt:")
  print(x + y)

  print("Die Multiplikation ergibt:")
  print(x * y)
}

# Ausführen der Funktion
meinefunktion(4,7)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 3 Daten anzeigen oder R ist nicht Excel ------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Der R-Weg sich die Datein anzeigen zu lassen geht mit einem eingebauten Befehl
# Zur Erläuterung: mtcars ist ein eingebauter Beispiel-Datensatz
str(mtcars)


# Man kann sich die Daten auch "wie in Excel" anzeigen lassen.
View(mtcars)

# Weitere Unterschiede zu Excel
# Man bearbeitet nicht mit der Maus.
# Man verwendet keine Zellenbezüge wie z.B. A1:D4
# Bei R wird davon ausgegangen, dass man sich die Daten im Kopf vorstellt
# Bei Excel werden die Rohdaten gändert. Bei R erstellt man aus Rohdaten andere Daten.
# Mit R kann man "reproduzierbar" arbeiten

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 4 R Variablen sind einer Datenklasse zugeordnet ---------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Essentiell zum Verständnis für R sind Datenklassen.

# character = ein Text
# numeric = eine Zahl
# factor = eine Gruppe
# date = ein Datum
# logical = ein Ja/Nein Wert
# data.frame = ein tabellarischer Datensatz
# list = eine Sammlung von Klassen


# Für bestimmte Anwendungsfälle gibt es bestimmte Datenklassen

# Graphisches-Objekt
# Karten-Objekt
# Soziales Netzwerk-Objekt
# ... und sehr sehr viel mehr

# Anlegen von Variablen
meine_text_variable <- "Hallo Welt"
meine_zahl_variable <- 29

# Man kann sich Datenklassen mit dem Befehl class() anschauen
class(meine_text_variable) # Class anzeigen
class(meine_zahl_variable) # Class anzeigen

# Manche Datenklassen kann man in eine andere umwandeln
meine_text_variable <- c("blau") # Variable festlegen
class(meine_text_variable) # Class anzeigen
meine_text_variable <- factor(meine_text_variable) # Umwandeln in ein Factor
class(meine_text_variable) # Class anzeigen


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 5 Umgang mit Datumsangaben ------------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Anlegen eines Datums ist nicht einfach

# Anlage als Text
mein_datum <- "03.05.2023"
class(a) # Anlage als Text

# Anlage als direkte Zahl geht nicht
mein_datum <- 03.05.2023

# Anlage als Datum direkt im richtigen Format
mein_datum <- as.Date("2022-06-04")
class(mein_datum)

# Anlage als Datum mit Formatangabe
mein_datum <- as.Date("03.05.2023", format = "%d.%m.%Y")
class(mein_datum)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 6 Einzelwerte, Vektoren, dataframes  --------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Einzelwert
mein_einzelwert <- 5
mein_einzelwert
class(numeric)

# Ein Vektor (eine Sammlung von mehreren Werten) wird üblicherweise mit der Funktion c() angelegt
# In anderen Programmiersprachen wie bspw. Python wird auch der Begriff Array verwendet.
mein_vektor <- c(5,7,3,8) # Anlegen des Vektors/Arrays
mein_vektor # Anzeigen des Vektorss
class(mein_vektor) 


# Es gibt Datenklassen für eine ganze Tabelle wird mit der Funktion data.frame() erreicht
tiertabelle <- data.frame(
  name = c("Hund", "Schlange", "Giraffe"),
  hoehe = c(1.1,0.2,9),
  fell = c("ja", "nein", "ja"))

tiertabelle # Anzeigen lassen
class(tiertabelle) # Classe anzeigen

# Die einzelnen Spalten lassen sich aus einer Tabelle mit dem $ Zeichen herausholen
tiertabelle$name

# Die einzelnen Spalten können unterschiedliche Klassen enthalten
class(tiertabelle$name)
class(tiertabelle$hoehe)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 7 Ausführen von Operationen -----------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Mit Hilfe von eingebauten Funktionen können Rechenoperationen angewendet werden.
# R hat viele integrierte Funktionen, die genutzt werden können. Viele sind 
# mit der Installation von R bereits integriert (Basisfunktionen, "base R"). Viele,
# viele mehr können über zusätzliche Packages geladen werden. Die Community und 
# auch die Diversität an Funktionen, die öffentlich zur Verfügung stehen steigt 
# immer weiter.

# Anlage eines numerischen Vektors
mein_vektor <- c(3,5,2,6,1,22,7)

# Maximum
max(mein_vektor)

# Minimum
min(mein_vektor)

# Median
median(mein_vektor)

# Mittelwert
mean(mein_vektor)

# Anlage eines Datums Vektors
mein_datums_vektor <- c("2022-06-01", "2024-07-03", "2021-09-23")
mein_datums_vektor <- as.Date(mein_datums_vektor)

# Frühestes Datum
min(mein_datums_vektory)

#Medianer Wert
median(mein_datums_vektor)

# Mittelwert
mean(mein_datums_vektor)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 8 Aufbau von Funktionen ---------------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Funktionen haben einen bestimmten Aufbau. Sie bestehen und aus dem Funktionsnamen
# und sogenannten Argumenten. Die Argumente werden in Klammern ausgewiesen. Um zu 
# sehen, welche Argumente in einer bestimmten Funktion genannt werden können, können
# wir auf die Hilfsseiten zugreifen.

?mean

# Hier wird nun folgendes angezeigt: mean(x, trim = 0, na.rm = FALSE, ...)
# In den Klammern finden sich die Argumente, die auf der Hilfsseite weiter unten auch 
# näher beschrieben werden. Argumente werden mit = definiert. Bei den Argumenten trim und 
# na.rm sind die Argumente bereits definiert. Daher sind diese Argumente optional. 
# x muss durch uns erst noch definiert werden.

# Beispiel, wenn wir x nicht definieren (Fehlermeldung)
mean()

# Beispiel, mit x definiert. Obwohl wir die anderen Argumente nicht explizit definiert haben
# krigen wir hier ein Ergebnis
mean(x = c(1,2,3,4,5))

# Argumente müssen nicht ausgeschrieben werden. Die Reihenfolge innerhalb der Klammern ist relevant:
mean(c(1,2,3,4,5), 0, FALSE)
# ist das gleiche wie:
mean(x = c(1,2,3,4,5), trim = 0, na.rm = FALSE)

