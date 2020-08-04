\version "2.20.0"

\include "functions.ly"

\book {
  \header {
    dedication = \markup { \column { "Au resistants de touts poils" \vspace #1 } }
    title = "Le Bal de l'alambre vol.1"
    subtitle = "De la veillée au parquet ..."
    subsubtitle = \markup { \column { "... et de Paris aux monedieres" \vspace #2 } }
  }
  \markup {
    \vspace #2
    \fill-line {
      \column {
        "Ici Jean Alambre pourrait placer un texte"
        "Il sera centré"
      }
    }
  }
  \markuplist { \vspace #2 \table-of-contents }
  \pageBreak
  \include "colline.ly"
  \include "oiseau.ly"
  \include "fleurs.ly"
}
