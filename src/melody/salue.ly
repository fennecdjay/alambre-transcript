#(define Melody #{
  \new Voice = Melody {
    \autoPageBreaksOff

    \key g \major
    \tempo 4 = 128
    \time 4/4

    \relative c'' {
      g4 g8 g r g8 a4           |
      fis2 r                    |
      e4 fis8 g r fis8 e4       |
      fis2 r                    | \break

      b4 b8 d r b8 b4           |
      a4. fis8 r2               |
      g4 g8 g r fis8 g4         |
      a2 r                      | \break


      e4 e8 e r e8 fis4         |
      fis2  r                   |
      fis4 fis8 fis r g8 a4     |
      g2  r                     | \break

      g4 g8 g r g8 a4           |
      a4. a8  r2                |
      a4 a8 a r b8 c4           |
      b2  r                     | \break

      b4 b8 b r b8 b4           |
      a4. a8  r2                |
      g4 g8 g r fis8 g4         |
      fis2 r                    | \break

      b4 b8 b r b8 b4           |
      a2  r                     |
      e4 e8 e r fis8 g4         |
      a2 r8 b a g               | \break

      g1 | 
      fis |
      e2 ~e8 fis e d |
      d1~ | \break
      d1 ~|
      d |
      r |
      r2 r8 b' a g | \break
      g1 | r |r | r | \bar "|." \break
    }

    \autoPageBreaksOn
  } % end of \new Voice
#}) % end of define

#(define Indent 0)
