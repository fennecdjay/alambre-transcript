\version "2.20.0"

\include "functions.ly"
\include "colline.ly"
\include "oiseau.ly"

\book {
  \paper {
    tocItemMarkup = \markup \page-link #2 \fill-with-pattern #1 #RIGHT .
    \fromproperty #'toc:text \fromproperty #'toc:page

    indent = #0

    scoreTitleMarkup = \markup \page-link #1 {
        \fill-line {
          \null
          \fontsize #2.5 \bold \fromproperty #'header:piece
          \concat { "(" \tiny \fromproperty #'header:meter ")" }
        }
    }
  }
  \header {
    % Les champs suivants sont centrés
    dedication = \markup { \column { "Au resistants de touts poils" \vspace #1 } }
    title = "Le Bal de l'alambre vol.1"
    subtitle = "De la veillée au parquet"
    subsubtitle = \markup { \column { "... et de Paris aux monedieres" \vspace #2 } }
    % Les champs suivants sont répartis sur une même ligne, et
    % le champ "instrument" apparaîtra sur les pages suivantes
    instrument = ##f
    poet = \markup { \tiny "textes de Jean Alambre" }
    composer = \markup { \tiny "musiques de Jean Alambre" }
    % Les champs suivants sont en opposition sur la même ligne
    arranger = ##f
    % Les champs suivants sont centrés en bas de page
    copyright = "voyage en terre occitanne"
    tagline = "Plus d'information sur https://jean-alambre.com"
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
  \CollinePartition \CollineTexte \pageBreak
  \OiseauPartition  \OiseauTexte  \pageBreak
}
