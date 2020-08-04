#(define Chords #{{
\chords {
  \set chordChanges = ##t
  \set noChordSymbol = ##f

  \partial 2. r2.
  
  \repeat unfold 2 {
    f2.:m | q | q   | q |
    bes:7 | q | ees | q |
    c:m   | q | q   | q |
  }

  f2.:m | q | bes:7 | r |
  bes:7 | q | r     | r |
  ees   | q | c:m   | q |

}
}#})
