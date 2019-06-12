# In Aufgabe 3 sollen weiterhin Datensätze aus dem Paket *nycflights13* verwendet werden.

# Aufgabe 3a:
# Erstellen Sie eine Funktion `fix_manufacturer`, welche als Ausgabe ein `tibble` (Klasse `tbl_df`)
# ausgibt.
# Als Input soll die Funktion den **planes** Datensatz erhalten.
# Der Output soll dem originalen Datensatz bis auf die folgende Veränderungen der `manufacturer`-Variable entsprechen:
# Verändern Sie die `manufacturer`-Variable, indem Sie
#   - `manufacturer` zu einer Faktor-Variable konvertieren.
#   - AIRBUS und AIRBUS INDUSTRIE zu einer Kategorie zusammenfassen.
#   - alle übrigen `manufacturer`zu einer Kateogrie "Other" zusammenfassen.
#   - Zeilen mit einem unbekannten `manufacturer`-Wert löschen (das
#     beeinflusst auch die anderen Variablen)
## Tipp: Vielleicht kann das Paket *forcats* dafür nützlich sein. Verwenden Sie in dem Fall
#       `forcats::<Funktion>`



# Aufgabe 3b:
# Erstellen Sie eine Funktion `plot_seats_histogram`, welche ein Histogramm der Sitzverteilung ausgibt.
# Als Input soll die Funktion den **planes** Datensatz erhalten.
# Der Output der Funktion soll ein `ggplot`-Objekt sein.
# - Verwenden Sie die in 3a) definierte Funktion, um die `manufacturer`-Spalte zusammenzufassen.
# - Unterteilen Sie den Plot sinnvoll nach der neuen `manufacturer`-Spalte.



