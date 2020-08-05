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
