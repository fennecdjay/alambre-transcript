#(define Title "L'innocent")

#(define Style "Madison")

\include "melody/innocent.ly"
\include "lyrics/innocent.ly"
\include "chords/innocent.ly"
\include "remain/innocent.ly"

\tocItem \markup { \Title \tiny \concat { "(" \Style ")" } }

\include "layout.ly"

\include "melody/innocent2.ly"
\include "lyrics/innocent2.ly"
\include "chords/innocent2.ly"
\include "remain/innocent2.ly"

#(set! hide-header 1)
\include "layout.ly"
#(set! hide-header 0)

