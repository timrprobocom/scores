\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { sub \dynamic mp }
rall = \markup { \italic rall. }

\parallelMusic  #'(clarA clarB clarC clarBass) {

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

    r4 c4 b8. c16~c8. a16 |
    f4-. r4 r2 |
    c4-. r4 r2 |
    a4-. r4 r2 |




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

