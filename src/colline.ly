#(define Title "La source de la colline")

#(define Style "Madison")

\include "melody/colline.ly"
\include "lyrics/colline.ly"
\include "chords/colline.ly"
\include "remain/colline.ly"

\tocItem \markup { \Title \tiny \concat { "(" \Style ")" } }

\include "layout.ly"
