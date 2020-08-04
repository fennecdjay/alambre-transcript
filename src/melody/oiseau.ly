#(define Melody #{
  \new Voice = Melody {
    \autoPageBreaksOff

    \tempo 4 = 150
    \relative c'' {

      \key d \major

      a4 a8 a a8 fis g a | b2 r |
      g4 g8 g g e fis g | a2 r |
      \break \noPageBreak

      fis4 fis8 fis fis fis g fis | g2 r
      g4 g8 g g e fis g | a2 r |
      \break \noPageBreak

      a4 a8 a a a a b | b2 r |
      cis4 cis8 cis cis b b a | a2 r |
      \break \noPageBreak

      a4 a8 a a fis g a | g2 r |
      g4 g8 g g e fis g | fis2 r |
      \bar "||"
      \break \noPageBreak

      a4 a8 a a fis g a | b2 r |
      cis4 cis8 cis e d cis b | a2 r |
      \break \noPageBreak

      a4 a8 a a fis g a | g2 r |
      g4 g8 g g e fis g | fis2 r |

      fis4 fis8 fis g fis g fis | e4 g b r |
      e,4 e8 e fis e cis e | d2 r |
      \break 
      \bar "|."
    }
  }

  \autoPageBreaksOn
#})

#(define Indent 0)
