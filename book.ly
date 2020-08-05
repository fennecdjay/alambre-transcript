\version "2.20.0"

\include "functions.ly"

\book {

  \header {
    dedication = \markup { \column { "Au resistants de touts poils" \vspace #1 } }
    title = "Le Bal de l'alambre"
    subtitle = "De la veillée au parquet ..."
    subsubtitle = \markup { \column { "... et de Paris aux monédières" \vspace #2 } }
  }

  \include "intro.ly"

  \markuplist { \vspace #2 \table-of-contents }

  \pageBreak

  \include "colline.ly"  \pageBreak
  \include "oiseau.ly"   \pageBreak
  \include "fleurs.ly"   \pageBreak
  \include "temps.ly"    \pageBreak
  \include "maquis.ly"   \pageBreak
  \include "arbre.ly"    \pageBreak
  \include "innocent.ly" \pageBreak
  \include "salue.ly"    \pageBreak
}
