#set heading(numbering: "1.")
#set text(12pt, font: "HK Grotesk", lang: "de")
#show heading: it => text(fill: blue.darken(50%), it)
#set table(fill: (col, row) =>
  if row == 0 { aqua }
  else if calc.even(row) { aqua.lighten(50%) },
  stroke: blue.lighten(40%)
)
#show link: set text(style: "italic")
#let quest = (name, employer, task, reward, notes) => block(breakable: false, table(
  columns: (auto, auto),
  [*Questname*], [#name],
  [*Questgeber*], [#employer],
  [*Auftrag*], [#task],
  [*Belohnung*], [#reward],
  [*Notizen*], [#notes],
))
#let center_table = table.with(align: center)
#let left_table = table.with(align: left)
#let creature = (stats: (:), weapons: (:), info: (:)) => {
  let weapons_head_row = weapons.at(0).map(strong)
  let weapons_table = (weapons_head_row, weapons.slice(1))
  block(breakable: false)[
    #center_table(columns: stats.keys().len(), ..stats.keys().map(strong), ..stats.values())
    #table(columns: weapons_head_row.len(), ..weapons_table.flatten())
    #grid(columns: 2, gutter: 8pt, ..info.pairs().map(pair => (strong(pair.at(0) + ":"), pair.at(1))).flatten())
  ]
}
#let log_entry = (date, heading_level: 2, content) => [
  #heading(level: heading_level, numbering: none)[09.03.024]
  #content
]
#outline(title: [Inhaltsverzeichnis], depth: 2, indent: 1em)

#pagebreak()
= Schauplätze
== Caleria
=== Quests

#quest(
  [Gaukler für die Komtissa],
  [_Diplomat Marik Silberglanz (ca 60 Jahre, schlacksig)_],
  [Reist nach _Lamera_ um #link("Komtissa Ravininia von Jokania") zu treffen.],
  [keine Belohnung],
  [
    - Reise per Schiff (s. @Schiffsreisen)
     - Kosten: 1L pro Person
     - Dauer: 2 Tage
    - Reise übers Land (s. )
     - Dauer: 8 Tage
  ]
)
#quest(
  [Der Sommernachtstraum],
  [_Händlerin Dariana Wandlerose (29 Jahre alt, reich)_],
  [Weckt meine Großmutter und meinen Sohn.],
  [50L],
  [
    - in Nähe der Großmutter ist Feenweltübergang
    - im Sommernachtstraum schläft Szon ein Traumwesen in einem Loch im Baum
    - Großmutter besitzt eine winzige Rose in Glas (Verbindung der Welten)
    - Glas muss zerstört werden
    - Weg zurück ist die Oberfläche eines Teichs
    - Feenweltexperten können in Caleria befragt werden
  ]
)
#quest(
  [Der Bauer mit zu viel Gemüse],
  [_Malakar Sternenblick, Lehnsherr_],
  [Verhindert einen Lünchmob],
  [50L],
  [
    - _Bauer Turio (Mensch, 60)_ hat weiterhin Nahrung, obwohl alle anderen hungern
    - Dorf verdächtigt ihn der Hexerei
    - _Turio_ versklavt Fee
    - alter Pakt (Wechselbalg der Mutter) zwingt Fee dazu
    - alte Freundin _Victoria (80)_ der Mutter weiß mehr
     - Mutter lange tot
     - hatte in Jugend Affäre
     - Kind musste weg
  ]
)
#quest(
  [Der Brief an die Front],
  [_Kommandant Julius Knoggebrigt_],
  [Überbringt dringende Befehle an die Front],
  [Belohnung: 100L],
  [
    - Glasz ein Auge auf einem menschlichen Arm (Feenwesen) bewacht Tunnel nach Malait
    - möchte Körperteile als Wegezoll
    - Finde Feldmarschall in der Feenwelt
  ]
)
#quest(
  [SAM needs you!],
  [_Kommandant Julius Knoggebrigt_],
  [Aquiriert freiwillige aus der Landbevölkerung],
  [100L],
  [
    - brauchen alles schwache als auch starke
  ]

)
== Lamera
=== Quests

