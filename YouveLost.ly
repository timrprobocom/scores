\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { sub \dynamic mp }
rall = \markup { \italic rall... }
atempo = \markup { \italic { a tempo } }


common = {
  \time 4/4
  \tempo "Pop Ballad" 4=110
  \clef treble \key c \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" } 
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
}

\parallelMusic  #'(clari clarii clariii clarb) {

    R1 |
    R1 |
    c,4 r8 c8 c4 r4 |
    c4 r8 c8 c4 r4 |

    r2 r8 g,, c f | 
    R1 |
    c4 r8 c8 c4 r4 |
    c4 r8 c8 c4 r4 |

    e4 c8 bf8 r4 c8 f8 |
    R1 |
    f,4 r8 f8 f4 r4 |
    bf4 r8 bf8 bf4 r4 |

    e4 c8 c8 bf4 r8 f'8 | 
    R1 |
    f4 r8 f8 f4 r4 |
    bf4 r8 bf8 bf4 r4 |

    g8 ds8 e4 r2 |
    R1 |
    g4 r8 g8 g4 r4 |
    c4 r8 c8 c4 r4 |

    R1 |
    r2 r8 g,8 c8 c'8 |
    g4 r8 g8 g4 r4 |
    c4 r8 c8 c4 r4 |

    R1 |
    r8 bf8 a8 g8 r4 c,8 c'8 |
    f4 r8 f8 f4 r4 |
    bf4 r8 bf8 bf4 r4 |

    R1 |
    bf4 a8 a8 g8 r8 r8 f8 |
    f4 r8 f8 f4 r4 |
    bf4 r8 bf8 bf4 r4 |

    R1 |
    g8 ds8 e4 r4 r4 |
    g4 r8 g8 g4 r4 |
    c4 r8 c8 c4 r4 |

    % You're trying 

    R1 |
    R1 |
    g4 r8 g8 g8 g'8 a b |
    c4 r8 c8 c4 r4 |

    % Hard not to notice

    f4 r8 f8 f4 r4 |
    R1 |
    c4 b8 c b4 g4 |
    d4 r8 d8 d4 r4 |

    g4 r8 g8 g4 r4 |
    e4 g4 r2 |
    r2 r4 g4 |
    e4 r8 e8 e4 r4 |

    f4 r8 f8 f4 r4 |
    e4 d4 r2 |
    e'4 d4 r2 |
    a4 r8 a8 a4 r4 |

    % Baby you know it...

    \times 2/3 { g4 g4 g4 } g4 r4 |
    \times 2/3 { e4 d c } e4 d4 |
    \times 2/3 { e4 d c } e4 d4 |
    \times 2/3 { g4 g4 g4 } g8 g, a b |

    %  You've lost

    r4 c8 c8 r8 c8 r8 c8( |
    r4 e'8 e8 r8 e8 r8 e8( |
    g,4 r8 g8 g4 r4 |
    c1 |

    d4) a8 \grace { c8 } d8~d8 a8 a4 | 
    f4) c8 \grace { e8 } f8~f8 c8 c4 |
    a4 r8 a8 a4 r4 |
    d1 |

    r2 b8 a8 b4 |
    r2 d8 c8 d4 |
    b4 r8 b8 b4 r4 |
    g1 |

    c4 g8 \grace { b8 } c8~c8 a g4 |
    e4 c8 \grace { d8}  e8~e8 c c4 |
    g4 r8 g8 g4 r4 |
    c1 |

    r2 \times 2/3 { c4 b c } |
    r2 \times 2/3 { c4 b c } |
    R1 |
    R1 |

    f4 e8 d8~d8 c d c |
    a'4 g8 f8~f8 e f e |
    R1 |
    R1 |

    % Gone gone gone

    bf2 a2 |
    d2  c2 |
    R1 |
    r4 bf,4 r4 bf4 |

    g2 f8 g f d |
    bf2 bf2 |
    R1 |
    r4 bf4 r2 |

    e8 r8 r4 r2 |
    g8 r8 r4 r2 |
    c8 bf r g r f r e |
    c'8 bf r g r f r e |

    %%% Second verse

    r2 r8 g, c f | 
    R1 |
    r8 c bf2. |
    r8 c bf2. |

    e4 c8 bf8 r4 c8 f8 |
    R1 |
    f4 r8 f8 f4 r4 |
    bf4 r8 bf8 bf4 r4 |

    e4 c8 c8 bf4 r8 f'8 | 
    R1 |
    f4 r8 f8 f4 r4 |
    bf4 r8 bf8 bf4 r4 |

    g8 ds8 e4 r2 |
    R1 |
    g4 r8 g8 g4 r4 |
    c4 r8 c8 c4 r4 |

    R1 |
    r2 r8 g,8 c8 c'8 |
    g4 r8 g8 g4 r4 |
    c4 r8 c8 c4 r4 |

    R1 |
    r8 bf8 a8 g8 r4 c,8 c'8 |
    f4 r8 f8 f4 r4 |
    bf4 r8 bf8 bf4 r4 |

    R1 |
    bf4 a8 a8 g8 r8 r8 f8 |
    f4 r8 f8 f4 r4 |
    bf4 r8 bf8 bf4 r4 |

    R1 |
    g8 ds8 e4 r4 r4 |
    g4 r8 g8 g4 r4 |
    c4 r8 c8 c4 r4 |

    % You're trying 

    R1 |
    R1 |
    g4 r8 g8 g8 g'8 a b |
    c4 r8 c8 c4 r4 |

    % Hard not to notice

    f4 r8 f8 f4 r4 |
    R1 |
    c4 b8 c b4 g4 |
    d4 r8 d8 d4 r4 |

    g4 r8 g8 g4 r4 |
    e4 g4 r2 |
    r2 r4 g4 |
    e4 r8 e8 e4 r4 |

    f4 r8 f8 f4 r4 |
    e4 d4 r2 |
    e'4 d4 r2 |
    a4 r8 a8 a4 r4 |

    % Baby you know it...

    \times 2/3 { g4 g4 g4 } g4 r4 |
    \times 2/3 { e4 d c } e4 d4 |
    \times 2/3 { e4 d c } e4 d4 |
    \times 2/3 { g4 g4 g4 } g8 g, a b |

    %  You've lost

    r4 c8 c8 r8 c8 r8 c8( |
    r4 e'8 e8 r8 e8 r8 e8( |
    g,4 r8 g8 g4 r4 |
    c1 |

    d4) a8 \grace { c8 } d8~d8 a8 a4 | 
    f4) c8 \grace { e8 } f8~f8 c8 c4 |
    a4 r8 a8 a4 r4 |
    d1 |

    r2 b8 a8 b4 |
    r2 d8 c8 d4 |
    b4 r8 b8 b4 r4 |
    g1 |

    c4 g8 \grace { b8 } c8~c8 a g4 |
    e4 c8 \grace { d8}  e8~e8 c c4 |
    g4 r8 g8 g4 r4 |
    c1 |

    r2 \times 2/3 { c4 b c } |
    r2 \times 2/3 { c4 b c } |
    R1 |
    R1 |

    f4 e8 d8~d8 c d c |
    a'4 g8 f8~f8 e f e |
    R1 |
    R1 |

    % Gone gone gone

    bf2 a2 |
    d2  c2 |
    R1 |
    r4 bf,4 r4 bf4 |

    g2 f8 g f d |
    bf2 bf2 |
    R1 |
    r4 bf4 r2 |


    %%  Bridge

    R1 |
    R1 |
    c,4 r8 c8 f4 r8 f8 |
    c4 r8 c8 f4 r8 f8 |
    
    R1 |
    R1 |
    g4 r8 g8 f4 d4 |
    g4 r8 g8 f4 d4 |

    % Baby baby I get down on my knees for you

    r4 c'8 c8 b8 b8 r8 b8 |
    R1 |
    c4 r8 c8 f4 r8 f8 |
    c4 r8 c8 f4 r8 f8 |

    a8 a8 b8 a8 g8 r8 f8 g8~ |
    R1 |
    g4 r8 g8 f4 d4 |
    g4 r8 g8 f4 d4 |

    g2 r2 |
    R1 |
    c4 r8 c8 f4 r8 f8 |
    c4 r8 c8 f4 r8 f8 |
    
    R1 |
    R1 |
    g4 r8 g8 f4 d4 |
    g4 r8 g8 f4 d4 |

    % If you would only love me, like you used to do

    R1 |
    r8 e8 e8 e8 f8 f8 r4 |
    c4 r8 c8 f4 r8 f8 |
    c4 r8 c8 f4 r8 f8 |

    R1 |
    g8 g8 r4 r8 c,16 c d8 c8 |
    g4 r8 g8 f4 d4 |
    g4 r8 g8 f4 d4 |

    R1 |
    e16 d e g a8 r8 r2 |
    c4 r8 c8 f4 r8 f8 |
    c4 r8 c8 f4 r8 f8 |
    
    R1 |
    R1 |
    g4 r8 g8 f4 d4 |
    g4 r8 g8 f4 d4 |

    % We had a love, a love, a love you don't find every day

    r8 e' e e f r r f |
    r8 c, c c c r r c |
    c4 r8 c8 f4 r8 f8 |
    c4 r8 c8 f4 r8 f8 |

    d8 r r d d16 d d8 d8 d16 d |
    b8 r r b b16 b b8 b8 b16 b |
    g4 r8 g8 f4 d4 |
    g4 r8 g8 f4 d4 |

    e16( d e d c8) r8 r2 |
    c16( b c a g8) r8 r2 |
    c4 r8 c8 f4 r8 f8 |
    c4 r8 c8 f4 r8 f8 |
    
    r2. d4 |
    r2. b4 |
    g4 r8 g8 f4 d4 |
    g4 r8 g8 f4 d4 |

    % So don't, don't, don't, don't let it slip away.

    e8 r8 r4 f8 r8 r4 |
    c8 r8 r4 d8 r8 r4 |
    c4 r8 c8 f4 r8 f8 |
    c4 r8 c8 f4 r8 f8 |

    d8 r8 r4 d8 d d d |
    b8 r8 r4 b8 b b b |
    g4 r8 g8 f4 d4 |
    g4 r8 g8 f4 d4 |

    e16( d e d c8) r8 r2 |
    c16( b c a g8) r8 r2 |
    c4 r8 c8 f4 r8 f8 |
    c4 r8 c8 f4 r8 f8 |

    R1 |
    R1 |
    g4 r8 g8 f4 d4 |
    g4 r8 g8 f4 d4 |

    % Baby, etc.

    c1\fermata \bar "|." |
    g1\fermata \bar "|." |
    e1\fermata \bar "|." |
    c1\fermata \bar "|." |

}


xtitle = "You've Lost that Loving Feeling"
xinstrument = "Clarinet quartet"
xcomposer = "Phil Specter"
xarranger = "Arr Roberts"


\include "renderQuartet.ly"
