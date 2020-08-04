\version "2.20.0"

\include "functions.ly"

\book {
  \header {
    dedication = \markup { \column { "Au resistants de touts poils" \vspace #1 } }
    title = "Le Bal de l'alambre"
    subtitle = "De la veillée au parquet ..."
    subsubtitle = \markup { \column { "... et de Paris aux monédières" \vspace #2 } }
  }
  \markup {
    \vspace #2
     \teeny \italic \fill-line {
      \center-column {
        \magnify #0.5 "note du transcripteur:"
        "Les chansons de Jean sont comme le cours d'un ruisseau: vivantes et sinueuses"
        "Si cela sied à leur auteur, les jouers en bal demande adatptation."
        "J'ai donc fait le choix de les proposer en formes simples,"
        "privilegiant la facilité de lecture,"
        "pour permettre a l'interprète de les faire siennes."
      }
    }
  }
  \markuplist { \vspace #2 \table-of-contents }
  \pageBreak
  \include "colline.ly"
  \include "oiseau.ly"
  \include "fleurs.ly"
  \include "temps.ly"
}
