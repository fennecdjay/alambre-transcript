#(define Melody #{
  \new Voice = Melody {

    \key d \major
    \tempo 4 = 110

      \relative c' {

      \partial 4 fis8 e
      \break

      d4. e8 fis4 g8 a ~ | a2 r4 fis8 e |
      d4. e8 fis4 b8 a ~ | a2 r4 b8 cis | \break

      d2 d8 d d d ~ | d2 r4 e8 d |
      cis2 cis8 cis c cis~ | cis2 r4 d8 cis | \break

      b2 b8 g a b ~ | b2 r4 b8 b |
      a8 a r4 a8 b a a~ | a2 r2
      \bar "|."
    }
  } % end of \new Voice
#}) % end of define
