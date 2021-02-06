\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { sub \dynamic mp }
rall = \markup { \italic rall. }


prefix = {
  \time 4/4
  \tempo "A la Fred Astaire" 4=180
  \clef treble \key d \minor
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \set Score.markFormatter = #format-mark-box-letters
}

skeleton = {
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*16 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*10 \bar "|."
}

\parallelMusic  #'(clarA clarB clarC clarBass) {

    R1 |
    R1 |
    R1 |
    d4\mp r d r | 


    R1 |
    R1 |
    R1 |
    d4 r r a8 c |

    R1 |
    R1 |
    R1 |
    d4 d f f |

    R1 |
    R1 |
    R1 |
    d4 r r r |

    d8( a') r d,( g) r d( f) |
    d8( a') r d,( g) r d( f) |
    d8( f) r d( e) r d( f) |
    d4 d d d |

    r8 d( e) r d( e f g) |
    r8 d( e) r d( e f g) |
    r8 d8( e) r d4 a4 |
    d4 d a c |

    a8( d) r a( c) r bf a~ | 
    a8( d) r a( c) r bf a~ | 
    d8( f) r d( e) r f4    |
    d4 r f f |

    a2 r |
    a2 r |
    e2 r |
    a4 g f e |

    % [A] Bar 9 - first theme, held harmony
    % Dm  2 3 4 DmM7 2 3 4 Dm7 2 3 4 Dm6 A7 3 4 | Am7

    r4 f r f |
    r4 a r a |
    d4 f a a,8( d) |
    d4 r a r |

    r4 f r f |
    r4 a r a |
    r8 f( a) r8 a,4 d |
    cs4 r a r |

    r4 f r f |
    r4 a r a |
    f4 a a,8( d8) r f |
    c4 r a r |

    R1 |
    a4 a, cs e |
    a4 a, cs e |
    b4 r g r  |

    r2 r4 ds8( e) |
    g4 r4 r2 |
    g4 r4 r2 |
    a4 r r r |

    a,4 r4 r2 |
    R1 |
    r2 a8( g f e) |
    R1 |

    d4 r4 r2 |
    R1 |
    R1 |
    r4 d f a |

    R1 |
    bf4 bf8 bf8 r8 a8~a4 |
    R1 |
    bf4 bf8 bf8 r8 a8~a4 |


    % [B] Bar 17 - first theme, articulated harmony
    % Dm  2 3 4 DmM7 2 3 4 Dm7 2 3 4 Dm6 A7 3 4 | Am7


    d4 f a a,8( d) |
    d1 |
    f'1 |
    d4 r a r |

    r8 f( a) r8 a,4 d |
    cs1 |
    f1 |
    cs4 r a r |

    f4 a a,8( d8) r f |
    c1 |
    f1 |
    c4 r a r |

    a4 a, cs e |
    b4 a, cs e |
    f4 r4 r2 |
    b4 r g r  |

    g4 r4 r2 |
    g4 r4 r2 |
    r2 r4 ds8( e) |
    a4 r r r |

    r2 a8( g f e) |
    R1 |
    a,4 r4 r2 |
    R1 |

    R1 |
    R1 |
    d4 r4 r2 |
    R1 |

    R1 |
    R1 |
    R1 |
    d,4 d e fs |



    % [C] Bar 25
    % Chorus 1 normal
    % Gm  C  F  F Dm A |

    g4 a bf c |
    g2  d2 |
    R1 |
    g4 r bf d, |


    d c bf a4 |
    g2  bf2 |
    R1 |
    g4 r d r |


    g4 c,8( g'8)~ g4 r4 |
    g4  r4 r2 |
    R1 |
    c4 r e g, |


    R1 |
    g4 c,8( g'8)~ g4 r4 |
    R1 |
    c4 c d e |


    f4 g a bf |
    R1 |
    R1 |
    f4 r a c, |


    c4 bf a g |
    R1 |
    R1 |
    f4 r f e |


    f4 c8( f8)~f4 r4 |
    R1 |
    R1 |
    d2 f2 | 


    % Super duper


    R1 |
    R1 |
    R1 |
    bf4 bf8 bf8 r8 a4. |


    % [D] Bar 33
    % block chord verse

    d4 d d d8 cs |
    a4 a a a8 a  |
    f4 f f f8 f  |
    d,4 f a a,8( d) |

    r8 cs8 cs4 cs cs |
    r8 a8  a4  a  a |
    r8 f8  f4  f  f |
    r8 f( a) r8 a,4 d |

    c4 c c8 c r c |
    a4 a a8 a r a |
    f4 f f8 f r f |
    f4 a a,8( d) r f |

    b4 b a a |
    a4 a g g |
    f4 f e e  |
    a4 a, cs e |
 
    a4 r r8 ds8( e) r8 |
    e4 r r2 |
    cs4 r r2 |
    g4 r r2 |

    a,4 r4 r2 |
    r2 a8 g f e |
    R1 |
    r2 a8 g f e |

    R1 |
    R1 |
    R1 |
    d4 r4 r2 |

    R1 |
    R1 |
    R1 |
    d4 r4 r2 |

    % [E] Bar 41, Interlude/intro.

    af'4 bf df df |
    R1 |
    R1 |
    df4 r af r |

    df4 c8 ef8~ef4 r4 |
    R1 |
    R1 |
    ef'4 r af, r |

    af,4 bf df df |
    R1 |
    R1 |
    df4 r af r |

    df4 c8 ef8~ef4 r4 |
    R1 |
    R1 |
    ef'4 r af, r |

    c4 d f f |
    R1 |
    R1 |
    f'4 r c r |

    f4 e8 g8~g4 r |
    R1 |
    R1 |
    g'4 r c, r |

    c,4 d f f |
    R1 |
    R1 |
    f4 r c r |

    f4 e8 g8~g4 r |
    R1 |
    R1 |
    g'4 r c, r |

    a2  e4 r8 cs8 |
    R1 |
    R1 |
    R1 |

    e4 d4 cs8 b8~b4 |
    R1 |
    R1 |
    R1 |

    a'2  e4 r8 cs8 |
    R1 |
    R1 |
    R1 |

    e4 d4 cs8 b8~b4 |
    R1 |
    R1 |
    R1 |

    fs'4 fs cs cs |
    R1 |
    R1 |
    R1 |

    fs2 r2 |
    R1 |
    R1 |
    R1 |

    gs4 gs8 gs8~gs8 fs8 e4 |
    R1 |
    R1 |
    R1 |

    a1 |
    R1 |
    R1 |
    R1 |

    % [F] 57 Block chord verse.

    d,4 d d d8 cs |
    a4 a a a8 a  |
    f4 f f f8 f  |
    d4 f a a,8( d) |

    r8 cs8 cs4 cs cs |
    r8 a8  a4  a  a |
    r8 f8  f4  f  f |
    r8 f( a) r8 a,4 d |

    c4 c c8 c r c |
    a4 a a8 a r a |
    f4 f f8 f r f |
    f4 a a,8( d) r f |

    b4 b a a |
    a4 a g g |
    f4 f e e  |
    a4 a, cs e |
 
    a4 r r8 ds8( e) r8 |
    e4 r r2 |
    cs4 r r2 |
    g4 r r2 |

    a,4 r4 r2 |
    r2 a8 g f e |
    R1 |
    r2 a8 g f e |

    R1 |
    R1 |
    R1 |
    d4 r4 r2 |

    bf4 bf8 bf8 r8 a8~a4 |
    f4 f8 f8 r8 e8~e4 |
    d4 d8 d8 r8 cs8~cs4 |
    R1 |

    % Rpt

     d4 d d d8 cs |
     a4 a a a8 a  |
     f4 f f f8 f  |
     d4 f a a,8( d) |

     r8 cs8 cs4 cs cs |
     r8 a8  a4  a  a |
     r8 f8  f4  f  f |
     r8 f( a) r8 a,4 d |

     c4 c c8 c r c |
     a4 a a8 a r a |
     f4 f f8 f r f |
     f4 a a,8( d) r f |

     b4 b a a |
     a4 a g g |
     f4 f e e  |
     a4 a, cs e |
 
     a4 r r8 ds,8( e) r8 |
     e4 r r2 |
     cs4 r r2 |
     g4 r r2 |

     a,4 r4 r2 |
     r2 a8 g f e |
     R1 |
     r2 a8 g f e |

    R1 |
    R1 |
    R1 |
    d4 r4 r2 |

    R1 |
    R1 |
    R1 |
    R1 |
    
    % [H] bar 73 Scat bridge.

    R1 |
    g8^solo^Gm d a' bf r bf c r |
    R1 |
    R1 |

    R1 |
    cs8 d cs c r bf a g |
    R1 |
    R1 |

    R1 |
    bf8 c bf g r4 bf8 c |
    R1 |
    R1 |

    R1 |
    bf8 g r4 bf8 a af g |
    R1 |
    R1 |

    R1 |
    f8^F r c' gs a c gs a |
    R1 |
    R1 |

    R1 |
    c8 c bf a r a g e |
    R1 |
    R1 |

    R1 |
    f8 c d f r4 r4 |
    R1 |
    R1 |
    
    % Super duper ...

    R1 |
    R1 |
    R1 |
    R1 |
    

    % [I] Bar 81 - final verse


    d4 f a a,8( d) |
    d'1 |
    f'1 |
    d4 r a r |

    r8 f( a) r8 a,4 d |
    cs1 |
    f1 |
    cs4 r a r |

    f4 a a,8( d8) r f |
    c1 |
    f1 |
    c4 r a r |

    a4 a, cs e |
    b4 a, cs e |
    f4 r4 r2 |
    b4 r g r  |

    g4 r4 r2 |
    g4 r4 r2 |
    r2 r4 ds8( e) |
    a4 r r r |

    r2 a8( g f e) |
    R1 |
    a,4 r4 r2 |
    R1 |

    d4 r4 r2 |
    R1 |
    R1 |
    r4 d f a |

%% 2 bars puttin on the ritz

%% 2 bars puttin on the ritz

}



\header {
  title = "Puttin On The Ritz"
  subtitle = "for Clarinet Quartet"
  composer = "Irving Berlin"
  arranger = "Arr Roberts"
  tagline = ##f
}



%
% Define the parts.
%

% Clarinet I

clarI = {
  \set Staff.instrumentName = #"Bb Clar I "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  << \skeleton \relative c' \clarA >>
}

% Clarinet II

clarII = {
  \set Staff.instrumentName = #"Bb Clar II "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  << \skeleton  \relative c' \clarB >>
}

% Clarinet III

clarIII = {
  \set Staff.instrumentName = #"Bb Clar III "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  << \skeleton  \relative c' \clarC >>
}

% Bass Clarinet

bassClar = {
  \set Staff.instrumentName = #"Bass Clar "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  << \skeleton  \relative c' \clarBass >>
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

