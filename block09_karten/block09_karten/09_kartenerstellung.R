#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# Lernziele ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# In diesem Lernabschnitt werden wir uns mit der Darstellung von Karten befassen. Wir unterscheiden Rasterkarten und Vektorkarten und lernen die Pakete 'sf' und 'terra' kennen, um Karten zu erzeugen und damit die geographische Verteilung von Variablen darzustellen. Außerdem schauen wir uns an, wie mit 'leaflet' interaktive Karten erstellt werden kÃ¶nnen.


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 1 Vektorkarten  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Vektorkarten stellen geografische Objekte mithilfe von Punkten, Linien oder Flächen (Polygonen) dar, zum Beispiel Städte, Straßen oder die Grenzen von Bundesländern. Ein Shapefile ist ein häufig verwendetes Dateiformat zur Speicherung solcher Vektordaten und enthÃ¤lt neben den geografischen Formen auch zugeörige Informationen, z.B. den Namen eines Bundeslandes. Es hat die Endung ".shp".

# 'sf' ist ein Paket mit dem Shapefiles bearbeitet werden können
library(sf)

# Zunächst lesen wir ein Shapefile für Deutschland ein
dkarte <- st_read("block09_karten/extdata/shapefile_D/gadm41_DEU_1.shp")

# Das shapefile ist wie enie Tabelle aufgebaut und enthÃ¤lt die 'gemoetry' Variablen zur Darstellung der Bundeslandgrenzen
print(dkarte)

# Die Darstellung der Karte folgt dem gleichen Aufbau wie andere ggplot Grafiken.
dkarte %>%
  ggplot() +
  geom_sf()

# Diese leere Karte kann nun mit epidemiologisch interessanten Informationen gefÃ¼llt werden, z.B. interessieren wir uns fÃ¼r die MasernfÃ¤lle in den deutschen BundeslÃ¤ndern im Jahr 2025. Dafür können wir z.B. Daten aus Survstat@RKI herunterladen und diesen Datensatz einlesen.

masern <- read.csv("block09_karten/extdata/Masern_2025.csv", sep = ";", fileEncoding = "UTF-8-BOM") # Daten von surstat.rki.de

# Das Shapefile und der Masern-Datensatz müssen nun verbunden werden, damit sie gemeinsam dargestellt werden können. Aber die gemeinsame Variable des Bundeslandes können die Datensatze mit der 'join'-Funktion gematcht werden. Achtung, die entsprechende Spalte heißt im Shapefile "NAME_1"

dkarte_masern <- dkarte %>%
  left_join(masern, by = c("NAME_1" = "Bundesland"))

# Nun können die Bundesländer mit der Information aber die Fallzahlen entsprechend ihres Wertes eingefärbt werden
dkarte_masern %>%
  ggplot() +
  geom_sf(aes(fill = Fallzahl))


# Das ganze können wir noch "verschönern" indem wir z.B. den Hintergrund entfernen, eine andere Farbskala wÃ¤hlen oder einen Titel hinzufügen
dkarte_masern %>%
  ggplot() +
  geom_sf(aes(fill = Fallzahl)) +
  scale_fill_gradientn(colors = c("#deebf7", "#c6dbef", "#9ecae1", "#6baed6", "#4292c6", "#2171b5", "#08519c","#08306b"), na.value = NA) +
  theme_void() + # damit kein Koordinatensystem und Hintergrund dargestellt werden
  labs(title = "Masernfallzahlen 2025 in Deutschland", fill = "Fallzahl je Bundesland")

