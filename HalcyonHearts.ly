%{
    Comments
%}
\version "2.16.0"
\include "english.ly"

#(set-default-paper-size "letter" )
% #(set-global-staff-size 24)

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}



prefix = {
  \time 3/4
  \tempo Fast 4 = 164
  \set Score.markFormatter = #format-mark-box-barnumbers
  \mark \markup { Euphonium }
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
  \override Staff.TimeSignature #'style = #'()
}

subMp = \markup { sub \dynamic mp }
subMf = \markup { sub \dynamic mf }
subF = \markup { sub \dynamic f }
ffvalor = \markup { \dynamic ff with valor }
ten = \markup { \italic ten }
moltorit = \markup { \italic { molto rit } }

%
% Define the parts.
%

% Change line 45 and line 315 to switch TC/BC.

music = \relative c' {
  \prefix
  \clef treble
%  \clef bass
  \key f \major

  % Bar 1
  a4->\f a4-> a4-> |
  a4->   a4-> a4-> \mark \default |
  % Bar 3
  a4-> r4 r4 |
  R2.*3 \mark \default |
  R2.*4 \mark \default |
  % Bar 11
  a2.\mp\< |
  g2. |
  a2.~\!\mf |
  a2.\> |

  a2.\mp\< |
  g2. |
  a2.~\!\mf |
  a2.\> |

  a2.\mp\< |
  g2. |
  a2.\!\mf\< |
  a2. |
  bf2.~\!\fp |
  bf2. |
  a2.~\< |
  a2. \mark \default

  % Bar 27
  f4-.->\f e-.-> c-.-> |
  f4-.->   e-.-> c-.-> |
  f4-.->\> e-.-> c-.-> |
  f4-.->   e-.-> c-.->  \mark \default |

  % Bar 31
  c'4-.->\!\mp c4-.-> c4-.-> |
  c4-.-> c4-.-> c4-.-> |
  a4-.-> a4-.-> a4-.-> |
  a4-.-> a4-.-> a4-.-> |
  c4-.-> c4-.-> c4-.-> |
  c4-.-> c4-.-> c4-.-> |
  bf4-.->\< bf4-.-> bf4-.-> |
  bf4-.->\!\mf\> a-.-> g-.-> |
  c4-.->\!\mp c4-.-> c4-.-> |
  c4-.-> c4-.-> c4-.-> |
  a4-.-> a4-.-> a4-.-> |
  a4-.-> a4-.-> a4-.-> |
  g4\<-.-> g4-.-> g4-.-> |
  g4-.-> g4-.-> g4-.-> |
  f4-.-> f4-.-> f4-.-> |
  f4-.-> f4-.-> f4-.->  \mark \default |

  % Bar 47
  f4-.->\!\f r4 r4 |
  R2.*6 |
  r4 c4\mf( f  \mark \default |

  % Bar 55
  bf2. |
  a2) f4( |
  c2.~ |
  c4) c( f |
  bf2. |
  a2) bf4 |
  c2.~ |
  c4 c,4( f  \mark \default |

  % Bar 63
  g2. |
  a4) c,4( f |
  g2. |
  a2) f4 |
  bf2.~\< |
  bf2. |
  c2.~ |
  c2. \mark \default |

  % Bar 71
  c4-.->\!\mf c4-.-> c4-.-> |
  c4-.-> c4-.-> c4-.-> |
  a4-.-> a4-.-> a4-.-> |
  a4-.-> a4-.-> a4-.-> |
  c4-.-> c4-.-> c4-.-> |
  c4-.-> c4-.-> c4-.-> |
  bf4-.-> bf4-.-> bf4-.-> |
  bf4-.-> a-.-> g-.-> |
  c4-.-> c4-.-> c4-.-> |
  c4-.-> c4-.-> c4-.-> |
  a4-.-> a4-.-> a4-.-> |
  a4-.-> a4-.-> a4-.-> |
  g4\<-.-> g4-.-> g4-.-> |
  g4-.-> g4-.-> g4-.-> |
  f4-.-> f4-.-> f4-.-> |
  f4-.-> f4-.-> f4-.->  \mark \default |

  % Bar 87
  R2.\! |
  a2.~\p |
  \override TextSpanner.bound-details.left.text = \markup { \small \bold rit. }
  a2.^ \startTextSpan |
  a2. \stopTextSpan \mark \default |

  % Bar 91
  \tempo "Slower" 4 = 164
  R2. |
  a2. |
  a2. |
  g2. |
  a2.~ |
  a2. |
  a2 r4 |
  g2. |
  c2.~ |
  c2.~ |
  c2.~ |
  c2. |
  d2.~( |
  d2. |
  df2.~ |
  df2.) \mark \default

  % Bar 107
  \tempo "Warm and Peaceful"
  R2. |
  a2. |
  a2. |
  g2. |
  a2.~ |
  a2. |
  a2 r4 |
  g2. |
  c2.~ |
  c2.~ |
  c2.~ |
  c2. |
  d2.~( |
  d2.\< |
  df2.~ |
  df2.) \mark \default

  % Bar 123
  \tempo "Majestic"
  R2.\! |
  a2.->\f |
  a2. |
  g4 g g |
  a2.~ |
  a2.\< |
  a2. |
  g2. |
  f2.\!\ff |
  bf,2.->( |
  a'2.~-> |
%  a2.) ^rit |
  \override TextSpanner.bound-details.left.text = \markup { \small \bold rit. }
  a2.)  \startTextSpan
  d2.~ |
  d2.\< |
  e2. |
  e2. \stopTextSpan |
  R2.\! \mark \default |

  % Bar 140
  \tempo Fast 4 = 164
  e,2.~\p\> |
  e2.~ |
  e2.~ |
  e2. |
  e2.~\!\pp |
  e2.~ |
  e2.~ |
  e2.  \mark \default |

  % Bar 148
  R2.*7 |
  r4 c4\mf( f4  \mark \default |

  % Bar 156
  bf2. |
  a2) f4( |
  c2.~ |
  c4) c4( f4 |
  bf2. |
  a2) bf4 |
  c2.~ |
  c4 c,4( f \mark \default |

  % Bar 164
  g2. |
  a4) c,4( f |
  g2. |
  a2) f4 |
  bf2.~\< |
  bf2. |
  c2.~ |
  c2. \mark \default |

  % Bar 172
  f,2.->\!\f( |
  g4 a4. f8 |
  e2. |
  c2.) |
  r2 f4( |
  g4 a4. bf8 |
  c4 bf4 a4 |
  g4 a g) |
  f2.( |
  g4 a4. f8 |
  e2. |
  c2.) |
  d4( c a |
  a2) c4( |
  d4 c a |
  a2) g4( |
  d'4\< c a |
  a2) c4( |
  d4 c a |
  a2.)\! \mark \default |

  % Bar 192
  \tempo "Con Brio"
  R2. |
  c2.~->_\ffvalor |
  c2. |
  f4-> g4-> a4-> |
  bf2.->~ |
  bf2. |
  bf2. |
  bf4-> f-> df-> |
  c2.~-> |
  c2.~ |
  c2. |
  f4-> g4-> a4-> |
  bf2.->~\< |
  bf2. |
  bf2. |
  bf4-> f-> df->\!  \mark \default |

  % Bar 208
  R2._\moltorit |
  df'4->--_\subF c->-- bf->-- |
  df4->--\< c->-- bf->-- |
  bf4->-- c->-- df->--\!  \mark \default |

  % Bar 212
  c2.~->\ff |
  c2. |
  c2.\< |
  R2.\! |
  R2. |
  R2.\fermata 
  \bar "|."
}


\header {
    title = "Halcyon Days"
    composer = "Katahl Coplay"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  \new Staff \transpose f g'  \music 
%  \new Staff \transpose f f  \music 
  \layout { 
    \context {
      \Score
      \override SpacingSpanner
          #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
  \midi {}
}

