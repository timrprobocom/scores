%{
%}
\version "2.16.0"
\include "english.ly"


\paper {
    #(set-paper-size "letter" )
    ragged-last-bottom = ##t
    system-system-spacing #'basic-distance = #20
}

\header {
    title = "Blue Rondo A La Christmas"
    subtitle = ""
}

ritard = \markup { \italic { rit. } }
moltoRit = \markup { \italic { molto rit. } }
moltoRall = \markup { \italic { molto rall. } }
bendWithLip = \markup { \italic { bend with lip } }
accelPoco = \markup { \italic { accel poco a poco } }
rallPoco = \markup { \italic { rall poco a poco } }

prefix = {
  \time 9/8
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override BreathingSign #'text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
}

pianoRight = \relative c'' {
  \clef treble \key ef \major
  \prefix

  % 1
  g8->\f[(  ef8-.])
  g8->[(  ef8-.])
  g8->[(  ef8-.])
  d8->[( ef f-.]) \breathe |
  % 2
  g8->[(  ef8-.])
  g8->[(  ef8-.])
  g8->[(  ef8-.])
  af8->[( g f-.]) \breathe |

  \repeat volta 3
  {
    % 1st section

    r8\mf <d ef g>8->
    r8 <df ef g>8->
    r8 <c ef g>8->
    <af bf d f>4.-> |

    r8 <d ef g>8
    r8 <df ef g>8
    r8 <c ef g>8
    <c ef f af>4. |

    r8 <d ef g>8
    r8 <df ef g>8
    r8 <c ef g>8
    <af bf d f>4. |

    <g bf ef>4.
    <af c f>4.
    <bf d ef g>4. |


    r8 <d ef g>8
    r8 <df ef g>8
    r8 <c ef g>8
    <af bf d f>4. |

    r8 <d ef g>8
    r8 <df ef g>8
    r8 <c ef g>8
    <c ef f af>4. |

    r8 <d ef g>8
    r8 <df ef g>8
    r8 <c ef g>8
    <af bf d f>4. |

    <g bf ef>4.
    <af c f>4.
    <bf d ef g>4.^"2x"\breathe |

    % 2nd section

    r8\f <d g bf>8
    r8 <d g bf>8
    r8 <d g bf>8
    << { fs8 g a } \\ <a, d>4. >> |

    r8 <d g bf>8
    r8 <d g bf>8
    r8 <d g bf>8
    << { c'8 bf a } \\ <ef g>4. >> |

    r8 <d g bf>8
    r8 <d g bf>8
    r8 <d g bf>8
    << { fs8 g a } \\ <a, d>4.  >> |

    <bf d g>4.
    <c ef a>4.
    <d g bf>4. 


    r8 <d g bf>8
    r8 <d g bf>8
    r8 <d g bf>8
    << { fs8 g a } \\ <a, d>4. >> |

    r8 <d g bf>8
    r8 <d g bf>8
    r8 <d g bf>8
    << { c'8 bf a } \\ <ef g>4. >> |

    r8 <d g bf>8
    r8 <d g bf>8
    r8 <d g bf>8
    << { fs8 g a } \\ <a, d>4.  >> |

    <bf d g>4.
    <c ef a>4.
    <d g bf>4. \breathe |
  }

  \set Score.currentBarNumber = #51
  \tempo "Much Slower"
  << { ef'4 d c } \\ <g bf>2. >>  <d af' bf>4. |
  << { ef4  d c } \\ <g bf>2. >>  <af bf d>4.\fermata |

  \time 6/8
  << { ef''4 d c } \\ <g bf>2. >>  |
  \time 8/8
  r2 <af, c ef>2\fermata |
  \time 9/8
  \tempo "A tempo"
  <g bf d ef>4.
  <af c f>4.
  <bf d g>4. |
  \time 5/8
  r8 <d f af c>-> <d f af c>-> r8 <d f af c>-> |
  r8 <f af b d>-> <f af b d>-> r8 <f af b d>-> |
  r8 <f af bf ef>-> <f af bf ef>-> r8 <f af bf ef>-> |
  r8 <f af bf ef>-> <f af bf ef>-> r8 <f af bf ef>-> |
  <ef g bf ef>-> r4 r4 \bar "|."
}

pianoLeft = \relative c {
  \clef bass \key ef \major
  \prefix

  <ef d'>4-.-> <ef df'>4-.-> <ef c'>4-.-> <ef b'>4-.-> r8 \breathe |
  <ef bf'>4-.-> <ef b'>4-.-> <ef c'>4-.-> <ef df'>4-.-> r8 \breathe |
  \repeat volta 3
  {
    <ef, ef'>4-> <ef ef'>4-> <ef ef'>4-> <ef ef'>4.-> |
    <ef ef'>4 <ef ef'>4 <ef ef'>4 <ef ef'>4. |
    <ef ef'>4 <ef ef'>4 <ef ef'>4 <ef ef'>4. |
    <ef ef'>4. <bf bf'>4. <ef ef'>4. |

    <ef ef'>4-> <ef ef'>4-> <ef ef'>4-> <ef ef'>4.-> |
    <ef ef'>4 <ef ef'>4 <ef ef'>4 <ef ef'>4. |
    <ef ef'>4 <ef ef'>4 <ef ef'>4 <ef ef'>4. |
    <ef ef'>4. <bf bf'>4. <ef ef'>4.^"2x"\breathe |
  
    <g g'>4 <g g'>4 <g g'>4 <fs fs'>4. |
    <g g'>4 <g g'>4 <g g'>4 <c, c'>4. |
    <g' g'>4 <g g'>4 <g g'>4 <fs fs'>4. |
    <g g'>4. <g g'>4. <g g'>4. |

    <g g'>4 <g g'>4 <g g'>4 <fs fs'>4. |
    <g g'>4 <g g'>4 <g g'>4 <c, c'>4. |
    <g' g'>4 <g g'>4 <g g'>4 <fs fs'>4. |
    <g g'>4. <g g'>4. <g g'>4.\breathe |
  }

  \set Score.currentBarNumber = #51
  ef8[ bf'] ef[ bf] ef[ bf] bf[ f' af] |
  ef,8[ bf'] ef[ bf] ef[ bf] f[ d' f]\fermata |
  \time 6/8
  ef,8[ bf'] ef[ bf] ef[ bf] |
  \time 8/8
  r2 <f f'>2\fermata |
  \time 9/8
  <ef ef'>4.->  <bf bf'>4.->  <ef ef'>4.-> |
  \time 5/8
  <f f'>4.-> <f f'>4-> |
  <bf, bf'!>4.-> <bf bf'>4-> |
  <ef ef'>4.-> <bf bf'>4-> |
  <ef ef'>4.-> <bf bf'>4-> |
  <ef ef'>8 r4 <ef ef'>4-> \bar "|."
}



\score {
  \new PianoStaff <<
    \new Staff = "upper" \pianoRight
    \new Staff = "lower" \pianoLeft
  >>
}
