%{
    Comments
%}

\version "2.16.0"
\include "english.ly"

#(set-default-paper-size "letter" )
#(set-global-staff-size 28)

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

piu = \markup { \italic "piu mosso" }
rit = \markup { \italic rit. }
mpmf = \markup { \italic mp-mf  }

prefix = {
  \time 4/4
  \key g \minor
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
  \override Staff.TimeSignature #'style = #'()
}

notation = {
    \prefix
}


rightchord = \chordmode {
    s4 g:min s g:min |
    s4 d:7   s d:7  |
    s4 g:min s g:min |
    s4 g:min s d:7  |

    s4 g:min s g:min |
    s4 d:7   s d:7  |
    s4 g:min s d:7 |
    s4 g:min s g:min |
    \bar "|."
}

rightrhythm = {
    \improvisationOn
    r4 g8 g8 r4 g4 |
    r4 d8 d8 r4 d4 |
    r4 g8 g8 r4 g4 |
    r4 g4 r4 d4 |

    r4 g8 g8 r4 g4 |
    r4 d8 d8 r4 d4 |
    r4 g4 r4 d4 |
    r4 g8 g8 r4 g4 |
}


leftline = \relative c {
    \prefix
    \clef bass
    \mark \markup "A"
    g4 r r r |
    d' r r r |
    g, r r r |
    g r d' r |

    g,4 r r r |
    d' r r r |
    g, r d' r |
    g, r r r |
    \bar "|."
}

\header {
    title = "Winter"
    composer = "John Krumm"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  <<
  \new ChordNames \rightchord
  \new Voice \with {
      \consists "Pitch_squash_engraver"
  } {
      \rightrhythm
  }
  \new Voice = "bass" {
      \leftline
  }
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner
          #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
}
\markup {
    \column {
    \line { ABC - all }
    \line { ABC - parts }
    \line { Repeat until tired }
    }
}
