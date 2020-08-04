\version "2.18.0"

#(define-markup-list-command (numberedMarkup layout props idx) (number?)
   (interpret-markup-list layout props
                          #{
                            \markuplist  {
                                \bold { #(number->string idx) ". " }
                            }
                          #})
)
#(define-markup-list-command (numberedLyric layout props idx lst) (number? cheap-list?)
   (interpret-markup-list layout props
                          #{
                            \markuplist  {
                              \concat {
                                %\bold { #(number->string idx) ". " }
                                \numberedMarkup #idx
                               \column #(car lst)
                              }
                            }
                          #})
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

#(define-markup-list-command (reste-paroles layout props lst) (cheap-list?)
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
  #{ \markuplist {
    \fontsize #sz
    \reste-paroles #lst
  } #})


reste-paroles =
#(define-scheme-function
  (lst)
  (cheap-list?)
  #{
    \reste-paroles-sz #lst #3
  #}
  )
