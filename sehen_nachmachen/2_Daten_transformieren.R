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
