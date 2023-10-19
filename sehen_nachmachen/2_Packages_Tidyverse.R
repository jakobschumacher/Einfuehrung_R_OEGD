

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Lernziele ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In diesem Lernabschnitt werden wir uns damit befassen, wie man in R zusätzliche Pakete installiert und nutzt. Das Ziel ist es, die Funktionsweise und Vorteile von 'ggplot2' für grafische Darstellungen und 'tidyverse' für umfangreiche Datenbearbeitung zu verstehen. Wir lernen, wie man Daten visuell mit 'ggplot2' interpretiert und wie man Daten mithilfe von 'tidyverse' effizient filtert, auswählt und zusammenfasst. Am Ende dieses Abschnitts sollten Sie in der Lage sein, diese Werkzeuge effektiv zu nutzen, um Datenanalysen in R durchzuführen.


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 1 Installation von Paketen ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In R gibt es den R-Kern: base-r. Dazu gibt es tausende von weiteren Pakete. Pakete werden auf CRAN gehostet und können von dort installiert werden. Experimentellere Pakete können auch von Github installiert werden.

# Eine Installation geht mit dem Befehl install.packages()
# install.packages("tidyverse") # Installation eines multifunktionstools

# Für manche Pakete benötigt man spezielle libraries, die auf dem Computer installiert sind. Das ist häufig bei Arbeitsrechner nicht der Fall. Es kann also möglich sein, dass Pakete nicht installiert werden können.

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 2 Laden von Paketen ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Alle Pakete müssen am Anfang geladen werden.
library(tidyverse)

# Pro Tip: man kann Pakete auch installieren/laden in einem Befehl.
if (!require(ggplot2)) install.packages("ggplot2") && library(ggplot2)

# Noch einfacher geht es mit einem Paket
pacman::p_load(ggplot2)

# Hinweis mit pacmann:: spefiziert man, dass man das Paket pacman benutzen will

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 3 Ein Blick auf das Paket ggplot2  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Ggplot ist ein grafisches Paket das als erstes den Datensatz lädt
# dann die Variablenzuorgnung macht
# dann den Graphen erstellt.
# einzelne Befehle werden mit + zusammengebunden

library(ggplot2) # Erst das Paket laden

# Ein Datensatz laden in diesem Fall den eingebauten Standarddatensatz mtcars
meindatensatz <- mtcars

# Mit Ggplot2 die Daten grafisch anzeigen
ggplot(meindatensatz) +
  aes(x = mpg, y = wt) +
  geom_line()


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 4 Tidyverse  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Die bekanntesten Pakete für Datenmanagement heißen tidyr und dplyr, die beide in der Paketsammlung von tidyverse enthalten sind

library(tidyverse) # Paket laden


# Wir erstellen Beispieldaten (in einem data frame bzw. wie es in Tidyverse heißt: tibble ).
data <- tibble(
  Name = c("Anna", "Ben", "Celine", "Daniel", "Eva"),
  Alter = c(23, 25, 24, 22, 26),
  Lieblingszahl = c(50000, 3249, 29000000, 5000, 7)
)

# Beispieldaten
print(data)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 5 Filtern  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Mit 'filter' kann man Zeilen basierend auf Bedingungen auswählen.
# Zum Beispiel alle, die älter als 24 sind.
df_gefilterte_daten <- data %>%
  filter(Alter > 24)

print(df_gefilterte_daten)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 6 Spalte selektieren  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Mit 'select' kann man bestimmte Spalten auswählen.
# Zum Beispiel nur Name und Lieblingszahl
df_ausgewaehlte_spalten <- data %>%
  select(Name, Lieblingszahl)

print(df_ausgewaehlte_spalten)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 7 Spalte neu anlegen (mutieren) ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Mit 'mutate' kann man neue Spalten basierend auf existierenden Spalten erstellen.
# Zum Beispiel eine Spalte, die eine echte Lieblingszahl anzeigt (Studien ergeben, dass Lieblingszahlen meist zu hoch angegeben werden)
df_realistische_lieblingszahl <- data %>%
  mutate(Realistische_Liebelingszahl = Lieblingszahl * 0.8)

print(df_realistische_lieblingszahl)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 8 Spalten zusammenfassen  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Mit 'summarise' kann man Zusammenfassungen von Daten erstellen.
# Zum Beispiel den Durchschnitt der Lieblingszahl
df_durchschnitt_Lieblingszahl <- data %>%
  summarise(Durchschnitt_Lieblingszahl = mean(Lieblingszahl))

print(df_durchschnitt_Lieblingszahl)


