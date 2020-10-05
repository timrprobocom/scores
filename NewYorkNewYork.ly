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
  \tempo "Light swing" 4=120
  \clef treble \key c \major
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
    s1*18 \bar "||" \mark \default
    s1*12 \tempo "Much slower but getting faster" 4=90 
    s1   \bar "||" \mark \default
    s1*8 \tempo "A tempo" 4=120 
    s1*4 \bar "||"
    s1*7 \bar "|."
}

\parallelMusic  #'(clarA clarB clarC clarBass) {

    g'4\f g r4 e,4 |
    e4\f e r4 g,4 |
    c4\f c b8.( c16) a4 |
    c4\f r g r |

    g'4 g r4 e,4 |
    e'4 e r4 g,4 |
    c4 c b8.( c16) a4 |
    c4 r g r |

    g'4 g r4 f,4 |
    f'4 f r4 d,4 |
    c4 c b8.( c16) a4 |
    d'4 r g, r |

    g'4 g r4 f,4 |
    f'4 f r4 d,4 |
    c4 c b8.( c16) a4 |
    d'4 r g, r |


    g4\mp g r4 g4 |
    e4\mp e r4 e4 |
    c4\mp c b8.( c16) a4 |
    c4\mp r g r |

    g4 g r4 g4 |
    e4 e r4 e4 |
    c4 c b8.( c16) a4 |
    c4 r g r |

    g4 g r4 g4 |
    f4 f r4 f4 |
    c4 c b8.( c16) a4 |
    d'4 r g, r |

    % Start spreading the

    r4 c4 b8. c16~c8. a16 |
    f4-. r4 r2 |
    c4-. r4 r2 |
    d'4-. r4 r2 |
   
    % Bar 9 [A] news.

    g1 |
    e4 e4 e8. e16 e4 |
    c,4 c4 b8. c16 a4 |
    c4 r g r |
   
    r4 c4 d8 c8~ c8 a8 |
    e4 e4 e8. e16 e4 |
    c4 c4 b8. c16 a4 |
    c4 r g r |

    g1 |
    f4 f4 f8. f16 f4 |
    c4 c4 b8. c16 a8. b16 |
    d'4 r g, r |

    r4 b c d |
    f4 g a b |
    c4 b c d |
    d'4 g, a b |
   
    e4 ds8 e8~e8 ds8 e4 |
    e,4 e4 e8. e16 e4 |
    c4 c4 b8. c16 a4 |
    c4 r g r |
   
    r4 g4 e ds |
    e4 e4 e8. e16 e4 |
    c4 c4 b8. c16 a4 |
    c4 r g r |

    d1 |
    f4 f4 f8. f16 f4 |
    c4 c4 b8. c16 a8. b16 |
    d'4 r g, r |

    % These vagabond 

    R1        |
    f4 c'4 b8 c8~c8 a8 |
    c4 r4 r2  |
    d'4 g,2.  |

    % shoes.   [B]  bar 17

    c,4 c4 b8. c16 a4 |
    g1 |
    r8. c16 e8. ds16 e8. g16 a8. g16 |
    c4 r g r |

    % Are longing to stray

    c4 c4 b8. c16 a4 |
    r4 c4 \times 2/3 { d4 c4 a4 } |
    c8 r8 e,4 e8. e16 e4 |
    c4 r g r |

    c4 c4 b8. c16 a4 |
    g1 |
    f8 r8 b8. a16 g8. fs16 g8. e16 |
    d'4 r g, r |

    c4 b c d |
    r4 g' fs f |
    d4 g a b |
    d'4 g, a b |

    c4 c4 b8. c16 a4 |
    e4 ds8 e4 ds8 e4 |
    c4 g8 c4 g8 c4 |
    c4 c g' g, |

    c4 c4 b8. c16 a4 |
    r4 g8 e8~e4 g4 |
    e,4 e4 e8. e16 e4 |
    c4 g' e d |

    % What chord is this?  I7?  

    c4 e g d | 
    e1 |
    bf1 |
    c4 c' bf8. a16 g4 |

    % I want to 

    c4 e' f g  |
    r4 c, d e  |
    r4 g a b   |
    e4 c d e   |


    % Bar 25 [C] wake up in a 

    a4 f \times 2/3 { r4 e4 d4 } |
    c'4 r f r |
    r4 c f g |
    f4 r c r |

    % city that doesn't 

    \times 2/3 { af'4 g f } e4 d |
    c4 r a r |
    af4 c, g' f |
    f4 r c r |

    % sleep

    g4 r4 r2 |
    r4 c4 b8. c16 a4 |
    r4 e4 e8. e16 e4 |
    c4 r g r |

    % to find I'm

    r4 e4 f g |
    c4 b c d |
    e4 g a b |
    c4 r g r |

    % iii king of the hill

    b8. a16 g8. b16~b4 r4 |
    g1 |
    e1 |
    e4 g b e, |

    % IV top of the 

    r2 a8. g16 f8. a16~ |
    c,4 c4 r2 |
    a,4 a4 r2 |
    f4 a c f | 

    % ii heap

    a4 r4 r2 |
    r4 \times 2/3 { e,8( f g a b c d e f } |
    f2 a4 f4 |
    d4 a f a |

    % My little town 

    g4 r4 r2      |
    g8) r8 r4 r2  |
    f4 c'4 b8. c16 a4 |
    d4 g,2.       |

    % blues.   D  bar 33

    r8. c,,16 e8. ds16 e8. g16 a8. g16 |
    c,4 c4 b8. c16 a4 |
    g1 |
    c4 r g r |

    c8 r8 e,4 e8. e16 e4 |
    c4 c4 b8. c16 a4 |
    r4 c4 \times 2/3 { d4 c4 a4 } |
    c4 r g r |

    f8 r8 b8. a16 g8. fs16 g8. e16 |
    c4 c4 b8. c16 a4 |
    g1 |
    d'4 r g, r |

    d4 g a b |
    c4 b c d |
    r4 g' fs f |
    d'4 g, a b |

    c4 g8 c4 g8 c4 |
    c4 c4 b8. c16 a4 |
    e4 ds8 e4 ds8 e4 |
    c4 c g' g, |

    e,4 e4 e8. e16 e4 |
    c4 c4 b8. c16 a4 |
    r4 g8 e8~e4 g4 |
    c4 g' e d |

    % v9 York....

    d1 |
    bf1 |
    a1 |
    g,4 g a bf |

    % I7 If I can

    r4 e d c |
    r4 bf bf bf |
    r4 g4 f e |
    c4 c d e |

    % IV make it there 

    c4. c4. af4~ |
    a4. f4. c4~ |
    c'4. a4. g4~ |
    f4 f,2 f'4~ |

    % iv I'll make it

    af8 af'4. af4 af |
    c8 c'4. c4 c |
    g8 f4. e4 d |
    f2 f,2 |

    % I Anywhere

    c4. c4. cs4~ |
    e4. e4. g4~ |
    c'4. g4. f4~ |
    g'4 g,2 a4~ |

    % VI7 It's up to 

    cs8 r8 r4 r2 |
    g8 r8 r4 r2 |
    f8 r8 e4 f g |
    a8 r8 a4 b cs |

    % ii V you New

    c2 b2 |
    f2 d2 |
    a2 g2 |
    d4 d4 e4 e4 |

    % vi7 v9 York New

    c2 c2 |
    a2 a2 |
    e2 g2 |
    f4 f4 g4 g4 |

    % I York

    e4 e r4 g,4 |
    c4 c b8.( c16) a4 |
    c,1 |
    c,4 r g r |

    e'4 e r4 g,4 |
    c4 c b8.( c16) a4 |
    g'4 g r4 e,4 |
    c4 r g r |

    g'4 g r4 f,4 |
    f'4 f r4 d,4 |
    c'4 c b8.( c16) a4 |
    d'4 r g, r |

    g4  \times 2/3 { d8  d d e e e f f f } |
    f'4 \times 2/3 { b,8 b b c c c d d d } |
    c4 g a b   |
    d'4 g, a b |

    % Bar 51 [E] 

    g4 fs8 g-. r fs g-. r |
    e4 ds8 e-. r ds e-. r |
    r4 g4~g8. f16 d8. e16 |
    c4 r g r |

    % in old  New

    r4 g'8. e16~e4 c'4 |
    e8 r8 g,4 a b |
    g8 r8 c4 b8.( c16) a4 |
    c4 r g r |

    % I7 york

    g1 |
    r4 \times 2/3 { e8 e c } \times 2/3 { e8 e c } \times 2/3 { e8 e c } |
    r4 \times 2/3 { bf8 bf g } \times 2/3 { bf8 bf g } \times 2/3 { bf8 bf g } |
    c4 c e g | 

    % I7 to IV   I wanna

    r4 e f g |
    e8 r8 bf4 bf bf |
    bf8 r8 g4 g g |
    c4 c, d e |

    % IV Wake up in a 

    a4 f \times 2/3 { r4 e4 d4 } |
    c4 r f r |
    r4 c f g |
    f4 r c r |

    % city that doesn't 

    \times 2/3 { af'4 g f } e4 d |
    c4 r a r |
    af4 c, g' f |
    f4 r c r |

    % sleep

    g4 r4 r2 |
    r4 c4 b8. c16 a4 |
    r4 e4 e8. e16 e4 |
    c4 r g r |

    % to find I'm

    r4 e4 f g |
    c4 b c d |
    e4 g, a b |
    c4 r g r |

    % iii king of the hill

    \times 2/3 { b4 a g } b2 |
    g1 |
    e1 |
    b1 |

    % iii top of the heap

    \times 2/3 { b4 a g } b2 |
    g1 |
    b1 |
    e,1 |

    % iv  A number one

    \times 2/3 { c4 bf af } c2 |
    af1 |
    c1 |
    f1 |

    % V   cream of the crop

    \times 2/3 { b4 a g } b2  |
    d,2 \times 2/3 { d4 g b } |
    f1        |
    g1        |

    % ii7  HOLD  These little town

    r4 c4 b8 c8 a4  |
    a1\trill\sfp\<  |
    f1\trill\sfp\<  |
    d'1\trill\sfp\< |

    % Bar 64 [F]   blues

    g1 |
    e4\!\f e e8. e16 e4 |
    c4\!\f c b8. c16 a4 |
    c4\!\f e g, e' |

    % are melting away |

    r4 c4 \times 2/3 { d4 c a } |
    e4 e e8. e16 e4 |
    c4 c b8. c16 a4 |
    c4 g' e c | 

    g1 |
    f4 f f8. f16 f4 |
    c4 c b8. c16 a8. b16 |
    d4 f g, f' |

    % I'll make a 

    r4 g fs f |
    f4 b, b b |
    c4 g a b |
    d4 g, a b |

    % brand new start of it

    e4 ds8 e4 ds8 e4 |
    c4 b8 c4 b8 c4 |
    g4 fs8 g4 fs8 g4 |
    c4 r g r |

    % in old New

    r4 g8 e8~e4 g4 |
    g8 r8 r4 c4 e4 |
    e8 r8 r4 g4 c4 |
    c4 r g r |

    % v7  York

    a1 |
    d4 \times 2/3 { d8 d c } \times 2/3 { d d c } \times 2/3 { d d c }  |
    bf4 \times 2/3 { bf8 bf g } \times 2/3 { bf bf g } \times 2/3 { bf bf g }  |
    g'4 r d r |

    % if I can

    r4 g f \times 2/3 { e8 d c } |
    e8 r8 e4 d c  |
    g8 r8 g2.     |
    c4 c d e     |

    % IV to iv   make it there  ((((( Beat 4 is wrong chord ))))

    c'4. a4. g4~ |
    f4. f4. af,4~ |
    a4. a4. c,4~ |
    f4 f,2 f'4~ |

    % iv I'll make it

    g8 f4. e4 d |
    af8 af4. af4 af |
    c8 c4. c4 c |
    f2 f,2 |

    % I to vi7  Anywhere

    c'4. g4. f4 |
    c4. c4. cs4 |
    e4. e4. e4 |
    g'4 g,2 a4 |

    % (a tempo) it's up to 

    r4 e f g |
    r4 e f g |
    r4 e f g |
    r4 e f g |

    % 76 || you New

    a4 r g r | 
    r4 \grace { c,16 d e } f4 r \grace { c16 d} e4 |
    r4 \grace { g16 a b } c4 r \grace { g16 a } b4 |
    f4 r e r |

    % York New

    a4 r \times 2/3 { c( a g) } | 
    r4 \grace { c16 d e } f4 r \grace { f16 g } a4 |
    r4 \grace { g16 a b } c4 r \grace { c16 d e } f4 |
    f4 r g r |

    % York

    c1 |
    e4 e r4 g4 |
    c4 c b8.( c16) a4 |
    c4 r g r |

    % outro

    g4 g r4 e,4 |
    e4 e r4 g4 |
    c4 c b8.( c16) a4 |
    c4 r g r |

    % outro

    g'4 g r4 e,4 |
    f4 f r4 f4 |
    c4 c b8.( c16) a4 |
    d'4 r g r |

    % ii dim ? outro  
    
    c''1 |
    af1 |
    f'1 |
    d1 |
    
    % chunk

    c4-^ r4 r2 |
    c,4-^ r4 r2 |
    c4-^ r4 r2 |
    c4-^ r4 r2 |
}



\header {
  title = "Theme from \"New York, New York\""
  instrument = "Clarinet quartet"
  composer = "Kander & Ebb"
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
  << \skeleton \relative c'' \clarA >>
}

% Clarinet II

clarII = {
  \set Staff.instrumentName = #"Bb Clar II "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  << \skeleton  \relative c'' \clarB >>
}

% Clarinet III

clarIII = {
  \set Staff.instrumentName = #"Bb Clar III "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  << \skeleton  \relative c'' \clarC >>
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

