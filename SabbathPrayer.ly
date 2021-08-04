\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { sub \dynamic mp }
rall = \markup { \italic rall... }
atempo = \markup { \italic { a tempo } }


prefix = {
  \time 4/4
  \tempo "Reverently" 4=90
  \clef treble \key c \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \set Score.markFormatter = #format-mark-box-letters
}

skeleton = {
    s1*6 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*13 \bar "|."
}

\parallelMusic  #'(clarA clarB clarC clarBass) {

    b8\mf e8~e e4 e4 r8 |
    R1 |
    R1 |
    R1 |

    b8 e8~e e4 e4 r8 |
    R1 |
    R1 |
    R1 |

    r4 gs8 b cs4 b4 |
    R1 |
    R1 |
    R1 |

    r2   e,8 f e d |
    R1 |
    R1 |
    R1 |

    c4 r4 r2 |
    a4\mp e'4 a,4 fs'4 | 
    a4\mp c4 a4 d4 |
    a2\mp a2 |

    R1 |
    a,4 g'4 a,4 fs'4 |
    a4 e'4 a,4 d4 |
    a2 a2 |

    % A Verse 1  Bar 7
    
    e8 a8 a8 a8 a4 a8 a8 |
    a,4 e'4 a,4 fs'4 | 
    a4 c4 a4 d4 |
    a2 a2 |
    
    a4 a2 r4 |
    a,4 g'4 a,4 fs'4 |
    a4 e'4 a,4 d4 |
    a2 a2 |
    
    e8 a8 a8 a8 a4 a8 a8 |
    a,4 e'4 a,4 fs'4 | 
    a4 c4 a4 d4 |
    a2 a2 |
    
    a1 |
    a,4 g'4 a,4 fs'4 |
    a4 e'4 a,4 d4 |
    a2 a2 |
    
    d8 c b a c4. a8 |
    a,4 e'4 a,4 fs'4 | 
    a4 c4 a4 d4 |
    a2 a2 |
    
    d8 c b a c4 a4 | 
    a,4 g'4 a,4 fs'4 |
    a4 e'4 a,4 d4 |
    a2 a2 |

    b1 |
    r4 d4 ef4 d4 |
    r4 b4 c4 b4 |
    g1 |

    R1 |
    r4. d8 c d c b |
    r4. d8 c d c b |
    e2 r8 e8 fs8 gs8 |

    % Second verse

    c,4 e c fs |
    e8 a8 a8 a8 a4 a8 a8 |
    e8 a8 a8 a8 a4 a8 a8 |
    a4 c4 a4 d4 |

    c4 g' c, fs |
    a4 a2 r4 |
    a4 a2 r4 |
    a4 e'4 a,4 d4 |

    c4 e c fs |
    a8 c8 c8 c8 c4 c8 c8 |
    e8 a8 a8 a8 a4 a8 a8 |
    a4 c4 a4 d4 |

    c4 g' c, fs |
    c1 |
    a1 |
    a4 e'4 a,4 d4 |

    c4 e c fs |
    d8 c b a c4. a8 |
    d8 c b a c4. a8 |
    a4 c4 a4 d4 |

    c4 g' c, fs |
    d8 c b a c4 a4 |
    d8 c b a c4 a4 |
    a4 e'4 a,4 d4 |

    r4 d4 ef4 d4 |
    r4 g4 af4 g4 |
    b1 |
    g,2. r8 d'8 |

    r4 d4 ef4 d4 |
    r4 b8 d8 c4 b4 |
    R1 |
    g2. r8 d8 |

    % C Chorus bar 17

    b'4\mf d, ef d |
    d,4\mf g af g |
    g4\mf b c b |
    g2.\mf r8 d8 |

    b4 d ef d |
    d4 g af g |
    r4 b c8 b g4 |
    g,1 |

    a1 |
    f1 |
    f8 a b c d c b a |
    f1 |

    b2._\rall r4 |
    g2_\rall   d'16( ef) d32( ef d c d8) c8 |
    b4_\rall g4 g2 |
    g2._\rall r4 |

    b4_\atempo d ef d |
    b4_\atempo g af g |
    g4_\atempo b c b |
    g'2._\atempo r8 d8 |

    b4 d ef d |
    d4 g af g |
    r4 b c8 b g4 |
    g,1 |

    a1 |
    f1 |
    f8 a b c d c b a |
    f1 |

    r4_\rall r8 d8 c d c b |
    e1_\rall |
    gs4_\rall e4 e2 |
    e2_\rall r8 e8 fs8 gs8 |

    % Final verse D Bar 31
 
    e8(_\atempo a8) a8 a8 a4 a8 a8 |
    c4_\atempo e c fs |
    e8(_\atempo a8) a8 a8 a4 a8 a8 |
    a4_\atempo c a d |
    
    a4 a2 r4 |
    e8 a8 a8 a8 a4 a8 a8 |
    a4 a2 r4 |
    a4 e' a, d |
    
    e8 a8 a8 a8 a4 a8 a8 |
    a4 a2 r4 |
    a8 c8 c8 c8 c4 c8 c8 |
    a4 c a d |
    
    a1 |
    e8 a8 a8 a8 a4 a8 a8 |
    c1 |
    a4 e' a, d |
    
    d8( c b a c4.) a8 |
    a2       d8( c b a |
    d8( c b a c4.) a8 |
    a4 c a d |
    
    d8( c b a c4.) a8 |
    c2)      d8( c b) a |
    d8 c b a c4. a8 |
    a4 e' a, d |

    d8->\f c-> b-> a-> b4-.\breathe  r4 |
    a8->\f a-> a-> a-> gs4-.\breathe gs4~_\sfp |
    f8->\f f-> f-> f-> e4-.\breathe  b4~_\sfp |
    f8->\f f-> f-> f-> e4-.\breathe  e4~_\sfp |

    % Amen

    d4( \times 2/3 { c8 d c } b4 c8 d8 |
    gs1~ |
    b1~ |
    e1~ | 

    f8 e \times 2/3 { d8 c b } a8) r8 gs4 |
    gs2. r4 |
    b2. r4 |
    e2. r4 |

    a1~ |
    a,4 e'4 a,4 fs'4 | 
    a4 c4 a4 d4 |
    a2 a2 |

    a1 |
    a,4 g'4 a,4 fs'4 |
    a4 e'4 a,4 d4 |
    a2 a2 |

    r4 b8( c) ds( e) f( gs) |
    e1~ |
    c1~ |
    a1~ |

    a4 r4 a,8-. r8 r4 |
    e4 r4 a8-. r8 r4 |
    c4 r4 a8-. r8 r4 |
    a4 r4 a8-. r8 r4 |


}



\header {
  title = "Sabbath Prayer - Fiddler on the Roof\""
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

