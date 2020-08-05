#(define Chords #{
\chords {
  \set chordChanges = ##t
  \set noChordSymbol = ##f

  \repeat unfold 2 {
    \repeat unfold 2 {
      d2. g4 | d1
    }
  }

  \repeat unfold 4 {
	  g1     | d      | a:7    | d
  }
}
#})
