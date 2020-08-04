#(define Chords #{
  \chords {
    \set chordChanges = ##t
    \set noChordSymbol = ##f

    \repeat unfold 4 {
      d1 | e:m | a:7 | d |
    }

    d1 | g | a:7 | d
    \repeat unfold 2 {
      d1 | e:m | a:7 | d |

    }
  } % end of chords
#}) % end of define

