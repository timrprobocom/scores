%{
    Comments
%}

\version "2.16.0"
\include "english.ly"

#(set-default-paper-size "letter" )
#(set-global-staff-size 24)

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

piu = \markup { \italic "piu mosso" }
rit = \markup { \italic rit. }
mpmf = \markup { \italic mp-mf  }

prefix = {
  \time 4/4
  \key e \major
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
%%  \override Staff.TimeSignature #'style = #'()
}

music = {
    \prefix
    \set Score.currentBarNumber = #68
    \mark \default
    r2 r8 b'8 cs'' e'' |
    g''8 fs'' e'' cs'' g' fs' \times 2/3 { e' cs' e'~ } |
    e'4. \acciaccatura as'16 b'8-> r2 \bar "||"
}


\header {
    title = "Begin the Beguine"
    composer = "Cole Porter"
    tagline = ""
}


%
% Define the things that print.
%

\score {
    \new Staff \transpose c c   \music
}

