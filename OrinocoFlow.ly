\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { sub \dynamic mp }

\parallelMusic  #'(clarA clarB clarC clarBass) {

    R1 |
    r4    g8 r8 r4    r8 g8 |
    r4    c8 r8 r4    r8 c8 |
    c8 c8 e8 r8 r8 c8 c8 e8 |

    R1 |
    r4      f8  r8 r8 f8 r4 |
    r4      bf8 r8 r8 a8 r4 |
    bf8 bf8 d8  f,8 f8 c'8 r8 g8 |

    R1 |
    r4    g8 r8 r4    r8 g8 |
    r4    c8 r8 r4    r8 c8 |
    c8 c8 e8 r8 r8 c8 c8 e8 |

    r2             r4    c8-. c8-. \bar "||" |
    r4      f8  r8 r8 c8 r4     \bar "||" |
    r4      bf8 r8 r8 g8 r4     \bar "||" |
    bf8 bf8 d8  f,8 f8 c'8 r8 g8  \bar "||" |

% Bar 5 first theme.

    \mark \default
    c8( e) c-. c-. c( e) c-. c-. |
    \mark \default
    r4    g'8 r8 r4    r8 g8 |
    \mark \default
    r4    c8 r8 r4    r8 c8 |
    \mark \default
    c8 c8 e8 r8 r8 c8 c8 e8 |

    d8( f) f-. f-. f-. r g,_\simile g |
    r4      f8  r8 r8 f8 r4 |
    r4      bf8 r8 r8 a8 r4 |
    bf8 bf8 d8  f,8 f8 c'8 r8 g8 |

    g8( c) g g g( c) c c |
    r4    g8 r8 r4    r8 g8 |
    r4    c8 r8 r4    r8 c8 |
    c8 c8 e8 r8 r8 c8 c8 e8 |

    d8( f) f-. f-. f-. r g, g |
    r4      f8  r8 r8 c8 r4 |
    r4      bf8 r8 r8 g8 r4 |
    bf8 bf8 d8  f,8 f8 c'8 r8 g8 |

% Repeat it.

    g8( c) g-. g-. g( c) c-. c-. |
    r4    g'8 r8 r4    r8 g8 |
    r4    c8 r8 r4    r8 c8 |
    c8 c8 e8 r8 r8 c8 c8 e8 |

    d8( f) f-. f-. f-. r g, g |
    r4      f8  r8 r8 f8 r4 |
    r4      bf8 r8 r8 a8 r4 |
    bf8 bf8 d8  f,8 f8 c'8 r8 g8 |

    g8( c) g g g( c) c c |
    r4    g8 r8 r4    r8 g8 |
    r4    c8 r8 r4    r8 c8 |
    c8 c8 e8 r8 r8 c8 c8 e8 |

    d8( f) f-. f-. f-. r r4       \bar "||" |
    r4      f8  r8 r8 c8 r4       \bar "||"|
    r4      bf8 r8 r8 g8 r4       \bar "||"|
    bf8 bf8 d8  f,8 f8 c'8 r8 g8  \bar "||"|
 
% Bar 13, second theme, in minor.

    \mark \default 
    c8 g8 g'4 c,8 g'8~g4 |
    \mark \default 
    r16 ef g c g' ef c g r8 c16 d c8-. g8-. |
    \mark \default r
    8 c8-. ef4-^  c8-. ef4-^ c8-.|
    \mark \default 
    c4      ef4    c8 ef8~ef4 |

    bf,8  f8 d'4 f8 a8~a4 |
    r16 f bf d f d bf f r8 c8-^ r8 f8 |
    r8  bf8-. d4-^  a8-. c4-^ a8-. |
    bf4      d4    f,8 a8~a4 |

    c,8 g8 g'4 c,8 g'8~g4 |
    r16 ef g c g' ef c g r8 c16 d c8-. g8-. |
    r8 c8-. ef4-^  c8-. ef4-^ c8-. |
    c4      ef4    c8 ef8~ef4 |

    bf,8  f8 d'4 f,8 a8~a4 |
    r16 f bf d f d bf f r8 c8-^ r8 f8 |
    r8  bf8-. d4-^  a8-. c4-^ a8-.|
    bf4      d4    f,8 a8~a4 |

