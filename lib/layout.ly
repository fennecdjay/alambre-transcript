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

#(display Title)
#(display ":")
#(display paroles-column)
#(display "\n")
%#(if (= paroles-column 0)
%  #{
    \reste-paroles \Remain
%  #}
%)
%  #{
%    \reste-paroles \Remain
%  #})
