# In Aufgabe 3 sollen weiterhin Datensätze aus dem Paket *nycflights13* verwendet werden.

# Aufgabe 3a:
# Erstellen Sie eine Funktion `repair_manufacturer`, welche als Ausgabe ein `tibble` (Klasse `tbl_df`)
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

repair_manufacturer <- function(Input = nycflights13::planes){
  Input$manufacturer <- Input$manufacturer %>%
    as.factor() %>%
    forcats::fct_other(drop = c("AIRBUS","AIRBUS INDUSTRIE"),other_level = "AIRBUS KATEGORIE") %>%
    forcats::fct_other(keep = "AIRBUS KATEGORIE", other_level = "Other") %>%
    forcats::fct_drop()
  Input <- filter(Input,!is.na(manufacturer))
  return(Input)
}

#---Kommentar zu Exercise 3a:---
#Input: tibble (Datensatz: nycflights13::planes)
#Die Spalte Manufacturer aus dem tibble wird erst in Typ "factor" umgewandelt und 
#danach der Inhalt der Spalte in die zwei gewünschten Kategorie zusammengefasst.
#Die Funktion fct_drop löscht, falls noch vorhanden unbenutzte Level für die Spalte 'manufacturer'.
#Zuletzt werden noch unbekannt 'manufacturer'-Werte gelöscht.
#Output: tibble (Originaler Datensatz mit gewünschten Veränderungen in der 'manufacturer'-Spalte)
#-------------------------------



# Aufgabe 3b:
# Erstellen Sie eine Funktion `plot_seats_histogram`, welche ein Histogramm der Sitzverteilung ausgibt.
# Als Input soll die Funktion den **planes** Datensatz erhalten.
# Der Output der Funktion soll ein `ggplot`-Objekt sein.
# - Verwenden Sie die in 3a) definierte Funktion, um die `manufacturer`-Spalte zusammenzufassen.
# - Unterteilen Sie den Plot sinnvoll nach der neuen `manufacturer`-Spalte.

plot_seats_histogram <- function(Input2 = nycflights13::planes){
  Input2 <- repair_manufacturer(Input = Input2)
  ggplot2::ggplot(Input2,aes(x = seats, fill = manufacturer)) +
    geom_histogram(position = "dodge", bins = 15) + 
    xlab("Sitzanzahl") + ylab("Häufigkeit") +
    labs(title = "Histogramm:\nHäufigkeit der Flugszeug anhand Sitzanzahl") +
    labs(fill = "Herstellergruppen")
}

#---Kommentar zu Exercise 3b:---
#Input: tibble (Datensatz: nycflights13::planes)
#Funktion plot_seats_histogramm verwendet erst die Funktion aus Aufgabe 3.1, um die 'manufacturer'-Spalte zusammenzufassen.
#Um eine Vergleichbarkeit der beiden Gruppen herzustellen, werden die beide Gruppen zusammen, versetzt ("dodge") in einem Plot dargestellt.
#Auswertung: Es ist zu erkennen, dass z.B. die AIRBUS Kategorie die meisten Flugzeug mit einer Sitzanzahl unter 200 hat und weniger größere und kleinere.
#Diese Kategorie hat die meisten auf einem kleine Intervall, wobei die Kategorie 'Other' von sehr wenig bis sehr viele Sitze verteilt ist. 
#Dennoch haben die 'Other' ihre meisten Flugzeug zwischen 100 bis 200 Sitze.
#Output: ein ggplot nach Kategorie unterteilt.
#-------------------------------






