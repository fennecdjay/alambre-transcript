\version "2.20.0"

\include "paroles.ly"

mktiny =
#(define-music-function
  (parser location arg1)
  (ly:music?)
  #{
      \tiny
      #arg1
      \normalsize
  #})

mkguitar =
#(define-music-function
  (parser location arg1)
  (ly:music?)
  #{
      ^"(guitare)"
      #arg1
  #})

lparen =
#(define-music-function
  (parser location arg1)
  (ly:music?)
  #{

      \once {
          \override TextScript.extra-offset = #'(-1.5 . 2)
          \override TextScript.font-size = #4

      }
      #arg1 _"("
  #})

rparen =
#(define-music-function
  (parser location arg1)
  (ly:music?)
  #{
      \once {
          \override TextScript.extra-offset = #'(1.5 . 2)
          \override TextScript.font-size = #4
      }
      #arg1 _")"
  #})

#(define-markup-command (lien layout props str n) (string? number?)
   (interpret-markup layout props
                          #{
\markup {
  \vspace #1.5
  \fill-line {
  \page-link #n  { \italic #str }
  }
}
                          #}
                          )
   )
mkdefault =
#(define-music-function
  (parser location)
  ()
  #{
  \override Score.MetronomeMark.font-size = #0.1
  \override Score.MetronomeMark.extra-offset = #'(-10 . 0)
  #})
