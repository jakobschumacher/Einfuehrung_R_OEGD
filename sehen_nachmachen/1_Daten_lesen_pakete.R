
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Lernziele ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In diesem Block lernen wir etwas über die Schwierigkeit, Daten einzulesen. Der bereitgestellte R-Code zeigt zuerst, wie man CSV-Dateien mit verschiedenen Eigenheiten wie Trennzeichen, Kodierungsproblemen und Kommentarzeilen handhabt. Anschließend wird das Einlesen von Excel-Dateien mithilfe des readxl-Pakets erläutert. Ein weiterer Abschnitt führt das Paket rio ein, welches das Einlesen verschiedener Dateiformate erleichtert. Schließlich wird das Prinzip von "Tidy Data" und die Anwendung des tidyverse-Pakets, insbesondere tidyr, vorgestellt. Hier werden Unterschiede zwischen breiten und langen Datenformaten, Methoden zum Trennen und Zusammenführen von Spalten sowie Techniken zum Verknüpfen von Datenmengen mithilfe von Joins dargelegt.


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 1 CSV Daten einlesen ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Einlesen einer unproblematischen CSV Datei
daten_csv_base <- read.csv("beispieldaten/csv_datei_unproblematisch.csv")

# Inhalt anzeigen
print(daten_csv_base)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 2 Übliche Probleme -----
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


#  Datei mit dem Semikolon-Problem einlesen
# Wir verwenden das `sep`-Argument, um das Semikolon als Trennzeichen anzugeben
semikolon_daten <- read.csv("beispieldaten/csv_datei_semikolon.csv", sep = ";")
print(semikolon_daten)

# Datei mit Umlautproblemen einlesen
# Für dieses Beispiel nehmen wir an, dass die Datei in UTF-8 gespeichert wurde.
# Das `fileEncoding`-Argument gibt die Kodierung der Datei an
umlaut_daten <- read.csv("beispieldaten/csv_datei_kodierung_utf8.csv", fileEncoding = "UTF-8")
print(umlaut_daten)

# Nun ein Beispiel einer Datei mit Umlauten, die mit ASCII gespeichert wurde
umlaut_daten <- read.csv("beispieldaten/csv_datei_kodierung_ascii.csv", fileEncoding = "ASCII")
print(umlaut_daten)

# Datei mit den Kommentarzeilen einlesen
# Das `skip`-Argument gibt an, wie viele Zeilen am Anfang der Datei übersprungen werden sollen
kommentar_daten <- read.csv("beispieldaten/csv_datei_kopfzeilen.csv", skip = 2)
print(kommentar_daten)




#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 3 Installation von Paketen ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In R gibt es den R-Kern: base-r. Dazu gibt es tausende von weiteren Pakete. Irgendwelche user schreiben ein solches Paket und laden sie auf eine Internetdatenbank hoch. Vor dort können die Pakete installiert werden.

# Eine Installation geht mit dem Befehl install.packages()
# install.packages("tidyverse") # Installation des Paketes "tidyverse"

# Hinweis: Für manche Pakete benötigt man spezielle libraries, die auf dem Computer installiert sind. Das ist häufig bei Arbeitsrechner nicht der Fall. Es kann also möglich sein, dass Pakete nicht installiert werden können.

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 4 Laden von Paketen ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Die Pakete müssen üblicherweise geladen werden bevor man sie benutzt. Wenn man R startet lädt R nämlich nur sich selber und nicht alle Pakete, die installiert sind. Das ist am Anfang nicht ganz leicht verständlich
library(tidyverse)




# Pro Tip: man kann Pakete auch installieren/laden in einem Befehl.
if (!require(ggplot2)) install.packages("ggplot2") && library(ggplot2)

# Noch einfacher geht es mit einem Paket
pacman::p_load(ggplot2)

# Hinweis mit pacmann:: spefiziert man, dass man das Paket pacman benutzen will


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 5 Einlesen von Excel Dateien -----
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Hierfür benötigt man das Paket 'readxl'
pacman::p_load("readxl")

# Einlesen einer Excel Datei
daten_excel <- read_excel("beispieldaten/xlsx_datei.xlsx")

# Inhalt anzeigen
print(daten_excel)



#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 6 Für Fortgeschrittene: Einlesen von Dateien mit dem Paket rio -----
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Das rio Paket macht das Einlesen von Daten sehr einfach, da es das Format automatisch erkennt.

# rio Paket installieren und laden
pacman::p_load("rio")

# Einlesen einer "deutschen" csv datei
import("beispieldaten/csv_datei_semikolon.csv")

# Einlesen einer Excel-Datei
import("beispieldaten/xlsx_datei.xlsx")

# Einlesen einer Datei mit Kommentaren
import("beispieldaten/csv_datei_kopfzeilen.csv")



