#(define Melody #{
  \new Voice = Melody {
  \autoPageBreaksOff
     \relative c'' {

     \key a \minor
     \tempo 4 = 120

      \partial 4 a8 b \break

      c8 c r8 a a b c b |
      r2. g8 a |
      b4 r8 b b a b c |
      r2. a8 b | \break

%      c4 \tupletUp \times 2/3 { r8 c b } a b c d |
      c4 c8 b a b c d |
      r2. b8 c |
      d4 r8 c b c d e |
      r1 | \break

     \set melismaBusyProperties = #'()
      d2 ~ d8 c b c |
      r1 |
      b2 ~ b8 a gis a |
      r1 | \break
      \bar "|."
      \unset melismaBusyProperties
  \autoPageBreaksOn

    } % end of relative

  } % end of voice
#}) % end of define
