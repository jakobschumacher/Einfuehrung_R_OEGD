#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Lernziele ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Ziel dieses Abschnittes ist es, die zu lernen, dass es die Pakete 'ggplot2' und 'gt' für grafische Darstellungen und Tabellen gibt. Dazu ein Blick auf die grundlegende Funktionsweise

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 1 Ein Blick auf das Paket ggplot2 für Grafiken  ---------------------
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
# 2 Ein Blick auf das Paket gt für Tabellen  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Installation und Laden oder nur Laden des Pakets gt
if (!require(gt)) install.packages("gt") && library(gt, quiet = TRUE)

data <- data.frame(
  Name = c("Anna", "Ben", "Celine"),
  Alter = c(23, 25, 24),
  Lieblingsfarbe = c("Blau", "Grün", "Rot")
)

data %>%
  gt() %>%
  tab_header(
    title = "Eine schöne Tabelle",
    subtitle = "Erstellt mit dem gt-Paket"
  ) %>%
  cols_label(
    Name = "Name",
    Alter = "Alter",
    Lieblingsfarbe = "Lieblingsfarbe"
  ) %>%
  tab_options(
    table.width = "80%"
  )


