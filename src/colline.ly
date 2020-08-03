\include "texte/colline.ly"

CollineMelodie = {
  \tocItem "La source de la colline"
  \relative c' {
%    \mkdefault
    \key d \major
    \tempo 4 = 110
    \partial 4 fis8 e
    \break
    \bar ".|:"
    d4. e8 fis4 g8 a ~ | a2 r4 fis8 e |
    d4. e8 fis4 b8 a ~ | a2 r4 b8 cis | \break
    d2 d8 d d d ~ | ~d2 r4 e8 d |
    cis2 cis8 cis cis cis~ | cis2 r4 d8 cis | \break
    b2 b8 g a b ~ | b2 r4 b8 b |
    a8 a r4 a8 b a a~ | a2 r4 \tiny \lparen fis8 \rparen e \break
    \bar ":|."
  }
}

CollineAccords = {
  \chordmode {
    \partial 4 r4
    d1      | a:7  | d     | a:7 |
    d2 d:5+ | b1:m | fis:7 | q   |
    g       |q     | a:7   | d   |
  }
}

CollinePartition =
\score {
  \layout {
    indent = 14.5\cm
  }

  \header {
    meter = "Madison"
    piece = "La source de la colline"
  }
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \set noChordSymbol = ##f
      \CollineAccords
    }
    \new Voice = CollineCouplet { \CollineMelodie }
    \CollineParoles
  >>
}
