# In Aufgabe 2 sollen weiterhin Datensätze aus dem Paket *nycflights13* verwendet werden.

# Aufgabe 2a:
# Erstellen Sie eine Funktion `get_avg_distance_by_model`, welche als Ausgabe einen `tibble` 
# mit 3 Spalten (*model*, *n*, *distance*) zurückgibt.
# Die Spalten haben folgende Bedeutung:
# - model: Die Modellbezeichnung wie in 1 a) und b).
# - n: Die Anzahl der Flüge, welche mit diesem Modell durchgeführt wurden. Siehe Datensatz *flights*.
# - distance: Die durchschnittliche Anzahl an Meilen, die mit diesem Flugzeugmodell zurückgelegt wurde.
# Filtern Sie Flugzeuge mit unbekannten Modelltyp dabei heraus (d.h. diese Flugzeuge sollen nicht im Output-`tibble` 
# enthalten sein).
# Sortieren Sie zudem den entstehenden Datensatz nach absteigender durchschnittlich zurückgelegter Distanz.

get_avg_distance_by_model <- function(x = nycflights13::planes, y = nycflights13::flights){
  temp1 <- x %>%
    inner_join(y, by = "tailnum") %>%
    select(model,distance) %>% 
    filter(!is.na(model)) %>% 
    group_by(model) %>% 
    tally(distance, name = "distance")
  temp2 <- x %>%
    inner_join(y, by = "tailnum") %>%
    select(model, distance) %>% 
    filter(!is.na(model)) %>% 
    group_by(model) %>% 
    tally() 
  for(i in 1:as.integer(count(temp1))){
    temp1[i,2] <- temp1[i,2]/temp2[i,2]
  }
  temp2 %>%
    left_join(temp1, by = "model") %>%
    arrange(desc(distance))  
}

#---Kommentar zu Exercise 2a:---
#Input: 2x tibble (Datensatz: nycflights13::planes und nycflights13::planes)
#temp1 und temp2 sind beide Datensätze zusammen. Bei temp1 wurde die Gesamte distance eines Modells und bei temp2 die Anzahl der Modelle in dem großen Datensatz gezählt.
#Danach wurde die gesamte Distanz durch die Modellanzahl geteilt pro Modell und in den Ausgabedatensatz ersetzt.
#Abschließend noch absteigend sortiert.
#Output: tibble (mit model, n, distance)
#-------------------------------


# Aufgabe 2b:
# Erstellen Sie eine Funktion `get_avg_distance_by_type`, welche als Ausgabe einen `tibble` 
# mit 4 Spalten (*manufacturer*, *type*, *n*, *avg_distance*) zurückgibt.
# Die Spalten haben folgende Bedeutung:
# - manufacturer: Der Flugzeughersteller
# - type: Die Typenbeizeichnung, siehe unten.
# - n: Die Anzahl der Flüge, welche mit diesem Modell durchgeführt wurden. Siehe Datensatz *flights*.
# - distance: Die durchschnittliche Anzahl an Meilen, die mit diesem Flugzeugmodell zurückgelegt wurde.
# Flugzeuge mit einem unbekannten Modelltyp sollen weiterhin herausgefiltert werden.
# Zudem sollen in dieser Aufgabe nur Modelle der Hersteller *BOEING* und *AIRBUS* untersucht werden.
# Der Typ des Flugzeuges ist die Bezeichnung vor dem Bindestrich, zum Beispiel:
# Für Boeing "737-924ER" die Zahl 737.
# Sortieren Sie den entstehenden Datensatz nach absteigender durchschnittlich zurückgelegter Distanz.

get_avg_distance_by_type <- function(x = nycflights13::planes, y = nycflights13::flights){
  
  temp2 <- get_avg_distance_by_model(x, y)
  temp2 <- x %>% 
    inner_join(y, by = "tailnum") %>%
    select(manufacturer, model) %>%
    filter(!is.na(model)) %>%
    filter(manufacturer == "BOEING" | manufacturer == "AIRBUS") %>%
    left_join(temp1, by = "model") %>%
    arrange(desc(distance))
  temp2$model <- sub("-.*", "", temp2$model)
  names(temp2) <- c("manufacturer", "type", "n", "distance")
  return(temp2)
}

#---Kommentar zu Exercise 2b:---
#Input: 2x tibble (Datensatz: nycflights13::planes und nycflights13::planes)
#Erst wurde mit Funktion aus 2a die Ausgangsdaten verändert.
#Dann wurde ein neuer Datensatz erstellt, welcher gefiltert wurde nach bestimmten 'manufacturer'.
#Diese beiden wurden verknüpft zu einem tibble und absteigend sortiert.
#Außerdem wurde der Typ aus dem 'model' entnommen. Typ ersetzte model im tibble und die Spalten benannt.
#Output: tibble (mit manufacturer, type, distance)
#-------------------------------