#quest(
  [Gaukler für die Komtissa II],
  [#link("Komtissa Ravinia von Jokania")],
  [Reist nach Ravheim und verbessert den Ruf der Komtissa],
  [200L],
  []
)

#quest(
  [Blutopfer für den Jokabaum],
  [_Hauptmann Ludwig Kniebel(Gnom)_],
  [Findet die geflüchteten Gefangenen],
  [100L],
  []
)

== Ravheim
=== Quests
#quest(
  [Der politisch Gefangene],
  [_Maria Mittus(Albin, sehr attraktiv)_],
  [Befreit meinen Bruder aus dem Gefängnis],
  [Aufnahme bei den Neu-Farolischen Separatisten, Ruf Komtissa -50%],
  []
)
#quest(
  [Rettungsaktion],
  [_Agent der Silberringe, Hristo Stullini_],
  [Findet #link("Lucilla")[Lucilla Vendaris]],
  [200L],
  [
    - gefangen in Zilia
  ]
)
#quest(
  [Rattlinge in der Kanalisation],
  [_Mercator und Hauptmann Julio von Ravheim_],
  [Tötet die Ratlinge],
  [Komtissa Ruf +10%],
  [
    - Verhandlung und Kampf möglich
  ]
)
#quest(
  [Öffentliche Erheiterung von der Komtissa],
  [_Mercator und Hauptmann Julio von Ravheim_],
  [Gewinnt das Ringen um die Meinungshoheit],
  [Komtissa Ruf +50%],
  [
    - Darbietung, etc.
  ]
)
#quest(
  [Aufwiegler und Störenfriede aus Neu-Farol],
  [_Mercator und Hauptmann Julio von Ravheim_],
  [Macht wichtige Anführer der Neu-Farolischen Bewegung mundtot],
  [pro Anführer +/-20% Komtissa Ruf],
  []
)
#quest(
  [Separatisten aus Neu-Farol],
  [_Mercator und Hauptmann Julio von Ravheim_],
  [Bringt Beweise, dass die Separatisten im Osten Soldaten aus Neu-Farol sind],
  [+30% Komtissa Ruf],
  [
    - Lager im Wald
    - Untergrundorganisation
  ]
)

= Personen

== Komtissa Ravinia von Jokania #label("Komtissa Ravinia von Jokania")

#table(
  columns: (auto, auto, auto),
  [*Eigenschaften*], [*Offene Interessen*], [*Versteckte Interessen*],
  [
    - Zwergin, ca 70 Jahre alt
    - halbseitig gelähmt, wortkark
  ],
  [
    - Krieg mit Neu-Farol verhindern
    - Stabilität im Land sichern
  ],[
    - Handel mit Jokanüssen und -blättern aufrechterhalten
    - hofft auf Wunderheilmittel aus dem Jokabaum
  ]
)

== Severos, Kanzler von Patalis

#table(
  columns: (auto, auto),
  [*Offene Interessen*], [*Versteckte Interessen*],
  [
    - #link(<Lucilla>, "Lucilla Vendaris") finden und sicher in Ultia wissen
  ],[
    - die Geheimwaffe _#link(<Zaghir>, "Zaghir")_ unter Kontrolle bringen
  ]
)

== Lucilla Vendaris, die Magierin <Lucilla>

== Aulus Uttrof, Hauptmann der Stadtwache

#table(
  columns: (auto, auto),
  [*Offene Interessen*], [*Versteckte Interessen*],
  [
    - möchte Neu-Farol erblühen sehen
  ],[
    - wird von _Rania Ruwensee_ gezwungen
  ]
)

== Rania Ruwensee, Königin von Neu-Farol

#table(
  columns: (auto, auto),
  [*Offene Interessen*], [*Versteckte Interessen*],
  [
    - möchte Unabhängigkeit für die Faroler
    - möchte Wohlstand für ihr Volk
    - möchte Vordan als Patron Gott für ihr Volk
    - möchte farolische Bürger in Jokania beschützen
  ],[
    - mehr Einfluss auf Patalische Politik
    - territoriale Ausdehnung
    - Zugang zum Toralla
    - benötigt #link(<Zaghir>, "Geheimwaffe, Zaghir") um Jokania zu erobern
  ]
)

