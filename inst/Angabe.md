\documentclass[a4paper]{article}

\usepackage[latin1]{inputenc}
\usepackage[austrian]{babel}
\usepackage{a4wide,paralist}
\usepackage{amsmath,amsthm}
\usepackage{amsfonts}
\usepackage{hyperref}
\usepackage{dsfont}
\usepackage{booktabs}
\usepackage{graphicx}
\usepackage{xcolor}
\definecolor{asparagus}{rgb}{0.53, 0.66, 0.42}
\usepackage{tikz}               % TikZ
\usetikzlibrary{calc, backgrounds, arrows, positioning, shapes, snakes, shapes.geometric, fit, decorations.pathmorphing, decorations.text, decorations.markings}

\newcommand{\bubblethis}[1]{
  \tikz[remember picture,baseline]{\node[anchor=base,inner sep=0,outer sep=0]%
    (z1) {};\node[overlay,cloud callout,callout relative pointer={(-0.2cm,-0.7cm)},%
    aspect=2.5,draw=black] at ($(z1.north)+(-0.5cm,1.6cm)$) {#1};}%
}%

\newcommand{\speechthis}[1]{
  \tikz[remember picture,baseline]{\node[anchor=base,inner sep=0,outer sep=0]%
    (z1) {};\node[overlay,ellipse callout,draw=black, fill=white]
    at ($(z1.west)+(-0.5cm,0.8cm)$) {#1};}%
}%

\usepackage{listings}
\lstset{
  language=R,
  basicstyle=\small\ttfamily,
  backgroundcolor=\color{white},
  breaklines=true,
  keywordstyle=\color{blue},
  stringstyle=\color{asparagus},
  deletekeywords={index},
  otherkeywords={a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z}}

\font \sfbold=cmssbx10

\setlength{\oddsidemargin}{0cm} \setlength{\textwidth}{16cm}

\renewcommand{\labelenumi}{{\bf Aufgabe \theenumi :}}
\renewcommand{\labelenumi}{\alph{enumi})}
\renewcommand{\labelenumii}{(\roman{enumii})}
\newcommand{\code}[1]{\mbox{\lstinline!#1!}}

\newcommand{\todo}[1]{\textcolor{red}{#1}}

\pagestyle{plain}

\begin{document}
  \sloppy \thispagestyle{empty} \setlength{\parindent}{0cm}
  \rule{0cm}{0cm}
  \vspace{-3.8cm}\\

  {\hrule \vspace{.2cm} {\sfbold Programmieren mit statistischer Software}\hfill
    {\sfbold Sommersemester 2019}\\
    {\sfbold Moritz Herrmann, Florian Pfisterer}\hfill {\sfbold
      Hausarbeit Teil 1}


    \vspace{.2cm} \hrule \vspace{1.5cm}

    \begin{center}
      {\bf \LARGE Hausarbeit - Teil 1}
    \end{center}

    \subsection*{Organisatorisches}
    \begin{itemize}
      \item Diese Hausarbeit besteht aus {3 Aufgaben}.
      \item Eine verbindliche Anmeldung zur Veranstaltung (d.h. Scheinerwerb) erfolgt mit Abgabe des ersten Teils der Hausarbeit.
      \item {\bf Letztmöglicher Abgabetermin: Samstag, 10. Juni 2018 (23:55 Uhr CEST).}\\
    \end{itemize}

    \subsection*{Hinweise zur Bearbeitung und Abgabe}

    \begin{itemize}
      \item Verwenden Sie für Ihre Lösung ausschließlich die Ordnerstruktur - Vorlage.

      \item Bitte tragen Sie die Namen und Martikelnummern in das Feld Author@R der Datei DESCRIPTION (siehe Ordnerstruktur) ein.
       Fügen Sie außerdem alle prüfungsrelevanten Informationen (Martikelnummer, Studiengang, Prüfungsordnung) hinzu.
       Geben Sie auch an, ob Sie mit einer Veröffentlichung Ihrer Note auf Moodle einverstanden sind oder nicht.

      \item Machen Sie unbedingt durch Kommentare deutlich, welcher Programm-Code zu welcher (Teil-) Aufgabe gehört.
            Es werden NUR Lösungen korrigiert die im korrekten File liegen korrigiert. Aufgabe1 in Exercise1.R etc.

      \item Achten Sie darauf, dass Ihr Programm-Code nachvollziehbar, ordentlich dokumentiert und kommentiert ist. Dazu gehören auch Kommentare zum erwarteten Input und Output jeder selbstdefinierten Funktion (mit Typ!).

      \item Stellen Sie des Weiteren sicher, dass die Parameter, welche an selbst-definierte Funktionen übergeben werden, dem erwarteten Format entsprechen. Achten Sie auf klare Fehlermeldungen (Stichwort: Defensives Programmieren).

      \item Bitte folgen Sie im Code dem innerhalb des Kurses festgelegten Styleguide (siehe Moodle). Achten Sie insbesondere auf sinnvolle Benennung von Variablen und Funktionen sowie wohlstrukturierten Code. Dies gilt auch für erzeugte Dateien / Plots etc..

      \item Stellen Sie bitte vor Beginn der Bearbeitung sicher, dass die folgenden Pakete auf Ihrem System installiert sind:  {\bf tidyverse, ggplot2, devtools, testthat}

      \item Alle Teilschritte, die aufgrund eines fehlerhaften Programm-Codes eine nicht beabsichtigte Fehlermeldung erzeugen, werden mit 0 Punkten bewertet.


    \end{itemize}

    \newpage
    \subsection*{Ordnerstruktur}
    \begin{itemize}
      \item Falls noch nicht installiert, installieren Sie git (\url{https://git-scm.com/downloads}) und starten
      Sie danach Ihr RStudio neu.
      \item Erhalt der Ordnerstruktur aus RStudio:\\
      RStudio $\rightarrow$ File $\rightarrow$ New Project $\rightarrow$ Version Control $\rightarrow$ git\\
      Kopieren Sie die URL in das FELD Repository URL \\
      und klicken Sie auf  {\it Create Project}.
    \end{itemize}

  \end{document}
