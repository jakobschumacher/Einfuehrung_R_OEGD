

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Einführung in die Open-Source-Software R----------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Inhalt und (Lern-)Ziele  ------------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# In der Fortbildung lernen Sie die Programmiersprache R und die Entwicklungsumgebung RStudio kennen. Die Fortbildung richtet sich vor allem an Anfänger:innen, es sind keine Vorkenntnisse in R notwendig - Basiskenntnisse der Statistik sind jedoch von Vorteil. Wir empfehlen das Epidemiologist R Handbook, welches als Open Access Publikation online verfügbar ist, anzuschauen.
# In der Fortbildung erhalten Sie neben einer kurzen Einführung in die Grundlagen der Programmierung mit Base R, eine theoretische und praktische Einführung in die moderne Datenanalyse mit Tidyverse: Sie lernen Daten einzulesen, mit tidyr umzustrukturieren und mit dplyr zu verarbeiten und zu aggregieren. Außerdem lernen Sie in Ansätzen ggplot2 Grafiken und die Anwendung von R Markdown kennen. Begleitend erhalten Sie einen Einblick in einfache statistische Auswertungen mit R.
#
# Neben den theoretischen Einblicken, werden wir von Beginn an praktisch arbeiten und Sie erlernen, wie aus einem R-Skript ein Kurzbericht entstehen kann. Am zweiten Tag können Sie das Erlernte mit Ihren eigenen Daten nachvollziehen. Bringen Sie deshalb bitte einen eigenen Datensatz und eine einfache eigene Fragestellung zur Bearbeitung und Auswertung ihrer Daten mit.
#
# Vorausgesetzt wird: Ein Laptop auf dem R installiert ist (möglichst >= R version 4.1.3) und RStudio (möglichst >= 2022.07.1).


# Ein paar R-Weisheiten
# Man kann eigentlich nie über "R-Anfänger" hinauskommen
# R heißt zu 90% googlen

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Aufbau des Kurses und Repos------------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Siehe Readme: https://jakobschumacher.github.io/Einfuehrung_R_OEGD/

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# R ist ein Taschenrechner ------------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Mit R können einfache Rechenaufgaben erledigt werden
3 + 2

# Neben einfachen Aufgaben können auch Komplexere bewältigt werden.
# Zum Beispiel Wurzel ziehen
sqrt(49)

# Es ist möglich einen Mittelwert zu berechnen.
mean(c(3,5,7,23,4))

# R kann auch eine Korrelation durchführen
cor(c(3,5,6,23,2,4,5), c(2,5,3,2,3,5,9))

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# R ist eine Programmiersprache ---------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Programmierung ist eine eigene Welt für sich.
# Wichtig zum Verständnis:
# Das Zeichen "#" ist ein Kommentar
# Das Zeichen "<-" ist eine Zuweisung zu einer Variablen
# Das Zeichen "%>%" ist ein Pipe-Parameter und verbindet zwei Dinge miteinander
# Das Zeichen "," ist ein Zeichen, dass etwas anderes anfängt
# Die Klammern "()" und "{}" werden an allen möglichen Stellen gebraucht
# Die Zeichenfolge NA steht für etwas nicht vorhandenes


# Mit R können Variablen gesetzt werden
a <- "Hallo"
b <- "Welt"
c(a,b)

# In R können Funktionen erstellt werden
# Programmierung der Funktion
meinefunktion <- function(x, y){
  x + y
}

# Ausführen der Funktion
meinefunktion(4,7)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# R ist nicht Excel ---------------------------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Man kann sich in R die Daten anzeigen lassen.
View(mtcars) # Zur Erläuterung: mtcars ist ein eingebauter Beispiel-Datensatz

# Aber man kann mit der Maus keine Zellen bearbeiten. Man verwendet auch keine
# Zellenbezüge wie z.B. A1:D4

# Bei R wird davon ausgegangen, dass man sich die Daten im Kopf vorstellt


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# R kümmert sich um Daten ---------------------------------------------
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


# Man kann sich Datenklassen mit dem Befehl class() anschauen
class(2)
class("Hallo Welt")

# Manche Datenklassen kann man in eine andere umwandeln
farben <- c("blau", "rot", "grün")
class(farben)
farben <- factor(farben)
class(farben)

# Es gibt Datenklassen für eine Sammlung von Datenpunkten
# ein data.frame entspricht einen Tabellenblatt bei Excel
tiertabelle <- data.frame(name = c("Hund", "Schlange", "Giraffe"), hoehe = c(1.1,0.2,9), fell = c("ja", "nein", "ja"))

# Eine Liste ist eine Sammlung von verschiedenen nicht einheitlichen Datenpunkten
kuenstlicheliste <- list(farben, tiertabelle, c(3,6,1,2,5))

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# R ist eigentlich eine Sammlung von kleinen Programmen---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In R funktioniert sehr vieles durch Zusatzpakete. Es gibt den R-Kern: base-r
# Dazu gibt es tausende von weiteren Paketen. Im Regelfall braucht man für bestimmte
# Anwendungen bestimmte Pakete. Und eigentlich kann man nicht gut sagen:
# "Ich kann R" sondern man muss sagen: "Ich kann tidyverse".
# Alle Pakete müssen am Anfang geladen werden.
# Das geht mit library()

# Das bekannteste Paket für Graphiken heißt ggplot2 mit dem zentralen Befehl ggplot()
install.packages("ggplot2")
library(ggplot2)


ggplot(mtcars) +
  aes(x = mpg, y = wt) +
  geom_line()


# Die bekanntesten Pakete für Datenmanagement heißen tidyr und dplyr, die beide in der Paketsammlung von tidyverse enthalten sind
install.packages("tidyverse")
library(tidyverse)
