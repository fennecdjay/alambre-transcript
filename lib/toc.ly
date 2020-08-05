#(define song-count 0)

#(define-markup-command
  (numberedTocItem layout props)
  ()
  (set! song-count (+ song-count 1))
  (interpret-markup layout props
    #{
      \markup { \fontsize #2 \concat { \numberedMarkup #song-count \tocItemWithDotsMarkup } }
    #}
  )
)

  tocItemMarkup = \markup \numberedTocItem

  tocTitleMarkup = \markup \fontsize #4 \column {
    \fill-line { \null "Sommaire" \null }
    \null
  }
