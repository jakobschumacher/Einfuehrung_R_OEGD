

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





