# In den folgenden Aufgaben werden wir mit verschiedenen Datensätzen aus dem
# Paket *nycflights13* arbeiten.
# Installieren Sie das Paket *nycflights13* von CRAN und machen sie sich mit den einzelnen
# darin enthaltenen Datensätzen vertraut.

#Laden aller benötigten Pakete
  #library(nycflights13)
  #library(dplyr)
  #library(forcats)
  #library(ggplot2)

#\"{O}ffnen der einzelnen Datens\"{a}tze von *nycflights13*
nycflights13::airlines
nycflights13::airports
nycflights13::flights
nycflights13::planes
nycflights13::weather

# Aufgabe 1a:
# Im folgenden wollen wir Flugzeugmodelle mit einer Anzahl Sitzen zwischen einem **minimum** und **maximum** herausfiltern.
# Schreiben Sie eine Funktion `get_planes_by_seats` welche als input die minimale und maximale
# Sitzanzahl akzeptiert (Argumente `min_seats` und `max_seats`).
# Der default Wert f\"{u}r die Grenzen soll $400$ und $500$ sein.
# Output der Funktion soll ein `tibble  (tbl_df)` sein, der nur die Spalten `tailnum` und `model` enthält.

get_planes_by_seats <- function(min_seats = 400, max_seats = 500){
  min_seats <- as.integer(min_seats)
  max_seats <- as.integer(max_seats)
  nycflights13::planes %>% 
    filter(seats >= min_seats) %>%
    filter(seats <= max_seats) %>%
    select(tailnum, model)
}

#---Kommentar zu Exercise 1a:---
#
#get_planes_by_seats ist eine Funktion die anhand zwei Variablen (min_seats, max_seats) 
#eine Auswahl von Flugzeugmodellen nach der Sitzanzahl liefert. Innerhalb der Funktionsklammern 
#wird diesen beiden Variablen bereits Werte zugeordnet. Das bedeutet, 
#dass die zugeordneten (bzw. deklarierten) Werte (hier: 400 und 500) von der Funktion benutzt werden,
#falls keine andere Deklarierung der Variablen stattfindet. Somit fungieren diese Werte als default Werte.
#Als Input sind Gleitzahlen im Format 'double' möglich. Da es aber keinen geteilten Sitzplätze gibt, werden 
#diese zu 'Integer' formatiert (bei Gleitzahl wird, wie die Gaußfunktion abgerundet auf nächste natuerliche Zahl). 
#Danach wird mit Hilfe des Pipe Operators erst der Datensatz 'nycflights13::planes', 
#der als 'tibble' erstellt wurde, gefiltert und die Ausgabe auf 'tailnum' und 'model' beschränkt.
#Input: numerical (double) 
#Output: tibble
#-------------------------------


# Aufgabe 1b:
# Im Folgenden interessiert man sich nur für die Modellbezeichnungen von Flugzeugen mit einer Sitzanzahl 
# in einer gewissen Spanne (wie in 1a).
# Erstellen Sie eine Funktion `plane_model_by_seats`, welche einen Vektor der Modellbezeichnungen
# zur\"{u}ckgibt. Jeder Modelltyp soll in diesem Vektor nur einmal vorkommen und der Vektor soll vom Typ `character` sein.
# Die Argumente der Funktion sollen dieselben wie in Aufgabe 1a) sein.
# Tipp: Sie können die in Aufgabe 1a) geschriebene Funktion `get_planes_by_seats` hier wiederverwenden.

plane_model_by_seats <- function(min_seats = 400, max_seats = 500){
  get_planes_by_seats(min_seats, max_seats) %>%
    pull(model) %>%
    unique()
}

#---Kommentar zu Exercise 1b:--- 
#
#Die Funktion plane_model_by_seats benötigt als Input eine Gleitzahl oder natürliche Zahl, wie in 1a.
#Diese übergibt Sie dann der Funktion aus 1a, welche den tibble mit tailnum und model, ausgewählt nach dem Intervall über Sitzanzahl, ausgibt.
#Aus diesem tibble wird dann die Spalte "Model" entnommen und die Duplikate aus dieser Spalte entfernt.
#Output von plane_model_by_seats ist ein Vektor über die ausgegeben Modelltypen ohne Duplikate in dem gewünschten Sitzplatzintervall.
#Default Werte hier wieder nötig, da diese nur jeweils innerhalb der Funktion gültig sind.
#-------------------------------