oddHeaderMarkup = \markup
\teeny \fill-line {
  ""
  \on-the-fly #not-part-first-page \fromproperty #'header:instrument
  \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
}

%% evenHeaderMarkup would inherit the value of
%% oddHeaderMarkup if it were not defined here
evenHeaderMarkup = \markup
\teeny \fill-line {
  \on-the-fly #print-page-number-check-first \fromproperty #'page:page-number-string
  \on-the-fly #not-part-first-page \fromproperty #'header:instrument
  ""
}
