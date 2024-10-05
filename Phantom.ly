\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

global = {
  \key a \minor
  \time 4/4
  \tempo "Angry" 4=144
  \set Score.markFormatter = #format-mark-box-alphabet
}

ClarinetI = \relative c''' {
    \global
    % Music follows here.

    a2\f a8-. gs8-. g8-. fs8-. |
    f2 f8-. fs-. g-. gs-. |
    a2 a8-. gs8-. g8-. fs8-. |
    f2 f8-. fs-. g-. gs-. |
    a1~\> |
    a1\! |
    R1 |
    R1 |

    f8 c d e f c d e |
    f8 c d e f e d c |
    a8 e fs gs a e fs gs |
    a1


    \bar "||" |
    \mark \default
}


ClarinetII = \relative c'' {
    \global
    % Music follows here.

    e2\f e8-. ef-. d-. df-. |
    c2 c8-. df-. d-. ef-. |
    e2 e8-. ef-. d-. df-. |
    c2 c8-. df-. d-. ef-. |
    a,8 e g b a c b g |
    a8 e' f d e c d b |
    a8 e g b a c b g |
    a8 e' f d e c d b |


}
 

ClarinetIII = \relative c'' {
    \global
    % Music follows here.

    c2\f c8-. b-. bf-. a-. |
    a2 a8-. a-. bf-. b-. |
    c2 c8-. b-. bf-. a-. |
    a2 a8-. a-. bf-. b-. |

    a,1~\> |
    a1\! |
    R1 |
    r4 e'4\f a4 e4 |
    \bar "||" | \mark \default
    g4. f8 f2 |
    r4 d4 g4 d4 |
    e1 |
    r4 e4 a4 e4 |
    g4. f8 f2 |
    r4 d4 g4 d4 |
    e1 |

    r4 e,4 a c |
    e4. d8 d2 |
    r4 d4 g d |
    e1 |
    r2 r4 e4 |
    a1~ |
    a8 g f e d c b a |
    gs1 |
    r4 f4 f4 r8 e8 |
    e1 

}


BassClarinet = \relative c' {
    \global
    % Music follows here.

    a2\f a8-. gs8-. g8-. fs8-. |
    f2 f8-. fs-. g-. gs-. |
    a2 a8-. gs8-. g8-. fs8-. |
    f2 f8-. fs-. g-. gs-. |

    a1~\> |
    a1\! |
    R1 |
    r4 e'4\f a4 e4 |
    \bar "||" | \mark \default
    g4. f8 f2 |
    r4 d4 g4 d4 |
    e1 |
    r4 e4 a4 e4 |
    g4. f8 f2 |
    r4 d4 g4 d4 |
    e1 |

    r4 e,4 a c |
    e4. d8 d2 |
    r4 d4 g d |
    e1 |
    r2 r4 e4 |
    a1~ |
    a8 g f e d c b a |
    gs1 |
    r4 f4 f4 r8 e8 |
    e1 


}


ClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  midiInstrument = "clarinet"
} \ClarinetI

ClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  midiInstrument = "clarinet"
} \ClarinetII

ClarinetIIIPart = \new Staff \with {
  instrumentName = "Clarinet III"
  midiInstrument = "clarinet"
} \ClarinetIII

BassClarinetPart = \new Staff \with {
  instrumentName = "Bass clarinet"
  midiInstrument = "clarinet"
} \BassClarinet

\bookpart { 
    \header {
      title = "Phantom of the Opera"
      instrument = "for Clarinet Quartet"
      composer = "Andrew Lloyd Webber"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    
    \score {
      <<
        \ClarinetIPart
        \ClarinetIIPart
        \ClarinetIIIPart
        \BassClarinetPart
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
      title = "Phantom of the Opera"
      instrument = "Bb Clarinet 1"
      composer = "Andrew Lloyd Webber"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \ClarinetIPart }
}


\bookpart {
   \header {
      title = "Phantom of the Opera"
      instrument = "Bb Clarinet 2"
      composer = "Gershwin / Hammerstein"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \ClarinetIIPart }
}

\bookpart {
   \header {
      title = "Phantom of the Opera"
      instrument = "Bb Clarinet 3"
      composer = "Andrew Lloyd Webber"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \ClarinetIIIPart }
}

\bookpart {
   \header {
      title = "Phantom of the Opera"
      instrument = "Bass Clarinet"
      composer = "Andrew Lloyd Webber"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \BassClarinetPart }
}