# Und wir haben nicht nur die Fallzahl sondern auch Information über die Inzidenzen vorliegen
dkarte_masern %>%
  ggplot() +
  geom_sf(aes(fill = Inzidenz)) +
  scale_fill_gradientn(colors = c("#fee0d2", "#fcbba1", "#fc9272", "#fb6a4a", "#ef3b2c", "#cb181d", "#99000d", "#67000d"), na.value = NA) +
  theme_void() + # damit kein Koordinatensystem und Hintergrund dargestellt werden
  labs(title = "Masernfallzahlen 2025 in Deutschland", fill = "Inzidenz je Bundesland")


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 2 Rasterkarten  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# Rasterkarten stellen geografische Informationen als regelmäßiges Gitter aus Zellen dar, wobei jede Zelle einen Wert enthÃ¤lt, zum Beispiel Temperatur oder Niederschlag. Rasterdaten werden hÃ¤ufig in Dateien wie GeoTIFF (.tif) oder ASCII Grid (.asc) gespeichert.

# In R können Rasterdaten mit dem Paket terra eingelesen, bearbeitet und als Karte dargestellt werden.
library(terra)


# Beispielsweise möchten wir angesichts der zahlreichen wÃ¤hrend der Sommerhitze gestorbenen Menschen die Anzahl an heißen Tagen in Deutschland darstellen. Dazu bietet der Deutsche Wetterdienst Daten an, die wir zunÃ¤chst einlesen.

heissetage51 <- rast("block09_karten/extdata/grids_germany_annual_hot_days_1951_17.asc")
heissetage22 <- rast("block09_karten/extdata/grids_germany_annual_hot_days_2022_17.asc")
heissetage25 <- rast("block09_karten/extdata/grids_germany_annual_hot_days_2025_17.asc")
# Quelle der Rasterdateien: Deutscher Wetterdienst - Jährliche heiße Tage unter https://opendata.dwd.de/climate_environment/CDC/grids_germany/annual/hot_days/

# Plotten der jÃ¤hrlichen heißen Tage in den Jahren 1951, 2022, 2025
plot(heissetage51)
plot(heissetage25)
plot(heissetage22)

# Auch diese Karten lassen sich anpassen:
plot(heissetage51,
     main = "Jährliche heiße Tage in Deutschland im Jahr 1951",
     xlab = "Längengrad",
     ylab = "Breitengrad",
     col = hcl.colors(20, "YlOrRd"),
     plg = list(title = "Anzahl heißer Tage"))

# Verfügbare Palleten
hcl.pals()


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# 3 Interaktive Karten  ---------------------
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#Mit dem Paket leaflet können interaktive Karten erstellt werden. Im Gegensatz zu einer statischen Karte kÃ¶nnen Nutzer die Karte zoomen und verschieben sowie durch Anklicken oder Bewegen der Maus zusätzliche Informationen anzeigen lassen.

library(leaflet)

# Zunächst plotten wir die interaktive Karte, sodass gezoomt werden kann
leaflet(dkarte_masern) %>%
  addPolygons()

# Nun können wir Anzeigetexte (Labels) hinzufügen, die angezeigt werden, wenn mit dem Mauszeiger über das jeweilige Bundesland gefahren wird
leaflet(dkarte_masern) %>%
  addPolygons(popup = ~paste(Inzidenz))


# Und "verschönern" kann man die Karte, in dem man die Farbskala, Grenzen und den Labeltext anpasst und einen Titel und eine Legende hinzufügt

# Definieren der Farbskala
pal <- colorNumeric(c("#deebf7", "#c6dbef", "#9ecae1", "#6baed6", "#4292c6", "#2171b5", "#08519c","#08306b"), dkarte_masern$Inzidenz)


leaflet(dkarte_masern)  %>%
  addPolygons(
    fillColor = ~pal(Inzidenz), # Füllt die Bundeslandflächen nach ihren Inzidenzwerten entsprechend der Farbskala
    fillOpacity = 1, # Tranzparenz der Füllung
    color = "black", # Farbe der Grenzen
    weight = 1, # Strichstärke der Grenzen
    label = ~paste(NAME_1, "- Inzidenz:", Inzidenz) # Labeltext
  ) %>%
  addLegend(
    pal = pal,
    values = ~Inzidenz,
    title = "Inzidenz"
  ) %>%
  addControl(
    html = "Masern-Inzidenzen nach Bundesland"
  )
