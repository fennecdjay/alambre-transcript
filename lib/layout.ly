\tocItem \markup { \Title \tiny \concat { "(" \Style ")" } }

#(define-public (format-metronome-markup-approx event context)
  (let ((eq-sym-def (ly:context-property context 'tempoEquationText))             ; added option
        (hide-paren (eq? #t (ly:context-property context 'tempoHideParenthesis))) ; added option
        (num-color (ly:context-property context 'tempoNumberColor #f))            ; added option
        (hide-note (ly:context-property context 'tempoHideNote #f))
	(text (ly:event-property event 'text))
	(dur (ly:event-property event 'tempo-unit))
	(count (ly:event-property event 'metronome-count)))
    (metronome-markup-approx text dur count hide-note eq-sym-def hide-paren num-color)))

#(define-public (metronome-markup-approx text dur count hide-note eq-sym-def hide-paren col)
  (let* ((note-mark (if (and (not hide-note) (ly:duration? dur))
			(make-smaller-markup
			 (make-note-by-number-markup (ly:duration-log dur)
						     (ly:duration-dot-count dur)
						     1))
			#f))
	 (count-markup (cond ((number? count)
			      (if (> count 0)
				  (make-simple-markup (number->string count))
				  #f))
			     ((pair? count)
			      (make-concat-markup
			       (list
				(make-simple-markup (number->string (car count)))
				(make-simple-markup (ly:wide-char->utf-8 #x2009))
				(make-simple-markup (ly:wide-char->utf-8 #x2013))
				(make-simple-markup (ly:wide-char->utf-8 #x2009))
				(make-simple-markup (number->string (cdr count))))))
			     (else #f)))
         (note-markup (if (and (not hide-note) count-markup)
			  (make-concat-markup
			   (list
			    (make-general-align-markup Y DOWN note-mark)
			    (make-simple-markup " ")
			    (make-simple-markup (if (string? eq-sym-def)
                                                 eq-sym-def
                                                 (ly:wide-char->utf-8 #x2248)))
			    (make-simple-markup " ")
			    (if (eq? col #f)
                             count-markup
                             (make-with-color-markup col count-markup))))
			  #f))
         (text-markup (if (not (null? text))
			  (make-bold-markup text)
			  #f)))
    (if text-markup
	(if (and note-markup (not hide-note))
	    (make-line-markup (list text-markup
                                   (if hide-paren
                                    note-markup
				    (make-concat-markup
				     (list (make-simple-markup "(")
					   note-markup
					   (make-simple-markup ")"))))))
	    (make-line-markup (list text-markup)))
	(if note-markup
	    (make-line-markup (list note-markup))
	    (make-null-markup)))))

\score {
  \layout {
    indent = \Indent
    \context {
      \Score
      metronomeMarkFormatter = #format-metronome-markup-approx
    }
  }
  \header {
    piece = \Title
    meter = \Style
  }
  <<
    \Chords
    \Melody
    \Lyrics
  >>
}

\reste-paroles \Remain

\pageBreak
