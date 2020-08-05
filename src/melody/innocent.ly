#(define Melody #{
  \new Voice = Melody {
    \autoPageBreaksOff

    \key bes \minor
    \tempo 4 = 120
    \time 4/4

    \relative c' {
      \partial 8 f8 \break

      f4 f8 ees des ees f ges ~ |
      ges2 r8 aes bes c |
      c2 bes8 c aes f~ |
      f8 f8~f4. f8 f ees | \break

      des4 r4. des8 ees f |
      ees4 r2. |
      des4. des8 c des c bes ~ |
      bes2 r | \break

      bes'8 bes4. ees f ees des~ |
      des2 r4. f8 |
      bes8 bes bes bes a f a bes ~|
      bes2 r | \bar "||" \break

      f8^\markup { \musicglyph #"scripts.coda" } f f f ees f ges f ~ |
      f2 r |
      bes4 bes8 f ees f ees des ~ |
      des2 r | \break

      f4 f8 f ees f ges f ~ |
      f2 r |
      bes4 bes8 bes a f a bes ~ |
      bes2 r | \bar "|." \break
    }

    \autoPageBreaksOn
  } % end of \new Voice
#}) % end of define

#(define Indent 150)
