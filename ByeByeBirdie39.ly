%{
    Comments
%}
\version "2.12.3"
\include "english.ly"

\paper {
    #(set-default-paper-size "letter" )
    ragged-last-bottom = ##t
}

\header {
    title = "39. Rosie Ending" 
}

upper = \relative c' {
    \clef treble \key df \major
    \time 4/4

    r8 <f df>8( <gf ef> <af f> 
    <bf gf> <c af> <df bf> <ef c> |
    <f df>) r8 r4 r4 r4 \bar "|."
}

lower = \relative c {
    \clef bass \key df \major
    \time 4/4

    r8 df8( c bf af gf f ef | 
    df) r8 r4 r4 <df df,>4-^ \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
}