#pagebreak(weak: true)
= Kreaturen

== Landpeitschen Befallener Seemann <Landpeitsche>

#creature(stats: (
 AUS: "2", BEW: "2", INT: "3", KON: "2", MYS: "1", STÄ: "3", VER: "2", WIL: "2", GK: "5", GSW: "7", LP: "7", FO: "26", VTD: "18", SR: "0", KW: "16", GW: "31", 
), weapons: (
  ("Waffen", "Wert", "Schaden", "WGS", "INI", "Merkmale"),
  ("Ruder", "9", "1W6+5", "9", "7", "Stumpf"),
  ("Ranke 1", "9", "1W6", "12", "8", "Umklammern"),
  ("Ranke 2", "9", "1W6", "12", "8", "Umklammern")
), info: (
  Typus: "Monster, Humanoider",
  Monstergrad: "2 / 1",
  Fertigkeiten: "Entschlossenheit 16, Wahrnehmung 12, Beherrschungsmagie 25, Lichtmagie 10",
  Zauber: "Beherrschung I: Furcht, Verwirren; II: Suggestion; Licht 0: Licht, Lichtertanz",
  Meisterschaften: "Handgemenge (I: Umklammern; III: Würgegriff)",
  Merkmale: "Furchterregend (15), Koloss 3 (normaler Angriff des Wirtes, Ranken), Schmerzresistenz",
  Beute: "Ranken (10 Lunare; Alchemie gg. 25)",
))

== Zaghir <Zaghir>


#pagebreak(weak: true)
= Tabellen
== Namen

#block(breakable: false)[
#center_table(
  columns: (auto, auto, auto, auto),
  [*1W10*], [*m. Vorname*], [*w. Vorname*], [*Nachname*],
  [1], [Alyosha], [Alyena], [Sestani],
  [2], [Ascan], [Ascania], [Farvian],
  [3], [Branek], [Brana], [Roterius],
  [4], [Caran], [Carina], [Letian],
  [5], [Drinan], [Drina], [Meronius],
  [6], [Farano], [Farina], [Eranova],
  [7], [Flavio], [Flavia], [von Dravnic],
  [8], [Gorin], [Gorina], [Cirdanian],
  [9], [Juvenio], [Juvenia], [Juveni],
  [10], [Lavinio], [Lavinia], [Tarasgan],
)]

== Schiffsreisen <Schiffsreisen>

Bei vergleichenden Proben entscheidet die Anzahl der Erfolgsgrade(EG) über Sieg oder Niederlage.
Wie oft auf diese Tabelle goworfen wird ist der Spielleitung überlassen.
#table(
  columns: (auto, auto, auto),
  [2W10], [Ereignis], [Erläuterung],
  [2-3], [Schiffsbruch durch Seeungeheuer], [
       - 5 Vergleichende Proben gg. 14
       - Niederlage: 
        - verliere 2W10L oder Gegenstände diesen Wertes
        - Verwundet 1W4 Stufen
        - Sieg: Erschöpft 1W4 Stufen
  ],
  [4-7], [Schwerer Sturm], [
        - 5 Vergleichende Proben gg. 12
        - Niederlage: verliere 1W10L oder Gegenstände diesen Wertes 
        - Sieg: verliere einen Gegenstand deiner Wahl
  ],
  [8-12], [Infizierter Seemann], [Kampf gegen #link("Landpeitsche")n Befallener Seemann],
  [13-18], [Harter Seegang], [
        - 5 Vergleichende Proben gg. 8
        - Niederlage: verliere (1W10 / 5)L oder Gegenstände diesen Wertes 
        - Sieg: Erschöpft 1W2 Stufen
  ],
  [19-20], [Ereignislos]
)

== Überlandreisen <Überlandreisen>

