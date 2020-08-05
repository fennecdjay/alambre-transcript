#(define Title "L'temps du trois temps")

#(define Style "Valse")

\include "melody/temps.ly"
\include "lyrics/temps.ly"
\include "chords/temps.ly"
\include "remain/temps.ly"

\tocItem \markup { \Title \tiny \concat { "(" \Style ")" } }

\include "layout.ly"
