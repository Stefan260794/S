# In den folgenden Aufgaben werden wir mit verschiedenen Datensätzen aus dem
# Paket *nycflights13* arbeiten.
# Installieren sie das Paket *nycflights13* von CRAN und machen sie sich mit den einzelnen
# darin enthaltenen Datensätzen vertraut.

# Aufgabe 1a:
# Im folgenden wollen wir Flugzeugmodelle mit einer Anzahl Sitzen zwischen einem **minimum** und **maximum** herausfiltern.
# Schreiben sie eine Funktion `get_planes_by_seats` welche als input die minimale und maximale
# Sitzanzahl akzeptiert (Argumente `min_seats` und `max_seats`).
# Der default Wert für die Grenzen soll $400$ und $500$ sein.
# Output der Funktion soll ein `tibble  (tbl_df)` sein, der nur die Spalten `tailnum` und `model` enthält.



# Aufgabe 1b:
# Im folgenden sollen nur die Modellbezeichnungen von Flugzeugen mit einer unteren und oberen Anzahl Sitzen
# (wie in 1a) sein.
# Erstellen sie eine Funktion `plane_model_by_seats`, welche als Ausgabe einen Vektor des Typs `character` zurückgibt.
# Die Argumente der Funktion sind wie in 1a)
# Jeder Modelltyp soll in diesem Vektor nur einmal vorkommen.
# Tipp: Sie können die in Aufgabe 1a) verwendete Funktion hier wiederverwenden.
