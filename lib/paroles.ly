#(define-markup-list-command (numberedMarkup layout props idx) (number?)
  (interpret-markup-list layout props
    #{
      \markuplist  {
        \bold { #(number->string idx) ". " }
      }
    #}
  )
)

#(define-markup-list-command (numberedLyric layout props idx lst) (number? cheap-list?)
  (interpret-markup-list layout props
    #{
      \markuplist  {
        \concat {
          \numberedMarkup #idx
          \column #(car lst)
        }
      }
    #}
  )
)

#(define-markup-list-command (reste-paroles-interne layout props idx lst) (number? cheap-list?)
   (if (pair? (cdr lst))
       (interpret-markup-list layout props
                              #{
                                \markuplist  {
                                  \numberedLyric #idx #lst
                                  \vspace #1
                                  \reste-paroles-interne #(+ 1 idx) #(cdr lst)
                                }
                              #}
                              )
       (interpret-markup-list layout props
                              #{
                                \markuplist \numberedLyric #idx #lst
                              #}
                              )

       )
   )

reste-paroles-interne-column =
#(define-markup-list-command (reste-paroles-interne-column layout props idx lst) (number? cheap-list?)
   (if (pair? (cdr lst))
       (interpret-markup-list layout props
                              #{
                                \markuplist  {
                                  \fill-line {
                                    \numberedLyric #idx #lst
                                    \hspace #2
                                    \numberedLyric #(+ 1 idx) #(cdr lst)
                                  }
                                  \vspace #1
                                  \reste-paroles-interne-column #(+ 2 idx) #(cddr lst)
                                }
                              #}
                              )
       (interpret-markup-list layout props
                              #{
                                \markuplist \numberedLyric #idx #lst
                              #}
                              )

       )
   )

#(define-markup-list-command (reste-paroles-inner layout props lst) (cheap-list?)
  (interpret-markup-list layout props
                          #{
                            \markuplist {
                              \reste-paroles-interne #2 #lst
                            }
                          #}
                          )
   )

reste-paroles-sz =
#(define-scheme-function
  (lst sz) (cheap-list? number?)
  (if (not (null-list? lst))
  #{ \markuplist {
    \fontsize #sz
    \reste-paroles-inner #lst
  } #}))


reste-paroles =
#(define-scheme-function
  (lst)
  (cheap-list?)
  (if(= paroles-column 0)
  #{
    \reste-paroles-sz #lst #3
  #}
  #{
    \markuplist {
      \fontsize #3
      \reste-paroles-interne-column #2 #lst
    }
  #}

  )


  )
