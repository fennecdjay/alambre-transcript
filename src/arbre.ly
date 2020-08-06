#(define Title "L' arbre")

#(define Style "Bachata")

\include "melody/arbre.ly"
\include "lyrics/arbre.ly"
\include "chords/arbre.ly"
\include "remain/arbre.ly"

\tocItem \markup { \Title \tiny \concat { "(" \Style ")" } }

#(set! paroles-column 1)
\include "layout.ly"
#(set! paroles-column 0)
