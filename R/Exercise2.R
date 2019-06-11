# In Aufgabe 2 sollen weiterhin Datensätze aus dem Paket *nycflights13* verwendet werden.
# Aufgabe 2a:
# Erstellen sie eine Funktion `get_avg_distance_by_model`, welche als Ausgabe einen `tibble` mit 3 Spalten (*model*, *n*, *avg_distance*) zurückgibt.
# Die Spalten haben folgende Bedeutung:
# - model: Die Modellbezeichnung wie in 1 a) und b).
# - n: Die Anzahl der Flüge, welche mit diesem Modell durchgeführt wurden. Siehe Datensatz *flights*.
# - avg_distance: Die durchschnittliche Anzahl Meilen, die mit diesem Flugzeugmodell zurückgelegt wurden.
# Flugzeuge mit einem Unbekannten Modelltyp sollen dabei herausgefiltert werden.
# Sortieren sie den entstehenden Datensatz nach absteigender durchschnittlich zurückgelegter Distanz.


# Aufgabe 2b:
# Erstellen sie eine Funktion `get_avg_distance_by_type`, welche als Ausgabe einen `tibble` mit 3 Spalten (*manufacturer*, *type*, *n*, *avg_distance*) zurückgibt.
# Die Spalten haben folgende Bedeutung:
# - manufacturer: Der Flugzeughersteller
# - type: Die Typenbeizeichnung, siehe unten.
# - n: Die Anzahl der Flüge, welche mit diesem Modell durchgeführt wurden. Siehe Datensatz *flights*.
# - avg_distance: Die durchschnittliche Anzahl Meilen, die mit diesem Flugzeugmodell zurückgelegt wurden.

# Flugzeuge mit einem Unbekannten Modelltyp sollen weiterhin herausgefiltert werden.
# Zudem sollen in dieser Aufgabe nur Modelle der Hersteller *BOEING* und *AIRBUS* untersucht werden.
# Der Typ des Flugzeuges ist die Bezeichnung vor dem Bindestrich, zum Beispiel:
# Für Boeing "737-924ER" die Zahl 737.
# Sortieren sie den entstehenden Datensatz nach absteigender durchschnittlich zurückgelegter Distanz.
