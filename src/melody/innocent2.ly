#(define Melody #{
  \new Voice = Melody {
    \autoPageBreaksOff

    \key bes \minor
%    \tempo 4 = 120
    \time 4/4

    \relative c' {

      f8 f f f ees f ges f ~ |
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

#(define Indent 0)
