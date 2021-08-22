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
  \time 3/2
  \tempo "Joyously" 2=90
  \clef treble \key a \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" } 
  \set Score.markFormatter = #format-mark-box-letters
}

skeleton = {
%    s2.*34 \bar "||" \mark \default
%    \override BreathingSign.text = \markup { \musicglyph #"scripts.rcomma" } 
%    s1*2 \bar "|."
}

\parallelMusic  #'(clarA clarB clarC clarBass) {

    % How can there be any sin in sincere

    R1. |
    R1. |
    R1. |
    cs2\mf d ds |

    r2 \breathe r1 |
    r2 \breathe r1 |
    r2 \breathe fs\mf gs |
    e2 \breathe r1 |

    fs2\mf gs a |
    cs2\mf cs e |
    a2 b cs |
    fs2 f e |

    fs1. \breathe |
    as,1. \breathe |
    d1. \breathe |
    fs1. \breathe |

    % Where is the good in good bye

    \time 3/4 fs4 fs fs |
    \time 3/4 ds4 ds ds |
    \time 3/4 cs4 b a |
    \time 3/4 b,4 b b |

    gs4 gs gs |
    d?4 d d |
    c?4 gs b |
    e4 e e |

    \time 3/2 a1.~ |
    \time 3/2 cs2 d ds |
    \time 3/2 a1 a2 |
    \time 3/2 a,2 b bs |

    a1.~ |
    e2 fs g~ |
    a2 c cs~ |
    cs2 ds e~ |

    \grace { a4 as4 b2 a16[( b16] a4~ } a1.) \fermata \breathe |
    g1.\fermata \breathe |
    cs1.\fermata \breathe |
    e1.\fermata \breathe |
   
    % Your apprehensions confuse me dear

    \time 3/4 d,4 d d |
    \time 3/4 a,4 fs a |
    \time 3/4 fs4 a b |
    \time 3/4 d4 d d |

    f4 f f |
    d4 d d |
    c b a |
    d d d |

    \time 3/2 e2 e2 e2 |
    \time 3/2 cs2 cs2 as2 |
    \time 3/2 e2 a2 cs2 |
    \time 3/2 a2 a2 fs2 |

    % Puzzle and mystify tell me why tell me

    \time 3/4 fs4 ds f |
    \time 3/4 a4 a d |
    \time 3/4 ds,4 fs gs |
    \time 3/4 b4 b b |

    fs?2 ds4 |
    ds2 a4 |
    a2 cs4 |
    b2 b4 |

    d!4 \breathe ds e |
    gs4 \breathe b cs |
    b4 \breathe a bf |
    e4 \breathe fs g |

    e4 g gs |
    d4 ds e |
    b4 cs d |
    gs4 as b |

    % What can be fare in farewell dear

    g2.~ |
    cs2.~ |
    e2.~ |
    a2.~ |

    g4 g e |
    cs4 e cs |
    e4 cs a |
    a4 a g |

    e2.~ |
    cs2.~ |
    g2.~ |
    a,2.~ |

    e4 fs e |
    cs4 cs g |
    g4 a b |
    a4 a a |

    \time 3/2 es1. |
    \time 3/2 b2( cs2 b2) |
    \time 3/2 gs1. |
    \time 3/2 d1. |
    
    fs1 \breathe r4 d4 |
    d1 \breathe r4 a4 |
    a1 \breathe r4 d,4 |
    d1 \breathe r4 fs4 |

    % While one single star shines above?

    \time 3/4 fs4\mf fs fs |
    \time 3/4 b4\mf cs ds |
    \time 3/4 ds4\mf e fs |
    \time 3/4 b,4\mf b b |

    ds4 e fs |
    b4 b ds |
    fs4 gs a |
    b4 b b |

    \time 3/2 gs2( a2 fs2)\glissando |
    \time 3/2 d!2( ds2 ds2) |
    \time 3/2 b1.~ |
    \time 3/2 e2( fs2 b,2) |

    gs1. \fermata \breathe |
    d?1. \fermata \breathe |
    b1. \fermata \breathe |
    e1. \fermata \breathe |

    % How can there be any sin in sincere?

    \time 3/4 e4 d fs |
    \time 3/4 cs4 b a |
    \time 3/4 cs,4 d ds |
    \time 3/4 a,4 b bs |

    e4 gs es |
    a4 bs b |
    e4 fs gs |
    cs4 ds cs |

    \time 3/2 fs2\< gs a |
    \time 3/2 cs2\< cs e |
    \time 3/2 a2\< b cs |
    \time 3/2 fs2\< f e |

    as1.\!\fermata \breathe |
    e1.\!\fermata \breathe |
    fs1.\!\fermata \breathe |
    fs1.\!\fermata \breathe |

    % Aren't we sincerely in love?

    fs2\mp fs fs |
    fs,2\mp a fs |
    d2\mp cs a |
    b,2 cs d |

    ds2 d \breathe fs\f  |
    a2 b \breathe d\f    |
    fs2 gs \breathe e\f  |
    b2 e \breathe b4(\f bf |

    \time 4/4 a1~ | 
    \time 4/4 cs2 \breathe e | 
    \time 4/4 a2 \breathe cs | 
    \time 4/4 a2) \breathe a' | 

    a1~ |
    ds2 d |
    c2 b |
    fs2 f |

    a1\fermata \bar "|." |
    e1\fermata \bar "|." |
    cs1\fermata \bar "|." |
    a,1\fermata \bar "|." |

}



\header {
  title = "Sincere (Music Man)"
  instrument = "Clarinet quartet"
  composer = "Meredith Willson"
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
  << \skeleton  \relative c \clarC >>
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

