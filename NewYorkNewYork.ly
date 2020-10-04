\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { sub \dynamic mp }
rall = \markup { \italic rall. }

\parallelMusic  #'(clarA clarB clarC clarBass) {

    \time 4/4 g'4\f g r4 e,4 |
    \time 4/4 e4\f e r4 g,4 |
    \time 4/4 c4\f c b8.( c16) a4 |
    \time 4/4 c4\f r g r |

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

    r4 c4 b8. c16~c8. a16 \bar "||"  \mark \default |
    f4-. r4 r2 \bar "||" \mark \default |
    c4-. r4 r2 \bar "||" \mark \default |
    d'4-. r4 r2 \bar "||" \mark \default |
   
    % news.

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

    % These little town

    R1       \bar "||" \mark \default |
    f4 c'4 b8 c8~c8 a8 \bar "||" \mark \default |
    c4 r4 r2 \bar "||" \mark \default |
    d'4 g,2.  \bar "||" \mark \default |

    % blues.   B  bar 17

    c,4 c4 b8. c16 a4 |
    g1 |
    r8. c16 e8. ds16 e8. g16 a8. g16 |
    c4 r g r |

    % Are melting away

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
    r4 g8 e4 g8 e4~ |
    e,4 e4 e8. e16 e4 |
    c4 g' e d |

    % What chord is this?  I7?  

    c4 e g d | 
    e1 |
    bf1 |
    c4 c' bf8. a16 g4 |

    % I want to 

    c4 e' f g  \bar "||" \mark \default |
    r4 c, d e  \bar "||" \mark \default |
    r4 g a b   \bar "||" \mark \default |
    e4 c d e   \bar "||" \mark \default |


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

    b8. a16 g8. b16 r2 |
    g1 |
    e1 |
    e4 g b e |

    % IV top of the 

    % ii heap

    R1 |
    R1 |
    R1 |
    R1 |





%{
    \time 4/4 c4\f c b8. c16 a4 |
    \time 4/4 a4\f a gs8. a16 g4 |
    \time 4/4 g4\f g fs8. g16 e4 |
    \time 4/4 e4\f e ds8. e16 c4 |

    c4 c b8. c16 a4 |
    a4 a gs8. a16 g4 |
    g4 g fs8. g16 e4 |
    e4 e ds8. e16 c4 |

    c4 c b8. c16 a4 |
    a4 a gs8. a16 f4 |
    f4 f e 8. f16 d4 |
    d4 d cs8. d16 c4 |

    c4 c b8. c16 a4 |
    a4 a gs8. a16 f4 |
    f4 f e 8. f16 d4 |
    d4 d cs8. d16 c4 |


    R1 |
    e4\mp e ds8. e16 c4 |
    c4\mp c b8. c16 a4 |
    g4\mp g fs8. g16 e4 |

    R1 |
    e4 e ds8. e16 c4 |
    c4 c b8. c16 a4 |
    g4 g fs8. g16 e4 |

    R1 |
    f4 f  e8. f16 d8. e16 |
    c4 c b8. c16 a4 |
    a4 a gs8. a16 f4 |

    r4 c4 b8. c16~c8. a16 \bar "||"  \mark \default |
    f4-. r4 r2 \bar "||" \mark \default |
    c4-. r4 r2 \bar "||" \mark \default |
    a4-. r4 r2 \bar "||" \mark \default |

    % Bar 9 -- Start spreadin the news.

    g1 |
    e4\mp e ds8. e16 c4 |
    c4\mp c b8. c16 a4 |
    g4\mp g fs8. g16 e4 |

    r4 c4 \times 2/3 { d4 c4 a4 } |
    e4 e ds8. e16 c4 |
    c4 c b8. c16 a4 |
    g4 g fs8. g16 e4 |

    g1 |
    f4 f  e8. f16 d8. e16 |
    c4 c b8. c16 a4 |
    a4 a gs8. a16 f4 |

    r4 b4 c4 d4 |
    f8 r g4 a4 b4 |
    c8 r b4 c4 d4 |
    g8 r g4 a4 b4 |

    % Bar 13 -- Brand new start of it

    e4 ds8 e8~e8 ds8 e4 |
    c4 g8 c8~c8 g8 c4 |
    e4 c8 e8~e8 c8 e4 |
    c4 g8 c8~c8 g8 c4 |

    r4 g4 e4 ds4 |
%}


    c1\fermata \bar "|." |
    g1\fermata \bar "|." |
    e1\fermata \bar "|." |
    c1\fermata \bar "|." |
}



\header {
  title = "Theme from \"New York, New York\""
  instrument = "Clarinet quartet"
  composer = "Kander & Ebb"
  arranger = "Arr Roberts"
  tagline = ##f
}



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

