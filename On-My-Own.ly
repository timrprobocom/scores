\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

global = {
  \key d \major
  \time 4/4
  \tempo "Melancholy" 4=120
  \set Score.markFormatter = #format-mark-box-alphabet
}

%% 2 and 3 should be 16ths not 8ths.

scoreAClarinetI = \relative c'' {
    \global
    \transposition c'
    % Music follows here.

    R1 |
    R1 |
    R1 |
    r2 a4 d4  \mark \default |
    \repeat volta 2 { d2. d4 |
    e4 d4 \times 2/3 { e4 e4 a4 } |
    fs8  e d2. |
    r2 a4 d4 |
    d2. d4 |
    e4 d e4. d8 |
    b4 a2. |
    r2 a4 a8 b8~ |
    b4 d4~d4 d4 |
    cs4 d4 e4 fs4 |
    d4 fs4 r4 r8 d8 |
    g8 fs e d g fs e d |
    \time 2/4 g8 fs e d |
    \time 4/4 b4 a2. |
    r2 a4 d4 } |
}

scoreAClarinetII = \relative c'' {
    \global
    \transposition c'
    % Music follows here.

    fs4. e4. d4 |
    g4. fs4. e4 |
    fs4. e4. d4 |
    g4. fs4. e4  \mark \default |
    \repeat volta 2 { fs4. e4. d4 |
    g4. fs4. e4 |
    fs4. e4. d4 |
    fs4. e4. d4 |
    d4. cs4. b4 |

    g4. fs4. e4 } |
}

scoreAClarinetIII = \relative c' {
    \global
    \transposition c'
    % Music follows here.

    r8 fs a r fs a r fs |
    r8 g b r g b r g |
    r8 fs a r fs a r fs |
    r8 g b r g b r g  \mark \default |
    \repeat volta 2 { r8 fs a r fs a r fs |
    r8 g b r g b r g |
    r8 fs a r fs a r fs |
    r8 fs a r fs a r fs |
    r8 b fs r b fs r b  |

    
    } |
}

scoreABassClarinet = \relative c' {
    \global
    \transposition c'
    % Music follows here.

    R1 |
    R1 |
    R1 |
    R1  \mark \default |
    \repeat volta 2 { d1 |
    g1 |
    d2 d'2  |
    cs1 |
    b1 |
    e,1 |
    a1 |
    a1 |
    g1 |
    fs1 |
    b1 |
    e,1 |
    \time 2/4  e2 |
    b'1 } |
}


scoreAClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  midiInstrument = "clarinet"
} \scoreAClarinetI

scoreAClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  midiInstrument = "clarinet"
} \scoreAClarinetII

scoreAClarinetIIIPart = \new Staff \with {
  instrumentName = "Clarinet III"
  midiInstrument = "clarinet"
} \scoreAClarinetIII

scoreABassClarinetPart = \new Staff \with {
  instrumentName = "Bass clarinet"
  midiInstrument = "clarinet"
} \scoreABassClarinet

\bookpart { 
    \header {
      title = "On My Own"
      instrument = "for Clarinet Quartet"
      composer = "from Les Miserables"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    
    \score {
      <<
        \scoreAClarinetIPart
        \scoreAClarinetIIPart
        \scoreAClarinetIIIPart
        \scoreABassClarinetPart
      >>
      \layout { }
      \midi { }
    }
}

\paper {
    raggied-bottom = ##t
}

\bookpart {
   \header {
      title = "On My Own"
      instrument = "Bb Clarinet 1"
      composer = "from Les Miserables"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIPart }
}


\bookpart {
   \header {
      title = "On My Own"
      instrument = "Bb Clarinet 2"
      composer = "from Les Miserables"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIIPart }
}

\bookpart {
   \header {
      title = "On My Own"
      instrument = "Bb Clarinet 3"
      composer = "from Les Miserables"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIIIPart }
}

\bookpart {
   \header {
      title = "On My Own"
      instrument = "Bass Clarinet"
      composer = "from Les Miserables"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreABassClarinetPart }
}
