\include "texte/oiseau.ly"

OiseauTitre = "L'oiseau bléssé de Saint-Martin"
OiseauMelodie = {
  \tocItem \OiseauTitre
  \new Voice = OiseauMelodie {
    \tempo 4 = 150
    \relative c'' {
      \key d \major
      a4 a8 a a8 fis g a | b2 r |
      g4 g8 g g e fis g | a2 r |
      \break

      fis4 fis8 fis fis fis g fis | g2 r
      g4 g8 g g e fis g | a2 r |
      \break

      a4 a8 a a a a b | b2 r |
      cis4 cis8 cis cis b b a | a2 r |
      \break
      a4 a8 a a fis g a | g2 r |
      g4 g8 g g e fis g | fis2 r |
      \bar "||"
      \break

      % refrain
      a4 a8 a a fis g a | b2 r |
      cis4 cis8 cis e d cis b | a2 r |
      \break
      a4 a8 a a fis g a | g2 r |
      g4 g8 g g e fis g | fis2 r |
      \break
      fis4 fis8 fis g fis g fis | e4 g b r |
      e,4 e8 e fis e cis e | d2 r |
      \bar "|."
    }
  }
}
OiseauAccords = {
  \chords {
    \repeat unfold 4 {
      d1 | e:m | a:7 | d |
    }
    % refrain
    d1 | g | a:7 | d
    \repeat unfold 2 {
      d1 | e:m | a:7 | d |
    }
  }
}

OiseauPartition =
\score {
  \header {
    meter = "Marche Swing"
    piece = "L'oiseau bléssé de Saint-Martin"
  }
  <<
    \OiseauAccords
    \OiseauMelodie
    \OiseauParoles
  >>
}
