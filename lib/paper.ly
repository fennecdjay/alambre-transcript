#(define song-count 0)

#(define-markup-command (numberedTocItem layout props) ()
  (set! song-count (+ song-count 1))
  (interpret-markup layout props
    #{
      \markup { \concat { \numberedMarkup #song-count \tocItemWithDotsMarkup } }
    #})
 )
\paper {
%  tocItemMarkup = \markup { \concat { \numberedMarkup #song-count \tocItemWithDotsMarkup } }
  tocItemMarkup = \markup \numberedTocItem

  tocTitleMarkup = \markup \huge \column {
    \fill-line { \null "Sommaire" \null }
    \null
  }

  scoreTitleMarkup = \markup \page-link #1 {
      \fill-line {
        \null
        \bold { \fontsize #6 \fromproperty #'header:piece }
        \concat { "(" \tiny \fromproperty #'header:meter ")" }
      }
  }
}
