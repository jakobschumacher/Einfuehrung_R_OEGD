

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 1 R ist eigentlich eine Sammlung von kleinen Programmen---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In R gibt es den R-Kern: base-r
# Dazu gibt es tausende von weiteren Pakete.
# Ein Paket selber zu erstellen ist gar nicht so schwer


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 2 Installation von Paketen ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Eine Installation geht mit dem Befehl install.packages()
install.packages("ggplot2") # Installation eines grafischen packages
install.packages("tidyverse") # Installation eines multifunktionstools

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 3 Laden von Paketen ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Alle Pakete müssen am Anfang geladen werden.
# Das geht mit library()
library(ggplot2)
library(tidyverse)

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

library(tidyverse) # Erst das Paket laden


# Wir erstellen Beispieldaten (in einem data frame bzw. wie es in Tidyverse heißt: tibble ).
data <- tibble(
  Name = c("Anna", "Ben", "Celine", "Daniel", "Eva"),
  Alter = c(23, 25, 24, 22, 26),
  Lieblingszahl = c(50000, 3249, 29000000, 5000, 7)
)

# Beispieldaten
print(data)

# ---- FILTER ----
# Mit 'filter' kann man Zeilen basierend auf Bedingungen auswählen.
# Zum Beispiel alle, die älter als 24 sind.
df_gefilterte_daten <- data %>%
  filter(Alter > 24)

print(df_gefilterte_daten)

# ---- SELECT ----
# Mit 'select' kann man bestimmte Spalten auswählen.
# Zum Beispiel nur Name und Lieblingszahl
df_ausgewaehlte_spalten <- data %>%
  select(Name, Lieblingszahl)

print(df_ausgewaehlte_spalten)

# ---- MUTATE ----
# Mit 'mutate' kann man neue Spalten basierend auf existierenden Spalten erstellen.
# Zum Beispiel eine Spalte, die das Gehalt nach Steuern (angenommen 20% Abzug) zeigt.
df_realistische_lieblingszahl <- data %>%
  mutate(lieblingszahl_realistisch = Lieblingszahl * 0.8)

print(df_realistische_lieblingszahl)

# ---- SUMMARISE ----
# Mit 'summarise' kann man Zusammenfassungen von Daten erstellen.
# Zum Beispiel den Durchschnitt des Gehalts.
df_durchschnitt_Lieblingszahl <- data %>%
  summarise(Durchschnitt_Lieblingszahl = mean(Lieblingszahl))

print(df_durchschnitt_Lieblingszahl)


