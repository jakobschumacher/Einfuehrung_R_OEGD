#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Lernziele ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In diesem Lernabschnitt werden wir uns damit befassen, wie man Daten mithilfe von 'tidyverse' effizient filtert, auswählt und zusammenfasst, umwandelt und zusammenfügt. Für einen kompletten Anfänger wird es schwer sein dieses vollständig zu verarbeiten - hier reicht es erstmal zu sehen, was möglich ist.



#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 1 Tidyverse  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Die bekanntesten Pakete für Datenmanagement heißen tidyr und dplyr, die beide in der Paketsammlung von tidyverse enthalten sind

library(tidyverse) # Paket laden


# Wir erstellen Beispieldaten (in einem tibble).
data <- tibble(
  Name = c("Anna", "Ben", "Celine", "Daniel", "Eva"),
  Alter = c(23, 25, 24, 22, 26),
  Lieblingszahl = c(50000, 3249, 29000000, 5000, 7)
)

# Beispieldaten
print(data)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 2 Funktionsprinzip der "Chain" mit %>% oder  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Die Pakete aus Tidyverse arbeiten mit der natürlichen Herangehensweise. Zuerst nehme die Daten, dann filter diesen Teil raus, dann mache jenes usw. Dieses Vorgehen ist möglich mit dem Pipe-Symbol %>%, das mehrere Befehle aneinanderreiht.

# Detaillierte Infos siehe: https://www.produnis.de/R/rbase-pipe.html

data %>%
  print()


# Ein typischer tidyverse-Block sieht dann so aus:
data %>%
  filter(Alter > 22) %>%
  select(Lieblingszahl, Alter) %>%
  mutate(gealterte_Lieblingszahl = Lieblingszahl * Alter) %>%
  summarise(mean = mean(gealterte_Lieblingszahl))


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 3 Die Funktion Filtern  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Mit 'filter' kann man Zeilen basierend auf Bedingungen auswählen.
# Zum Beispiel alle, die älter als 24 sind.
data %>%
  filter(Alter > 24)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 4 Spalte selektieren  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Mit 'select' kann man bestimmte Spalten auswählen.
# Zum Beispiel nur Name und Lieblingszahl
data %>%
  select(Name, Lieblingszahl)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 5 Spalte neu anlegen (mutieren) ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Mit 'mutate' kann man neue Spalten basierend auf existierenden Spalten erstellen.
# Zum Beispiel eine Spalte, die eine echte Lieblingszahl anzeigt (Studien ergeben, dass Lieblingszahlen meist zu hoch angegeben werden)
data %>%
  mutate(Realistische_Liebelingszahl = Lieblingszahl * 0.8)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 6 Spalten zusammenfassen  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Mit 'summarise' kann man Zusammenfassungen von Daten erstellen.
# Zum Beispiel den Durchschnitt der Lieblingszahl
data %>%
  summarise(Durchschnitt_Lieblingszahl = mean(Lieblingszahl))



#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 7 Transformieren von Daten mit dem Paket Tidyr ----------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Das Konzept von "Tidy Data" wurde von Hadley Wickham definiert und hat folgende Hauptkriterien:
#
# 1. Jede Variable bildet eine Spalte. Das bedeutet, dass jede Spalte in einem Datensatz eine klar definierte und eindeutige Variable oder ein Merkmal darstellt.
#
# 2. Jede Beobachtung bildet eine Zeile. Jede Zeile sollte eine eindeutige Beobachtung oder Einheit repräsentieren, z. B. eine Person, einen Zeitpunkt oder einen Messwert.
#
# 3. Jede Art von Beobachtungseinheit bildet eine Tabelle. Wenn Sie beispielsweise Daten über Schulen und Schüler haben, sollten zwei Tabellen angelegt werden. Eine für Schüler und eine für Schulen. Bei den Schülern wäre dann eine Verknüpfung mit dabei (z. B. eine Schul-ID).

# Es kann sehr schwierig sein Daten umzuwandeln. Das Paket Tidyr aus dem Tidyverse hilft dabei

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 8 Pivot long and pivot wide ----------------------------
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
# 9 Separate and unite ----------------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Beispieldaten
daten_to_separate <- tibble(
  Name_Jahr = c("Anna_2019", "Ben_2020", "Chris_2021"),
  Wert = c(100, 140, 130))


print(daten_to_separate)


daten_separated <- daten_to_separate %>%
  separate(Name_Jahr, into = c("Name", "Jahr"), sep = "_")

print(daten_separated)

# Unite: Kombiniert mehrere Spalten in eine Spalte
daten_united <- daten_separated %>%
  unite("Name_Jahr", Name, Jahr, sep = "_")
print(daten_united)


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 10 Zusammenfügen von Datensätzen ----------------------------
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
