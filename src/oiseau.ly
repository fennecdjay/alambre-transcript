#(define Title "L'oiseau bléssé de Saint-Martin")

#(define Style "Marche Swing")

\include "melody/oiseau.ly"
\include "lyrics/oiseau.ly"
\include "chords/oiseau.ly"
\include "remain/oiseau.ly"

\tocItem \markup { \Title \tiny \concat { "(" \Style ")" } }

\include "layout.ly"