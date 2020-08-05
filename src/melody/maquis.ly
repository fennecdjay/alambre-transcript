#(define Melody #{
  \new Voice = Melody {
    \autoPageBreaksOff

    \key d \major
    \tempo 2 = 70
    \time 2/2

    \relative c' {

       fis4 fis8 fis r fis8 g a | a2 r |
       a4 a8 a r g8 g a | fis2 r | \break

       fis4 fis8 fis r fis8 g a | a2 r |
       a4 a8 a8 a r g a | fis2 r | \break
       \bar "||"

       b8 b4 cis8 d cis4 b8 | a4. r8 r 4 fis8 fis |
       g4. fis8 b4. a8  | a2 r | \break

       b8 b4 cis8 d cis4 b8 | a4. r8 r4 fis8 fis |
       e4. fis8 e4. d8 | d2 r | \break
       \bar "||"

       b'8 b4 cis8 d8 cis4 b8 | a4. r fis4 |
       g4. fis8 b4. a8  | a2 r | \break

       b8 b4 cis8 d8 cis4 b8 |
       a4. r fis8 fis |
       e8 e4  fis8 e4. d8 |
       d2 r | \break
       \bar "|."

     }

     \autoPageBreaksOn
  } % end of \new Voice
#}) % end of define

#(define Indent 0)
