#(define Melody #{
  \new Voice = Melody {

    \key ees \major
    \tempo 4 = 200
    \time 3/4

    \relative c'' {

      \partial 2. c4 c bes
      \break

      c2.      ~| c          | r        | c4 d ees   | \break
      d2 d4     | c2 bes4    | bes2.   ~| bes        | \break
      ees,2.   ~| ees        | r2.      | g4 aes bes | \break

      aes2.    ~| aes        | r        | aes4 bes c | \break      
      bes2 c4   | bes2 aes4  | g2.     ~| g          | \break
      ees2.    ~| ees        | r        | g4 aes g   | \break

      f2.       | ees4 d ees | f2.     ~| f2.        | \break
      r2.       | r4 f g     | f4 ees d | c2 d4      | \break
      ees2.    ~| ees        | r        | r          | \break
      \bar "|."
    }
  } % end of \new Voice
#}) % end of define
