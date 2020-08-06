#(define Chords #{
\chords {
  \set chordChanges = ##t
  \set noChordSymbol = ##f

  \repeat unfold 2 {
    \repeat unfold 2 {
      d2. g4 | d1
    }
  }

  % pre-refrain
  \repeat unfold 2 {
	  g1     | d      | a:7    | d
  }

  % refrain
  \repeat unfold 2 {
	  g1     | d      | a:7    | d
  }

  % instru
  g1     | d      | a:7    | d
}
#})
