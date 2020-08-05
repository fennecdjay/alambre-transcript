#(define song-count 0)

#(define-markup-command (numberedTocItem layout props) ()
  (set! song-count (+ song-count 1))
  (interpret-markup layout props
    #{
      \markup { \fontsize #2 \concat { \numberedMarkup #song-count \tocItemWithDotsMarkup } }
    #})
 )

\paper {

  tocItemMarkup = \markup \numberedTocItem

  tocTitleMarkup = \markup \fontsize #4 \column {
    \fill-line { \null "Sommaire" \null }
    \null
  }

  scoreTitleMarkup = \markup \page-link #1 {
    \column {
      \fill-line {
        \null
        \bold { \fontsize #8 \fromproperty #'header:piece }
        \null
      }
      \fill-line {
        \null
        \null
        \concat { "(" \tiny \fromproperty #'header:meter ")" }
      }
    }
  }
}

\paper {
  system-system-spacing.padding = #0.7  %fit staves closer together
  system-system-spacing.stretchability = #3  %how flexible the spacing is
}
