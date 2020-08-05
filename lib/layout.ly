\score {
  \layout {
    #(layout-set-staff-size 22)
    indent = \Indent
    \context {
      \Score
      metronomeMarkFormatter = #format-metronome-markup-approx
    }
  }

  #(if (= hide-header 0) #{
  \header {
    piece = \Title
    meter = \Style
  }
  #})

  <<
    \Chords
    \Melody
    \Lyrics
  >>
}

\reste-paroles \Remain
