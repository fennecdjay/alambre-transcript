#(define Title "L' arbre")

#(define Style "style")

\include "melody/arbre.ly"
\include "lyrics/arbre.ly"
\include "chords/arbre.ly"
\include "remain/arbre.ly"

\tocItem \markup { \Title \tiny \concat { "(" \Style ")" } }

\include "layout.ly"
