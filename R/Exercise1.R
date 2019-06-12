# In den folgenden Aufgaben werden wir mit verschiedenen Datensätzen aus dem
# Paket *nycflights13* arbeiten.
# Installieren Sie das Paket *nycflights13* von CRAN und machen sie sich mit den einzelnen
# darin enthaltenen Datensätzen vertraut.


# Aufgabe 1a:
# Im folgenden wollen wir Flugzeugmodelle mit einer Anzahl Sitzen zwischen einem **minimum** und **maximum** herausfiltern.
# Schreiben Sie eine Funktion `get_planes_by_seats` welche als input die minimale und maximale
# Sitzanzahl akzeptiert (Argumente `min_seats` und `max_seats`).
# Der default Wert für die Grenzen soll $400$ und $500$ sein.
# Output der Funktion soll ein `tibble  (tbl_df)` sein, der nur die Spalten `tailnum` und `model` enthält.



# Aufgabe 1b:
# Im Folgenden interessiert man sich nur für die Modellbezeichnungen von Flugzeugen mit einer Sitzanzahl 
# in einer gewissen Spanne (wie in 1a).
# Erstellen Sie eine Funktion `plane_model_by_seats`, welche einen Vektor der Modellbezeichnungen
# zurückgibt. Jeder Modelltyp soll in diesem Vektor nur einmal vorkommen und der Vektor soll vom Typ `character` sein.
# Die Argumente der Funktion sollen dieselben wie in Aufgabe 1a) sein.
# Tipp: Sie können die in Aufgabe 1a) geschriebene Funktion `get_planes_by_seats` hier wiederverwenden.
