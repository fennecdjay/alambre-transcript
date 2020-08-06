#(define Title "Le marché aux fleurs")

% Madison
#(define Style "FoxTrot")

\include "melody/fleurs.ly"
\include "lyrics/fleurs.ly"
\include "chords/fleurs.ly"
\include "remain/fleurs.ly"

\tocItem \markup { \Title \tiny \concat { "(" \Style ")" } }

\include "layout.ly"
