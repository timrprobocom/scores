\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { sub \dynamic mp }
rall = \markup { \italic rall. }
solo = \markup \italic { solo ad lib }


common = {
  \time 4/4
  \tempo "Rhythmic" 4=118
  \clef treble \key f \major
  % \override Score.BarNumber #'break-visibility = #all-visible
  % \override Score.BarNumber #'self-alignment-X = #0
  % \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #1
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*16 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*9 \bar "|."
}

\parallelMusic #'(soprano alto tenor) {

    r4 r8 c8 f g16 a~a c,8 ef16~ |
    r4 r8 c8 f g16 a~a c,8 ef16~ |
    r4 r8 c8 f, g16 a~a a8 g16~ |

    ef2 r4 r16 c8 d16 |
    ef2 r4 r16 c8 d16 |
    g2 r2 |

    ef4 d8.( c16) c4 r4 |
    ef4 d8.( c16) c4 r4 |
    r2 r4 r8 bf8 |

    R1 |
    R1 |
    df4 c4 bf4 c8. a16~ |

    % Page 3

    r4 r8 c16 c f8 g16 a~a c,8 ef16~ |
    r4 r8 c16 c f8 g16 a~a c,8 ef16~ |
    a4 r8 c16 c f,8 g16 a~a a8 g16~ |

    ef2 r4 r8 c16 d16 |
    ef2 r4 r8 c16 d16 |
    g2 r2 |
    
    ef4 d c r8 bf8 |
    ef4 d c r8 bf8 |
    r2 r4 r8 bf8 |

    df4 ef4 f4 g8. a16 |
    df4 ef4 d4 d8. f16 |
    bf4 c bf bf8. a16 |

    % Bar 12

    r8 a16 a a8 a16 a16~a16 g8 f16~f8 d16( c16) |
    r8 a16 a a8 a16 a16~a16 g8 f16~f8 d16( c16) |
    r8 a16 a a8 a16 a16~a16 g8 a16~a8 a8 |

    r8 a'16 a a8 a16 a16~a16 g8 f16~f8 d16( c16) |
    r8 a'16 a a8 a16 a16~a16 g8 f16~f8 d16( c16) |
    r8 a16 a a8 a16 a16~a16 g8 a16~a8 a8 |

    % Page 4

    r8. c16  f8 f8 f8 e16 e r8 d8 |
    r8. c16  f8 f8 f8 e16 e r8 d8 |
    r8. a16 bf8 bf8 bf8 c16 c r8 bf8 |

    d8 c16 c16~c8 a8 f'8.-> e16~->e8 d8-> |
    d8 c16 c16~c8 a8 d8.-> c16~->c8 a8-> |
    bf8 c16 c16~c8 a8 a8.-> g16~->g8 f-> |

    r8 a'16 a a8 a16 a16 a16 g8 f16~f8 d16( c16) |
    r8 a'16 a a8 a16 a16 a16 g8 f16~f8 d16( c16) |
    r8 a16 a a8 a16 a16 a16 g8 a16~a8 a8 |

    r8 a'16 a a8 a16 bf16~bf8 a16 g16~g16( f8.) |
    r8 a'16 a a8 a16 bf16~bf8 a16 g16~g16( f8.) |
    r8 a16 a a8 a16 bf16~bf8 c16 bf16~bf16 a8. |

    r16 af8 f16  af8 r16 f16  af8 f16 af16 r8. f16 |
    r16 af8 f16  af8 r16 f16  af8 f16 af16 r8. f16 |
    r16 af8 f16  af8 r16 f16  af8 f16 af16 r8. f16 |

    af16 af8 af16~af16 f16 f8  r8 f g g(|
    af16 af8 af16~af16 f16 f8  r8 f g g(|
    af16 af8 af16~af16 f16 f8  r2 |

    % Page 5.

    a4) r4 r8 f8 a a( |
    a4) r4 r8 f8 a a( |
    f8 f g g( a) r r4 |

    bf4) r4 r8 f g g( |
    bf4) r4 r8 f g g( |
    r8 g a a( bf) a bf bf( |

    a8) a4 a8 r8 f8 c a'~ |
    f8) f4 f8 r8 c8 c f~ |
    c8) c4 c8 r8  a a c~ |

    a8 a4 a8 r8 f g g( |
    f8 f4 f8 r8 f g g( |
    c8 c4 c8 r2 |

    a4) r4 r8 g a a( |
    a4) r4 r8 g a a( |
    r8 f, g g( a) r8 r4 |

    bf4) r r8 f g g( |
    bf4) r r8 f g g( |
    r8 g a a( bf) a bf bf( |

    a8) a4 a8 r8 f c a'~-> |
    f8) f4 f8 r8 c c df~-> |
    c8) c4 c8 r8 a a bf~-> |

    a8 a4-> a16->( g16~g4) r16 f g a~ |
    df8 df4-> df8~df4      r16 df df f~ |
    bf8 bf4-> bf8~->bf4    r16 bf bf c~ |

    % Page 6 bar 28

   a8 a a a  a a16 a16 r g a bf~ |
   f8 a a a  a a16 a16 r g a bf~ |
   c8 a a a  a a16 a16 r g a bf~ |

   bf8 bf bf bf bf bf16 bf16 r g a bf~ |
   bf8 bf bf bf bf bf16 bf16 r g a bf~ |
   bf8 bf bf bf bf bf16 bf16 r g a bf~ |

   bf8 bf bf bf af( g) f8. f16~ |
   bf8 bf bf bf af( g) f8. f16~ |
   bf8 bf bf bf af( g) f8. f16~ |

   f16 d8. r4 r4 r16 f g a~ |
   f16 d8. r4 r4 r16 f g a~ |
   f16 f8. r4 r4 r16 f g a~ |

   a8 a a a  a a16 a16 r g a bf~ |
   a8 a a a  a a16 a16 r g a bf~ |
   a8 a a a  a a16 a16 r g a bf~ |

   bf8 bf bf bf bf bf16 bf16 r g a bf~ |
   bf8 bf bf bf bf bf16 bf16 r g a bf~ |
   bf8 bf bf bf bf bf16 bf16 r g a bf~ |

   % Page 7
   
   bf8 bf bf c  af( g) f8. g16~ |
   bf8 bf bf c  af( g) f8. g16~ |
   bf8 bf bf c  af( g) f8. g16~ |

   g16 d8. r4 r8 f c'16 a c g |
   g16 d8. r4 r8 f c'16 a c g |
   g16 f8. r4 r8 f c'16 a c g |

   a4 r4 r2 |
   a4 r4 r2 |
   a4 r4 r2 |

   R1 |
   R1 |
   R1 |

   % Bar 38

    r4 r8 c,8 f g16 a~a c,8 ef16~ |
    r4 r8 c,8 f g16 a~a c,8 ef16~ |
    r4 r8 c8 f, g16 a~a a8 g16~ |

    ef4 r4 r4 r16 c8 d16 |
    ef4 r4 r4 r16 c8 d16 |
    g4 r4 r2 |

    ef4 d8.( c16) c4 r4 |
    ef4 d8.( c16) c4 r4 |
    r2 r4 r16 bf8 c16 |

    R1 |
    R1 |
    df4 c8. bf16 bf4 c8. a16 |

    % Page 8

    r4 r8 c16 c f8 g16 a~a c,8 ef16~ |
    r4 r8 c16 c f8 g16 a~a c,8 ef16~ |
    r4 r8 c16 c f,8 g16 a~a a8 g16~ |

    ef4 r4 r4 r16 c8 d16 |
    ef4 r4 r4 r16 c8 d16 |
    g4 r4 r2 |
    
    ef4 d8. c16 c4 r8 bf8 |
    ef4 d8. c16 c4 r8 bf8 |
    r2 r4 r8 bf8 |

    df4 ef4 f8. bf16~bf8 a8 |
    df4 ef4 d8. d16~d8 f8 |
    bf4 c bf8. bf16~bf8 a8 |

    % Bar 46

    r8 g16 a a a8 a16~a16 f8 f16~f8 d16( c16) |
    r8 g16 a a a8 a16~a16 f8 f16~f8 d16( c16) |
    R1 |

    R1 |
    R1 |
    r8 g16 a a8 bf16 a16~a16 g8 f16~f8 f16( g16) |

    r8. d16  f8 f8 f16 e16 r e~e8 d8 |
    r8. d16  f8 f8 f16 e16 r e~e8 d8 |
    r8. bf16 bf8 bf8 bf16 bf16 r bf~bf8 bf8 |

    % Page 9

    d16 f8.  g16 a8.  d4  c16( a) c( a) |
    d16 f8.  g16 a8.  d4  c16( a) c( a) |
    bf16 bf8.  bf16 c8.  d4 c16( a) c( a) |

    r16 a a a   a8 a16 a16~a g8 f16~f8 d16( c) |
    r16 a f f   f8 f16 f16~f d8 c16~c8 d16( c) |
    r16 a c c   c8 c16 c~c bf8 a16~a8 g16( f) |

    r8 a'16 a   a8 a16 bf~bf a8 g16~g f8. |
    r8 f16 f   f8 f16 g~g   f8 d16~d c8. |
    r8 c'16 c   c8 c16 d~d  c8 bf16~bf a8. |

    r16 af8 f16  af8 r16 f  af8 f16 af16 r8. f16 |
    r16 af'8 f16  af8 r16 f  af8 f16 af16 r8. f16 |
    r16 af8 f16  af8 r16 f  af8 f16 af16 r8. f16 |

    af16 bf8 af16~af f f8 r8 f g g |
    af16 bf8 af16~af f f8 r8 f g g |
    af16 bf8 af16~af f f8 r8 f g g |

    % Bar 54

    a2 r8 g a a |
    a2 r8 g a a |
    a2 r8 g a a |

    % Page 10

    bf2 r8 f g g |
    bf2 r8 f g g |
    bf2 r8 f g g |

    a8 a4 a8 r f c a'~ |
    a8 a4 a8 r f c a'~ |
    a8 a4 a8 r f f a~ |

    a8 a4 a8 r8 a bf bf |
    a8 a4 a8 r8 f g  g  |
    a8 a4 a8 r8 f f  g  |

    c2 r8 bf c c( |
    a2 r8 g  a a( |
    a2 r8 g  a a( |

    d2) r8 a bf bf( |
    bf2) r8 f g g( |
    bf2) r8 f g g( |

    c8) c4 c8 r a f a~ |
    a8) a4 a8 r f c df~ |
    a8) a4 a8 r c a bf~ |

    a8 a4-> a16->g~ g4 r16 f g a~ |
    df8 df4-> df8~df4  r16 df df f~ |
    bf8 bf4-> bf8~bf4  r16 bf bf c~ |

    % Bar 62

    a8 a a a   a a16 a r g a bf~ |
    f8 a a a   a a16 a r g a bf~ |
    c8 a a a   a a16 a r g a bf~ |

    % Page 11

    bf8 bf bf bf bf bf16 bf16 r g a bf~ |
    bf8 bf bf bf bf bf16 bf16 r g a bf~ |
    bf8 bf bf bf bf bf16 bf16 r g a bf~ |

    bf8 bf bf c af( g) f8. f16~ |
    bf8 bf bf c af( g) f8. f16~ |
    bf8 bf bf c af( g) f8. f16~ |

    f16 d8. r4 r4 r16 a' bf c~ |
    f16 d8. r4 r4 r16 f g a~ |
    f16 f8. r4 r4 r16 f g a~ |

    c8 c c c  c c16 c16 r bf c d~ |
    a8 a a a  a a16 a16 r g a bf~ |
    a8 a a a  a a16 a16 r g a bf~ |

    d8  d  d  d  d d16  d16  r c d ef~ |
    bf8 bf bf bf bf bf16 bf16 r c bf g~ |
    bf8 bf bf bf bf bf16 bf16 r c bf bf~ |

    ef8 ef ef ef   df c bf8. bf16~ |
    g8  g  g  g    f ef d8.  d16~ |
    bf8 bf bf c    df( c) bf8. bf16~ |

    % Page 12
    
    bf16 g8. r4   r8 f8 c'16 a c( g |
    d16  d8. r4   r8 f8 c'16 a c( g |
    bf16 bf8. r4  r8 f8 c'16 a c( g |

    a4) r4 r2 |
    a4) r4 r2 |
    a4) r4 r2 |

    % Bar 71

    r4 c8-> c8~c4 f,8-> f~ |
    r4 c8-> c8~c4 f,8-> f~ |
    r4 c8-> c8~c4 f,8-> f~ |

    f8 r8 c'->c~c4 f,8-> f~ |
    f8 r8 c'->c~c4 f,8-> f~ |
    f8 r8 c'->c~c4 f,8-> f~ |

    f4 r8. f16 d'8-> c16 c16~c16 a8 d16~ |
    f4 r8. f16 d'8-> c16 c16~c16 a8 d16~ |
    f4 r8. f16 d'8-> c16 c16~c16 a8 d16~ |

    d16 c8. a8 g8 f16 g8.~g4 |
    d16 c8. a8 g8 f16 g8.~g4 |
    d16 c8. a8 g8 f16 g8.~g4 |

    r4 c8-> c8~c4 f,8-> f~ |
    r4 a8-> a8~a4 f 8-> f~ |
    r4 c8-> c8~c4 f,8-> f~ |

    f8 r8 c'->c~c4 f,8-> f~ |
    f8 r8 c'->c~c4 f,8-> f~ |
    f8 r8 c'->c~c4 f,8-> f~ |

    % Page 13

    f4 r8. c16 a' a bf4 a8 |
    f4 r8. c16 a' a bf4 a8 |
    f4 r8. c'16 a a bf4 a8 |

    g8 f8 g16 a g f~f8 f f r |
    g8 f8 g16 a g f~f8 f f r |
    g8 f8 g16 a g f~f8 f f r |

    c'1~ |
    ef1 |
    c'2 r4 c8( d) |

    c1~ |
    f2 r4 g8 f |
    d1~ |

    c2 r4 r16 f, g a~ |
    f2 r4 r16 f  g f~ |
    d2 r4 r16 a bf c~ |

    % Bar 82
    
    a8 a a a   a a16 a r g a bf~ |
    f8 f f f   f f16 f r d f ef~ |
    c8 c c c   c c16 c r bf c g~ |

    bf8 bf bf bf bf bf16 bf r c d ef~ |
    ef8 ef ef ef ef ef16 ef r ef f g~ |
    g8  g  g  g  g  g16  f  r g a bf~ |

    % Page 14

    ef8 ef ef ef   df c bf8. bf16~ |
    g8  g  g  g    f ef d8. d16~ |
    bf8 bf bf c   df( c) bf8. bf16~ |

    bf16 g8. r4 r4 r16 f g a~ |
    d16 d8.  r4 r4 r16 f g f~ |
    bf16 bf8. r4 r4 r16 a bf c~ |

    a8 a a a   a a16 a r g a bf~ |
    f8 f f f   f f16 f r d f ef~ |
    c8 c c c   c c16 c r bf c g~ |

    bf8 bf bf bf bf bf16 bf r c d ef~ |
    ef8 ef ef ef ef ef16 ef r ef f g~ |
    g8  g  g  g  g  g16  f  r g a bf~ |

    ef8 ef ef ef   df c bf8. bf16~ |
    g8  g  g  g    f ef d8. d16~ |
    bf8 bf bf c   df( c) bf8. bf16~ |

    bf16 g8. r4 r4 r16 f g a~ |
    d16 d8.  r4 r4 r16 f g f~ |
    bf16 bf8. r4 r4 r16 a bf c~ |

    % Page 15

    a8 a a a   a a16 a r g a bf~ |
    f8 f f f   f f16 f r d f ef~ |
    c8 c c c   c c16 c r bf c g~ |

    bf8 bf bf bf bf bf16 bf r c d ef~ |
    ef8 ef ef ef ef ef16 ef r ef f g~ |
    g8  g  g  g  g  g16  f  r g a bf~ |

    ef8 ef ef ef   df c bf8. bf16~ |
    g8  g  g  g    f ef d8. d16~ |
    bf8 bf bf c   df( c) bf8. bf16~ |

    bf16 g8. r4 r4 r16 f g a~ |
    d16 d8.  r4 r4 r16 f g f~ |
    bf16 bf8. r4 r4 r16 a bf c~ |

    a8 a a a   a a16 a r g a bf~ |
    f8 f f f   f f16 f r d f ef~ |
    c8 c c c   c c16 c r bf c g~ |

    bf8 bf bf bf bf bf16 bf r c d ef~ |
    ef8 ef ef ef ef ef16 ef r ef f g~ |
    g8  g  g  g  g  g16  f  r g a bf~ |

    % Page 16

    ef8 ef ef ef   df c bf8. bf16~ |
    g8  g  g  g    f ef d8. d16~ |
    bf8 bf bf c   df( c) bf8. bf16~ |

    bf16 g8. r4 r4 r16 c d ef~ |
    d16 d8.  r4 r4 r16 ef f g~ |
    bf16 bf8. r4 r4 r16 g a bf~ |

    ef8 ef ef ef   df c bf8. bf16~ |
    g8  g  g  g    f ef d8.  d16~ |
    bf8 bf bf c    df( c) bf8. bf16~ |

    bf16 g8. r4 r8  f'8 f16 c f8~ |
    d16 d8.  r4 r8  f8 a16 f16 a8~ |
    bf16 bf8. r4 r8 f8 c'16 a c8~ |

    \time 2/4 f2~ |
    \time 2/4 a2~ |
    \time 2/4 c2~ |

    \time 6/4 f1. |
    \time 6/4 a1. |
    \time 6/4 c1. |
     
    \time 4/4 R1 \bar "|."  |
    \time 4/4 R1 \bar "|."  |
    \time 4/4 R1 \bar "|."  |
}


%
% Put them all together.
%

parts = {
  <<
     \new Staff  << \common \relative c'   \soprano >>
     \new Staff  << \common \relative c'   \alto    >>
     \new Staff  << \common \relative c'   \tenor   >>
  >>
}

%
% Define the things that print.
%

\score {
%  \context StaffGroup = "quartet" \parts 
  \new Staff  << \common \relative c'   \tenor >>
  \midi { 
    \context { 
      \Score tempoWholesPerMinute = #(ly:make-moment 160 8) 
    }
  }
  \layout { }
}
