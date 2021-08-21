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
  \time 3/4
  \tempo "Joyously" 4=90
  \clef treble \key a \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \set Score.markFormatter = #format-mark-box-letters
}

skeleton = {
    \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" } 
%    s2.*34 \bar "||" \mark \default
    s2.*4 \tempo "Quicker" 4=150
    s2.*32 
    \override BreathingSign.text = \markup { \musicglyph #"scripts.rcomma" } 
    s1*2 \bar "|."
}

\parallelMusic  #'(clarA clarB clarC clarBass) {

    % How can there be any sin in sincere

    R2. |
    R2. |
    R2. |
    cs4 d ds4 |

    R2. |
    R2. |
    r4 fs gs |
    e4 r2 |

    fs4 gs4 a4 |
    cs4 cs e |
    a4 b cs |
    fs4 f e |

    fs2. \breathe |
    as,2. \breathe |
    d2. \breathe |
    fs2. \breathe |

    % Where is the good in good bye

    fs4 fs fs |
    ds4 ds ds |
    cs4 b a |
    b,4 b b |

    gs4 gs gs |
    d?4 d d |
    c?4 gs b |
    e4 e e |

    a2.~ |
    cs4 d ds |
    a2 a4 |
    a,4 b bs |

    a2.~ |
    e4 fs g~ |
    a4 c cs~ |
    cs4 ds e~ |

    \grace { a8[ as8] b4 a16[( b16] a4~ } a2.) \fermata \breathe |
    g2.\fermata \breathe |
    cs2.\fermata \breathe |
    e2.\fermata \breathe |
   
    % Your apprehensions confuse me dear

    d,4 d d |
    a,4 fs a |
    fs4 a b |
    d4 d d |

    f4 f f |
    d4 d d |
    c b a |
    d d d |

    e2 e4~ |
    cs2 cs4~ | 
    e2 a4~ |
    a2 a4~ |

    e4 e2 |
    cs4 as2 |
    a4 cs2 |
    a4 fs2 |

    % Puzzle and mystify tell me why tell me

    fs4 ds f |
    a4 a d |
    ds,4 fs gs |
    b4 b b |

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

    es2.~ |
    b2( cs4~ |
    gs2.~ |
    d2.~ |

    es2. |
    cs4 b2) |
    gs2. |
    d2. |
    
    fs2.~ |
    d2.~ |
    a2.~ |
    d2.~ |
    
    fs2 \breathe d4 |
    d2 \breathe a4 |
    a2 \breathe d,4 |
    d2 \breathe fs4 |

    % While one single star shines above?

    fs4\mf fs fs |
    b4\mf cs ds |
    ds4\mf e fs |
    b,4\mf b b |

    ds4 e fs |
    b4 b ds |
    fs4 gs a |
    b4 b b |

    gs2( a4~ |
    d!2( ds4~ |
    b2.~ |
    e2( fs4~ |

    a4 fs2)\glissando |
    ds4 ds2) |
    b2.~ |
    fs4 b,2) |

    gs2. \fermata \breathe |
    d?2. \fermata \breathe |
    b2. \fermata \breathe |
    e2. \fermata \breathe |

    % How can there be any sin in sincere?

    e4 d fs |
    cs b a |
    cs, d ds |
    a, b bs |

    e4 gs es |
    a4 bs b |
    e4 fs gs |
    cs4 ds cs |

    fs4\< gs a |
    cs4\< cs e |
    a4\< b cs |
    fs4\< f e |

    as2.\!\fermata \breathe |
    e2.\!\fermata \breathe |
    fs2.\!\fermata \breathe |
    fs2.\!\fermata \breathe |

    % Aren't we sincerely in love?

    fs4\mp fs fs |
    fs,4\mp a fs |
    d4\mp cs a |
    b,4 cs d |

    ds4 d \breathe fs\f |
    a4 b \breathe d\f |
    fs4 gs \breathe e\f |
    b4 e \breathe b8 bf\f |

    \time 4/4 a1~ |
    \time 4/4 cs4 \breathe e ds d |
    \time 4/4 a4 \breathe cs c b |
    \time 4/4 a4 \breathe a' fs f |

    a1\fermata |
    e1\fermata |
    cs1\fermata |
    a,1\fermata |

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

