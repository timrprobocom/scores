\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Polka" 4=120
  \set Score.markFormatter = #format-mark-box-alphabet
}

% Opening chords
%   I
%   c d f gs
%   c d f a
%   d g g b
%   I

scoreAClarinetI = \relative c'' {
    \global
    \transposition c'

    g4 gs4 a b | 
    c4 c8. c16 c8 r8 r16 e f fs \bar "||" |

    % First theme
    g8-. g-. g-. g-. g-. g-. g-. f-. |
    \times 2/3 { f16( g f } e8) e e e4 r16 c16( e g) |
    \times 2/3 { e16( g e } d8) d d d4 r16 e16( f g) |
    \times 2/3 { f16( g f } e8) e e e4 r16 e16( f fs) |

    g8-. g-. g-. g-. g-. g-. g-. f-. |
    \times 2/3 { f16( g f } e8) e e e4 r16 c16( e g) |
    \times 2/3 { e16( g e } d8) d d d4 r16 b16( d f) |
    g16( f d b)  g8-. b8-. c8-. e8-. c4 \bar "||" |

    % First chorus


}


scoreAClarinetII = \relative c' {
    \global
    \transposition c'

    e4 c4 f4 g4 |
    e4 g8. g16 g8 r8 r4 \bar "||" |

    % First theme
    e'8-. e-. e-. e-. e-. e-. e-. d-. |
    \times 2/3 { d16( e d } c8) c c c4 r16 c16( d e) |
    \times 2/3 { c16( d c } b8) b b b4 r16 c16( d e) |
    \times 2/3 { d16( e d } c8) c c c4 r16 c16( d ds) |

    e8-. e-. e-. e-. e-. e-. e-. d-. |
    \times 2/3 { d16( e d } c8) c c c4 r16 c16( d e) |
    \times 2/3 { c16( d c } b8) b b b4 r16 g16( b d ) |
    g16( f d b)  g8-. b8-. c8-. e8-. c4 \bar "||" |

    % Second theme.

    c2 b8 c d c |
    f2 r8 f e d |
    c4 e4 c4 e4 |
    d4 c4 r8 a bf b |

    c2 b8 c d c |
    f2 r8 f e d |
    c4 e4 a4 g4 |
    f4 f8. f16 f4 r4 |

}



scoreAClarinetIII = \relative c' {
    \global
    \transposition c'

    e4 e4 f4 f4 | 
    g4 e8. e16 e8 r8 r4 \bar "||" |

    % First theme.

    c8 g' r g c, g' r g |
    c,8 g' r g c, g' r g |
    d8 g r g g, g' r g |
    c,8 g' r g c, g' r g |

     \bar "|."
}



scoreABassClarinet = \relative c' {
    \global
    \transposition c'
    
    c4 c4 d4 d4 |
    c4 c8. c16 c8 r8 r4 \bar "||"

    % First theme.

    c8 r g r c r g r |
    c8 r g r c r e r |
    d8 r g, r b r g r |
    c8 r g r c r g r |


    \bar "|."
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
      title = "Fiddlestepper's Polka"
      instrument = "for Clarinet Quartet"
      composer = "Unknown"
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
      title = "Fiddlestepper's Polka"
      instrument = "Bb Clarinet 1"
      composer = "Unknown"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIPart }
}


\bookpart {
   \header {
      title = "Fiddlestepper's Polka"
      instrument = "Bb Clarinet 2"
      composer = "Unknown"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIIPart }
}

\bookpart {
   \header {
      title = "Fiddlestepper's Polka"
      instrument = "Bb Clarinet 3"
      composer = "Unknown"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIIIPart }
}

\bookpart {
   \header {
      title = "Fiddlestepper's Polka"
      instrument = "Bass Clarinet"
      composer = "Unknown"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreABassClarinetPart }
}
