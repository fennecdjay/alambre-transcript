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
