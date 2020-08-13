#(define Melody #{
  \new Voice = Melody {
    \autoPageBreaksOff

    \key ees \minor
    \tempo 2 = 86
    \time 2/2

    \relative c'' {
      bes4. ges8 ges4 ges |
      aes4. f8 r2       |
      r4. ges8 ges ges4 aes8 |
      f2 r | \break

      bes4. ges8 ges4 ges |
      aes4. f8 r2       |
      r4. ges8 ges f4 ees8 |
      f2 r | \break

      r4. ees8 ees f4 ges8 |
      aes4. f8 r2       |
      r4. ges8 f ges4 aes8 |
      bes1  | \break


      bes4 r8 bes ces4 bes |
      aes4 r8 ces8 bes4 aes |
      ges4 r f r |
      ees2         \small {ees8_"(instrumental)" f ges aes | \bar "||" \break

      bes4 bes ces aes |
      bes ges ees8 f ges aes | 
      bes4 bes aes ges | 
      f2 ees8 f ges aes | \break

      bes4 bes ces aes |
      bes ges ees8 f ges aes | 
      bes4 bes aes ges | 
      f2 bes,8 des f des | \break

      ees1 ~|
      ees |
      r | r | \bar "|." \break
}
    }

    \autoPageBreaksOn
  } % end of \new Voice
#}) % end of define

#(define Indent 0)
