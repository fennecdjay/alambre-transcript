#(define Title "title")

#(define Style "style")

\include "melody/template.ly"
\include "lyrics/template.ly"
\include "chords/template.ly"
\include "remain/template.ly"

\tocItem \markup { \Title \tiny \concat { "(" \Style ")" } }

\include "layout.ly"