Die folgenden Tabellen sind denen des Regionalbandes für Patalis und Elyrea@PuE[S. 119f] stark nachempfunden. 
Bei vergleichenden Proben entscheidet die Anzahl der Erfolgsgrade(EG) über Sieg oder Niederlage.
Wie oft auf diese Tabelle geworfen wird ist der Spielleitung überlassen.

#table(
  columns: (auto, auto, auto),
  [1W4], [Ereignis], [Erläuterung],
  [1], [Feinde], [ wirf auf @Feinde ],
  [2], [Hindernisse], [wirf auf @Hindernisse ],
  [3], [Reiseglück], [ wirf auf @Reiseglück ],
  [4], [Begegnung], [ wirf auf @Begegnung ],
)

=== Feinde
#figure( caption: "Feinde")[
  #left_table(
    columns: (auto, auto, auto),
    [2W10], [Ereignis], [Erläuterung],
    [2-3], [Drachenangriff], [
      - 5 vergleichende Proben gg. 14
         - Niederlage: 
          - Verwundet 1W4 Stufen
          - Waffe, Schild oder Rüstung beschädigt
        - Sieg: Erschöpft 1W4 Stufen
    ],
    [4-8], [Rattlinge], [1W6 Rattlinge verfolgen die Reisenden _(Wahrnehmung)_@GRW[S. 275]],
    [8-11], [Aggressive Landbevölkerung], [
      - 2W6 Bettler bedrängen Reisende um Gaben 
      - Stehlen notfalls _Vergleichende Probe (15 (Fingerfertigkeit + 3) gg. Wahrnehmung)_
    ],
    [12-14], [Bär der sein Revier verteidigt], [ Kampf gegen Bär@GRW[S. 284]],
    [15-16], [keine Feinde], [ Ereignislos ],
    [17-18], [Wegelagerer], [
      - 2W3 Räuber@GRW[S. 276]
      - Kampf oder Wegezoll 2W10L
    ],
    [19-20], [Adelsfrust], [
      - 2W6 Söldner@GRW[S. 280] + Adliger
      - will Reisende für blutige Kampfarena
    ]
  )
] <Feinde>

=== Hindernisse
#figure(caption: "Hindernisse")[
  #left_table(
    columns: (auto, auto, auto),
    [2W10], [Ereignis], [Erläuterung],
    [2-3], [Katastrophe], [
      - 5 vergleichende Proben gg. 14 (Vulkan, Tsunami, Erdbeben)
         - Niederlage: 
          - Verwundet 1W4 Stufen
        - Sieg: Erschöpft 1W4 Stufen
    ],
    [4-8], [Schlechtes Wetter], [
      - 5 vergleichende Proben gg. 14
         - Niederlage: 
          - Erschöpft 1W4 Stufen
        - Sieg: keine Konsequnzen
    ],
    [8-12], [Marode Brücke, umgekippter Baum, Viehherde], [
      - 4 vergleichende Proben gg. 12
         - Niederlage: 
          - Erschöpft 1W2 Stufen
        - Sieg: keine Konsequnzen
    ],
    [13-18], [Erdrutsch], [
      - _Athletik gg. 25_, ansonsten 2W6+3 Schaden
      - _Akrobatik gg. 20_ reduziert Schaden um 1 Punkt (+1 pro EG)
    ],
    [19-20], [keine Hindernisse], [Ereignislos]
  )
] <Hindernisse>

=== Reiseglück
#figure(caption: "Reiseglück")[
  #left_table(
    columns: (auto, auto, auto),
    [2W10], [Ereignis], [Erläuterung],
    [2-7], [Kleiner Fund], [
      - Ziege
      - Geldbeutel (1W4 L)
      - Pferd
      - Heilkräuter (+3 auf Heilkundeprobe)
    ],
    [8-17], [Abkürzung], [ - 1W4 Tage weniger ],
    [17-19], [großer Fund], [
      - Geldbeutel (1W6 + 4 L)
      - Höhleneingang mit Schätzen
      - Schriftrolle mit Zauber 1. Grades
    ],
    [20], [Freundliche Fee], [
      - jeder Spieler daf wählen
       - eine goldene Heilbeere (+1W10 LP)
       - ein goldenes Wässerchen (+1W10 Fokus)
    ]
  )
] <Reiseglück>

