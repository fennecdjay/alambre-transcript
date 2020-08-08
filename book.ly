\version "2.20.0"

\include "functions.ly"

\book {

  \header {
%    dedication = \markup { \column { "Au resistants de touts poils" \vspace #1 } }
    title = "Des veillées aux parquets"
%    subtitle = "... et de Paris aux monédières"
    subsubtitle = "... et de Paris aux monédières"
  }

  \markup \vspace #2
  \include "intro.ly"
  \noPageBreak

  \markuplist { \vspace #2.5 \table-of-contents }
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
