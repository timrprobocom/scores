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



prefix = {
  \time 4/4
  \tempo 4 = 96
  \set Score.markFormatter = #format-mark-circle-numbers
  \mark \markup { Stately }
%%  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
}

subMp = \markup { sub \dynamic mp }
ten = \markup { \italic ten }


%
% Define the parts.
%

dashPlus = "trill"

music = \relative c'' {
  \prefix
  \clef bass
  \key f \major

  % Line 1
  c4\f bf c a |
  a8. bf16 c8. d16 c2 |
  bf4 bf bf c8. bf16 |
  a2 r4 c4\mf |
  f,2-- r4 b4 | 
  c2-- r4 a |

  % Line 2
  bf g g c |
  c d c \breathe g\mp |
  f2\< f2 |
  r4 f8.-> e16 f4-> c' |
  c2 g4 bf4\! |
  c2.\!\mf \breathe f,4\p |
  \mark #12
  e2 r4 e4 |

  % Line 3
  c2 r4 a'4 |
  d,4 e d b |
  e2 r4 g4\mp |
  a2\< r4 a4 |
  b2 r4 c8. g16 |
  a8. f16 a8. d16 b4.-+ c8\! |

  % Line 4
  c2.\mf \breathe g4 |
  \mark #20
  bf2\< c2 |
  c2 c2\! |
  d2\mf\< e2 |
  c2 c2\! \breathe |
  d2\p d2 |
  c2. \breathe g4\mf |

  % Line 5
  c2\< bf2 |
  a2 g2 |
  a4 g g g\! |
  \mark 29
  a4\f \breathe c8.\mp d16 c4 bf4 |
  a4 f\f f e |
  f \breathe a8.\p c16 a4 g4 |

  % Line 6
  f4 d\mf d cs |
  d4 \breathe d'8.\pp ef16 d4 c4 |
  bf4 g\mp g fs |
  g4 \breathe c8.\p d16 c4 bf |
  a4 f\mf f e |
  f4 d'\< c b\! |

  % Line 7
  c4\f \breathe g\p a g |
  g4 \breathe g\mf a\< g |
  g2 g4. g8\! |
  g2\f r2 |
  \mark #42
  R1*3
  r2 r4 g4\mf |
  c2\< bf2 |
  a2 c2 |
  c4 d g, g\! |
  c4\f \breathe c8.\mf d16 c4 bf4 |
  a4 \breathe c\f c\< bf |
  a2^"rit." bf4 g4\! |
  f1\ff \bar "|."
}





\header {
    title = "TRUMPET VOLUNTARY"
    composer = "John Stanley"
    arranger = "Arranged by Joshua Hauser"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  \new Staff \transpose f bf,, \music 
  \midi { 
    \context { 
      \Score tempoWholesPerMinute = #(ly:make-moment 160 8) 
    }
  }
  \layout { }
}

