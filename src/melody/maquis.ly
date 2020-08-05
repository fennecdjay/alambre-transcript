#(define Melody #{
  \new Voice = Melody {
    \autoPageBreaksOff

    \key d \major
    \tempo 2 = 70
    \time 2/2

    \relative c' {

       fis4 fis8 fis4 fis8 g a | a2 r |
       a4 a8 a4 a8 g a | fis2 r | \break

       fis4 fis8 fis4 fis8 g a | a2 r |
       a4 a8 a4 a8 g a | fis2 r | \break
       \bar "||"

       \repeat unfold 2 {
         b4. cis8 d d cis b | a4. fis fis4 |
         g4. fis8 b4. a8  | a2 r | \break

         b4. cis8 d4 cis8 b | a4. fis fis4 |
         e4. fis8 e4. d8 | d2 r | \break
         \bar "||"
       }     
       \bar "|."

     }

     \autoPageBreaksOn
  } % end of \new Voice
#}) % end of define

#(define Indent 0)