% Bar 17 second theme, second time

    c8 g8 g'4 c,8 g'8~g4 |
    r16 ef g c g' ef c g r8 c16 d c8-. g8-. |
    r8 c8-. ef4-^  c8-. ef4-^ c8-. |
    c4      ef4    c8 ef8~ef4 |

    bf,8  f8 d'4 f8 a8~a4 |
    r16 f bf d f d bf f r8 c8-^ r8 f8 |
    r8  bf8-. d4-^  a8-. c4-^ a8-. |
    bf4      d4    f,8 a8~a4 |

    c,8 g8 g'4 c,8 g'8~g4 |
    r16 ef g c g' ef c g r8 c16 d c8-. g8-. |
    r8 c8-. ef4-^  c8-. ef4-^ c8-. |
    c4      ef4    c8 ef8~ef4 |

    bf,8  f8 d'4 f,8 a8~a4 |
    r16 f bf d f d bf f r8 c8-^ r8 f8 |
    r8  bf8-. d4-^  a8-. c4-^ a8-. |
    bf4      d4    f,8 a8~a4 |

% Bridge

    g1~\p\< |
    r8 g8 b4-> g8 b4-> g8 |
    r8 d8 g4-> d8 g4-> d8 |
    g8 g8 b4-> g8 b4-> g8 |
   

    g2.\!\mf r4  \bar "||" |
    b8 g g g g r r4  \bar "||" |
    g8 g, g g g r r g,-^\f  \bar "||" |
    b8 r8 g8 g8 g8 r8 r8 g8-^\f  \bar "||" |

% Bar 23 Chorus 

    \mark \default
    r2 r4 c'8 g |
    \mark \default
    r8 e8 g r e g r r   |
    \mark \default
    c4-> r8 c8~c8 r8 r4 |
    \mark \default
    c4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r a f |
    r8 d f r c f r r   |
    bf4-> r8 f8~f8 r8 r4 |
    bf4-> r8 f8~f8 r8 r4 |

    g8 r8 r4 r4 c8 g |
    r8 e8 g r e g r r   |
    c'4-> r8 c8~c8 r8 r4 |
    c'4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r a f |
    r8 d f r c f r r   |
    bf4-> r8 f8~f8 r8 r4 |
    bf4-> r8 f8~f8 r8 r4 |

% Bar 27 repeat it

    g8 r8 r4 r4 c8 g |
    r8 e8 g r e g r r   |
    c'4-> r8 c8~c8 r8 r4 |
    c'4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r a f |
    r8 d f r c f r r   |
    bf4-> r8 f8~f8 r8 r4 |
    bf4-> r8 f8~f8 r8 r4 |

    g8 r8 r4 r4 c8 g |
    r8 e8 g r e g r r   |
    c'4-> r8 c8~c8 r8 r4 |
    c'4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r c, c \bar "||" |
    r8 d f r c f r r      \bar "||" |
    bf4-> r8 f8~f8 r8 r4  \bar "||" |
    bf4-> r8 f8~f8 r8 r4  \bar "||" |

% Bar 31 back first theme.

    \mark \default
    c8( e) c-. c-. c( e) c-. c-. |
    \mark \default
    r4    g8 r8 r4    r8 g8 |
    \mark \default
    r4    c'8 r8 r4    r8 c8 |
    \mark \default
    c'8 c8 e8 r8 r8 c8 c8 e8 |

    d8( f) f-. f-. f-. r g,_\simile g |
    r4      f8  r8 r8 f8 r4 |
    r4      bf8 r8 r8 a8 r4 |
    bf8 bf8 d8  f,8 f8 c'8 r8 g8 |

    g8( c) g g g( c) c c |
    r4    g8 r8 r4    r8 g8 |
    r4    c8 r8 r4    r8 c8 |
    c8 c8 e8 r8 r8 c8 c8 e8 |

    d8( f) f-. f-. f-. r g, g |
    r4      f8  r8 r8 c8 r4 |
    r4      bf8 r8 r8 g8 r4 |
    bf8 bf8 d8  f,8 f8 c'8 r8 g8 |

% Repeat it.

    g8( c) g-. g-. g( c) c-. c-. |
    r4    g'8 r8 r4    r8 g8 |
    r4    c8 r8 r4    r8 c8 |
    c8 c8 e8 r8 r8 c8 c8 e8 |

    d8( f) f-. f-. f-. r g, g |
    r4      f8  r8 r8 f8 r4 |
    r4      bf8 r8 r8 a8 r4 |
    bf8 bf8 d8  f,8 f8 c'8 r8 g8 |

    g8( c) g g g( c) c c |
    r4    g8 r8 r4    r8 g8 |
    r4    c8 r8 r4    r8 c8 |
    c8 c8 e8 r8 r8 c8 c8 e8 |

    d8( f) f-. f-. f-. r r4       \bar "||" |
    r4      f8  r8 r8 c8 r4       \bar "||"|
    r4      bf8 r8 r8 g8 r4       \bar "||"|
    bf8 bf8 d8  f,8 f8 c'8 r8 g8  \bar "||"|
 
