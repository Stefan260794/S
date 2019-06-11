# In Aufgabe 3 sollen weiterhin Datensätze aus dem Paket *nycflights13* verwendet werden.
# Aufgabe 3a:
# Erstellen sie einen Funktion `fix_manufacturer`, welche als Ausgabe ein `tibble` (Klasse `tbl_df`)
# ausgibt.
# Der Input ist der **planes** Datensatz
# Die Ausgabe entspricht dem originalen Datensatz mit einer angepassten `manufacturer` Variable:
# - Zeilen mit fehlender manufacturer Variable werden gelöscht.
# - Konvertieren sie manufacturer zu einer Faktor-Variable.
# - AIRBUS und AIRBUS INDUSTRIE wird zu einer Kategorie zusammengefasst
# - alle anderen `manufacturer` werden zu einer Kateogrie "Other" zusammengefasst.
# Tipp: Vielleicht kann das Paket `forcats` dafür nützlich sein. Verwenden sie in dem Fall
#       `forcats::<Funktion>`

# Aufgabe 3b:
# Erstellen sie einen Funktion `plot_seats_histogram`, welche als Ausgabe ein ggplot2 objekt
# mit einem Histogram der Sitzverteilung ausgibt.
# Der Input ist der **planes** Datensatz
# - Verwenden sie die in 3a) definierte Funktion um die manufacturer Spalte zusammenzufassen.
# - Unterteilen sie den Plot Sinnvoll nach der neuen `manufacturer` Spalte.
# Output der Funktion ist ein `ggplot`-Objekt.
