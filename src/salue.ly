#(define Title "Je vous salue")

#(define Style "Beguine")

\include "melody/salue.ly"
\include "lyrics/salue.ly"
\include "chords/salue.ly"
\include "remain/salue.ly"

\tocItem \markup { \Title \tiny \concat { "(" \Style ")" } }

\include "layout.ly"
