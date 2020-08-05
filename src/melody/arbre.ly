#(define Melody #{
  \new Voice = Melody {

    \key ees \minor
    \tempo 2 = 86
    \time 2/2

    \relative c'' {
      bes4. ges8 ges4 ges |
      aes4. f8 r2       |
      r4. ges8 ges ges r aes |
      f1 | \break

      bes4. ges8 ges4 ges |
      aes4. f8 r2       |
      r4. ges8 ges ges r ees |
      f1 | \break

      r4. ees8 \times 2/3 { ees4 f ges } |
      aes4. f8 r2       |
      r4. ges8 \times 2/3 { ges4 ges aes } |
      bes2 r2  | \break


      bes4. bes8 ces4 bes |
      aes4. ces8 bes4 aes |
      ges4 r f r |
      ees2 r | \break
    }
  } % end of \new Voice
#}) % end of define

#(define Indent 0)