=== Begengung
#figure(caption: "Begegnung")[
  #left_table(
    columns: (auto, auto, auto),
    [2W10], [Ereignis], [Erläuterung],
    [2-7], [Freundliche Landbevölkerung], [
      - geben Unterkunft und Essen
    ],
    [8-10], [Einzelner Reisender], [],
    [11-18], [Reisegruppe], [ 1W10 Personen ],
    [19-20], [Handelszug], [],
  )
] <Begegnung>

#pagebreak()
= Abenteuer-Logbuch

#table(
  columns: (auto, auto, auto),
  ..([Name], [Volk], [Aktuelles]).map(strong),
  [Iva], [Mensch], [
    - arbeitet als Söldner für die Teleschai
    - Imja, das Feenwesen hat etwas gut bei ihm
    - verfügt noch für 6 Tage weder über Schmerz noch über einen Geruchssinn
  ],
  [Felessan], [Albe], [
    - trägt eine rote Feder am Hut
    - ist ein Teleschai und Akkrobat
    - besitzt eine 3-Personen Tarva plus 2 Zugpferde
  ],
  [Larisanos], [Mensch], [
    - ist ein Lyxa-Priester, aber zeigt sich als Gelehrter
  ],
  [Aldon], [Albe], [
    - ist ein Barde und Teleschai mit einem Bogen und einem Saiteninstrument
  ]
)
#log_entry("09.03.024")[
 - Gruppe bezieht Platz am Markt, Stellplatz für die Tarva
 - Iva verspricht _Händlerin Dariana Wandlerose_ zu helfen, die Mutter und Sohn zu wecken
 - Iva tauscht einen Gefallen an _Imja (Feenwesen auf dem Markt)_ für zweimaliges "wiederfinden des Wachseins"
 - Gruppe findet Wachsein vom Sohn der Händlerin, _Offizier Wandlerose (20 Jahre, Mensch)_
 - Larisanos schläft neben Großmutter ein und wacht in Traumwelt auf (ewig weite Wiese und Baum mit Loch)
 - Larisanos findet schlafenden Jungen (10 Jahre) im Baum und Treppe nach oben und unten
 - Larisanos findet heraus, dass Junge verwandelt sich wenn man ihn wecken möchte
 - Iva find Larisanos Wachsein wieder
 - Larisanos und Aldon gehen zu _Magierin, Alyena Sestani (Albin, sehr gut gekleidet)_
 - Iva und Felessan beschatten _Offizier Wandlerose_, erfolglos
 - Magierin gibt Larisanos eine Schriftrolle mit Zauber "Gedächtnis schützen"
 - Gruppe geht zurück zum Markt
 - Iva gewinnt Schwerkampf-Wettkampf und gewinnt Kettenrüstung (35L) und Auftrag "Brief an die Front"
 - _Kommandant Julius Knoggebrigt_ verabredet sich mit Iva am nächsten Tag
 - Iva tauscht Kettenhemd und Schmerzgefühl und Geruchssinn für 7 Tage gegen "Einen gemeinsamen Traum aus dem alle Erwachen" bei _Imja_
 - Aldon und Felessan gewinnen Darbietungswettkampf (15L) und eine Schleife mit Aussicht auf Zusatzbelohnung bei _Kommandant Julius Knoggebrigt_
 - Gruppe legt sich neben Großmutter und verfällt in Schlaf
 - Gruppe wacht in dunklem Fichten-Wald auf und bekämpft riesigen Wolf
 - Gruppe besänftigt Wolf und dieser wird zu schlafenden Jungen
 - Gruppe bringt Jungen zum großen Baum und wickelt ihn in eine Decke
 - Gruppe geht Treppe nach oben und findet schlafenden Jungen
 - Iva entfernt sich vom Baum mit Tagträumen
 - Gruppe steigt Treppen weiter hoch und erwacht
 - Hausmädchen der Händlerin bringt Gruppe in Gastgemächer
]

#pagebreak()
#bibliography(full: true, style: "turabian-fullnote-8", "material.bib")
