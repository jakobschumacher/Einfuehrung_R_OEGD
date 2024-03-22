#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Lernziele ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In diesem Lernabschnitt werden wir uns damit befassen, wie man in R zusätzliche Pakete installiert und nutzt. Das Ziel ist es, die Funktionsweise und Vorteile von 'ggplot2' für grafische Darstellungen und 'tidyverse' für umfangreiche Datenbearbeitung zu verstehen. Wir lernen, wie man Daten visuell mit 'ggplot2' interpretiert und wie man Daten mithilfe von 'tidyverse' effizient filtert, auswählt und zusammenfasst. Am Ende dieses Abschnitts sollten Sie in der Lage sein, diese Werkzeuge effektiv zu nutzen, um Datenanalysen in R durchzuführen.



#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 1 Tidyverse  ---------------------
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






#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 4 Transformieren von Daten mit dem Paket Tidyr ----------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Das Konzept von "Tidy Data" wurde von Hadley Wickham definiert und hat folgende Hauptkriterien:
#
# 1. Jede Variable bildet eine Spalte. Das bedeutet, dass jede Spalte in einem Datensatz eine klar definierte und eindeutige Variable oder ein Merkmal darstellt.
#
# 2. Jede Beobachtung bildet eine Zeile. Jede Zeile sollte eine eindeutige Beobachtung oder Einheit repräsentieren, z. B. eine Person, einen Zeitpunkt oder einen Messwert.
#
# 3. Jede Art von Beobachtungseinheit bildet eine Tabelle. Wenn Sie beispielsweise Daten über Schulen und Schüler haben, sollten zwei Tabellen angelegt werden. Eine für Schüler und eine für Schulen. Bei den Schülern wäre dann eine Verknüpfung mit dabei (z. B. eine Schul-ID).

# Es kann sehr schwierig sein Daten umzuwandeln. Das Paket Tidyr aus dem Tidyverse hilft dabei

# Einbinden von benötigten Paketen
pacman::p_load("tidyverse")  # Falls noch nicht installiert


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 5 Pivot long and pivot wide ----------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Breite (wide) und lange (long) Datensätze sind zwei gängige Formate, in denen Datenstrukturen organisiert werden können. Der Unterschied zwischen ihnen liegt in der Art und Weise, wie Informationen über Variablen und ihre Beobachtungen in der Tabelle präsentiert werden.

# Breite (Wide) Datensätze: In breiten Datenstrukturen hat jede Beobachtungseinheit (z.B. ein Individuum oder ein Objekt) nur eine Zeile, die alle beobachteten Variablen enthält.

# Schüler | Test_2019 | Test_2020 | Test_2021
# Anna   | 85        | 88        | 90
# Ben    | 80        | 82        | 85

# Lange (Long) Datensätze:
# In langen Datenstrukturen hat jede Zeile nur einen Wert für eine bestimmte Variable. Das bedeutet, dass jede Beobachtungseinheit in mehreren Zeilen dargestellt wird, je nach Anzahl der Messwerte oder Kategorien.

# Schüler | Jahr      | Testergebnis
# Anna   | 2019      | 85
# Anna   | 2020      | 88
# Anna   | 2021      | 90
# Ben    | 2019      | 80
# Ben    | 2020      | 82
# Ben    | 2021      | 85


# Beispiel-Daten erstellen
daten <- tibble(
  Name = c("Anna", "Ben", "Chris"),
  '2019' = c(100, 130, 120),
  '2020' = c(110, 140, 125),
  '2021' = c(115, 135, 130)
)

print(daten)

# Pivot longer: Verwandelt Daten von einem 'wide' Format in ein 'long' Format
daten_long <- daten %>%
  pivot_longer(cols = c('2019', '2020', '2021'),
               names_to = "Jahr",
               values_to = "Wert")
print(daten_long)

# Pivot wider: Das Gegenteil von pivot_longer - wandelt Daten von einem 'long' Format in ein 'wide' Format
daten_wide <- daten_long %>%
  pivot_wider(names_from = "Jahr", values_from = "Wert")
print(daten_wide)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 6 Separate and unite ----------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Beispieldaten
daten_separate <- tibble(
  Name_Jahr = c("Anna_2019", "Ben_2020", "Chris_2021"),
  Wert = c(100, 140, 130))


daten_separated <- daten_separate %>%
  separate(Name_Jahr, into = c("Name", "Jahr"), sep = "_")

print(daten_separated)

# Unite: Kombiniert mehrere Spalten in eine Spalte
daten_united <- daten_separated %>%
  unite("Name_Jahr", Name, Jahr, sep = "_")
print(daten_united)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 7 Zusammenfügen von Datensätzen ----------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Erstellen von zwei Beispieldatenrahmen
df1 <- tibble(
  ID = c(1, 2, 3, 4),
  Name = c("Anna", "Ben", "Chris", "Dana")
)

df2 <- tibble(
  ID = c(3, 4, 5, 6),
  Alter = c(25, 28, 22, 24)
)

# Füge beide Datensätze mit der Funktion left_join zusammen
df1 %>% left_join(df2, by = "ID")

# Man kann auch andere "joins" verwenden, z.B. full_join
df1 %>% full_join(df2, by = "ID")