% Bar 39, second theme, in minor.

    \mark \default 
    c8 g8 g'4 c,8 g'8~g4 |
    \mark \default 
    r16 ef g c g' ef c g r8 c16 d c8-. g8-. |
    \mark \default r
    8 c8-. ef4-^  c8-. ef4-^ c8-.|
    \mark \default 
    c4      ef4    c8 ef8~ef4 |

    bf,8  f8 d'4 f8 a8~a4 |
    r16 f bf d f d bf f r8 c8-^ r8 f8 |
    r8  bf8-. d4-^  a8-. c4-^ a8-. |
    bf4      d4    f,8 a8~a4 |

    c,8 g8 g'4 c,8 g'8~g4 |
    r16 ef g c g' ef c g r8 c16 d c8-. g8-. |
    r8 c8-. ef4-^  c8-. ef4-^ c8-. |
    c4      ef4    c8 ef8~ef4 |

    bf,8  f8 d'4 f,8 a8~a4 |
    r16 f bf d f d bf f r8 c8-^ r8 f8 |
    r8  bf8-. d4-^  a8-. c4-^ a8-.|
    bf4      d4    f,8 a8~a4 |

% Bar 43 second theme, second time

    c8 g8 g'4 c,8 g'8~g4 |
    r16 ef g c g' ef c g r8 c16 d c8-. g8-. |
    r8 c8-. ef4-^  c8-. ef4-^ c8-. |
    c4      ef4    c8 ef8~ef4 |

    bf,8  f8 d'4 f8 a8~a4 |
    r16 f bf d f d bf f r8 c8-^ r8 f8 |
    r8  bf8-. d4-^  a8-. c4-^ a8-. |
    bf4      d4    f,8 a8~a4 |

    c,8 g8 g'4 c,8 g'8~g4 |
    r16 ef g c g' ef c g r8 c16 d c8-. g8-. |
    r8 c8-. ef4-^  c8-. ef4-^ c8-. |
    c4      ef4    c8 ef8~ef4 |

    bf,8  f8 d'4 f,8 a8~a4 |
    r16 f bf d f d bf f r8 c8-^ r8 f8 |
    r8  bf8-. d4-^  a8-. c4-^ a8-. |
    bf4      d4    f,8 a8~a4 |

% Bridge

    g1~\p\< |
    r8 g8 b4-> g8 b4-> g8 |
    r8 d8 g4-> d8 g4-> d8 |
    g8 g8 b4-> g8 b4-> g8 |

    g2.\!\mf r4  \bar "||" |
    b8 g g g g r r4  \bar "||" |
    g8 g, g g g r r g-^\f  \bar "||" |
    b8 r8 g8 g8 g8 r8 r8 g8-^\f  \bar "||" |

% Bar 49 quiet bridge.

    \mark \default
    g1\p               |
    \mark \default
    e'8(\p g) g r e( g) g r |
    \mark \default
    e'1\p               |
    \mark \default
    c1\p               |

    g1 |
    d8( g) g r g r g r |
    d1 |
    b1 |

    e1 |
    R1 |
    c1 |
    a1 |

    d1 |
    R1 |
    b1 |
    g1 |

    g1               |
    e8( g) g r e( g) g r |
    e1               |
    c1               |

    g1 |
    d8( g) g r g r g r |
    d1 |
    b1 |

    f1 |
    R1 |
    c1 |
    a1 |

    fs1\< |
    R1 |
    d1\< |
    a1\< |
    
    R1\! \bar "||" |
    R1\! \bar "||" |
    R1\! \bar "||" |
    r2\! r4 r8 g-^\f \bar "||" |

% Bar 58 chorus

    \mark \default
    r2 r4 c''8\f g |
    \mark \default
    r8 e,8\f g r e g r r   |
    \mark \default
    c4->\f r8 c8~c8 r8 r4 |
    \mark \default
    c4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r a f |
    r8 d f r c f r r   |
    bf4-> r8 f8~f8 r8 r4 |
    bf4-> r8 f8~f8 r8 r4 |

    g8 r8 r4 r4 c8 g |
    r8 e8 g r e g r r   |
    c'4-> r8 c8~c8 r8 r4 |
    c'4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r a f |
    r8 d f r c f r r   |
    bf4-> r8 f8~f8 r8 r4 |
    bf4-> r8 f8~f8 r8 r4 |

% Bar 62 repeat it

    g8 r8 r4 r4 c8 g |
    r8 e8 g r e g r r   |
    c'4-> r8 c8~c8 r8 r4 |
    c'4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r a f |
    r8 d f r c f r r   |
    bf4-> r8 f8~f8 r8 r4 |
    bf4-> r8 f8~f8 r8 r4 |

    g8 r8 r4 r4 c8 g |
    r8 e8 g r e g r r   |
    c'4-> r8 c8~c8 r8 r4 |
    c'4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r a f \bar "||" |
    r8 d f r c f r r     \bar "||" |
    bf4-> r8 f8~f8 r8 r4 \bar "||" |
    bf4-> r8 f8~f8 r8 r4 \bar "||" |

% Bar 66 chorus plus first theme

    \mark \default
    g8 r8 r4 r4 c8\f g |
    \mark \default
    r8 e8\f g r e g r r   |
    \mark \default
    c''8(\f e) c c c( e) c c |
    \mark \default
    c'4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r a f |
    r8 d f r c f r r   |
    d8( f) f-. f-. f-. r g, g |
    bf4-> r8 f8~f8 r8 r4 |

    g8 r8 r4 r4 c8 g |
    r8 e8 g r e g r r   |
    g8( c) g g g( c) c c |
    c'4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r a f |
    r8 d f r c f r r   |
    d8( f) f-. f-. f-. r g, g |
    bf4-> r8 f8~f8 r8 r4 |

% Bar 70 repeat it

    g8 r8 r4 r4 c8 g |
    r8 e8 g r e g r r   |
    g8( c) g g g( c) c c |
    c'4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r a f |
    r8 d f r c f r r   |
    d8( f) f-. f-. f-. r g, g |
    bf4-> r8 f8~f8 r8 r4 |

    g8 r8 r4 r4 c8 g |
    r8 e8 g r e g r r   |
    g8( c) g g g( c) c c |
    c'4-> r8 c8~c8 r8 r4 |

    bf8 r bf8 f a8 r a f \bar "||" |
    r8 d f r c f r r     \bar "||" |
    d8( f) f-. f-. f-. r g, g \bar "||" |
    bf4-> r8 f8~f8 r8 r4 \bar "||" |


% Bar 74 close

    g8 r8 r4 r4 c8 g |
    r2 r4 g'8  g |
    c4-> r8 c8~c8 r8 r4 |
    c'4-> r8 c8~c8 r8 r4 |

    bf8 r bf f a r a f |
    f8  r f  f f r f f |
    d8  r d8  bf8 c r c c |
    bf4-> r8 f8~f8 r8 r4 |

    g8 r8 r4    r2 \bar "|." |
    c8 r8 r8 c,8 r2 \bar "|." |
    e8 r8 r4    r2 \bar "|." |
    c'8 r8 r8 c8 r2 \bar "|." |

}



\header {
  title = "Orinoco Flow"
  instrument = "for Clarinet Quartet"
  composer = "Enya"
  arranger = "Arr Roberts"
  tagline = ##f
}



prefix = {
  \time 4/4
  \tempo "New Age" 4=120
  \clef treble \key c \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \set Score.markFormatter = #format-mark-box-barnumbers
}


%
% Define the parts.
%

% Clarinet I

clarI = {
  \set Staff.instrumentName = #"Bb Clar I "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c'' \clarA
}

% Clarinet II

clarII = {
  \set Staff.instrumentName = #"Bb Clar II "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c'' \clarB
}

% Clarinet III

clarIII = {
  \set Staff.instrumentName = #"Bb Clar III "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c'' \clarC
}

% Bass Clarinet

bassClar = {
  \set Staff.instrumentName = #"Bass Clar "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c' \clarBass
}


%
% Put them all together.
%

parts = {
  <<
     \tag #'clr1  \new Staff  \transpose c  c  \clarI
     \tag #'clr2  \new Staff  \transpose c  c  \clarII
     \tag #'clr3  \new Staff  \transpose c  c  \clarIII
     \tag #'bass  \new Staff  \transpose c  c  \bassClar
  >>
}


%
% Define the things that print.
%

\score {
  % Do I need << >> around this line?
  \context StaffGroup = "quartet" \parts 
  \midi { 
    \context { 
      \Score tempoWholesPerMinute = #(ly:make-moment 160 8) 
    }
  }
  \layout { }
}

\bookpart { \score { \keepWithTag #'clr1 \parts } }
\bookpart { \score { \keepWithTag #'clr2 \parts } }
\bookpart { \score { \keepWithTag #'clr3 \parts } }
\bookpart { \score { \keepWithTag #'bass \parts } }

