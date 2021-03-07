\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { sub \dynamic mp }
rall = \markup { \italic rall. }
solo = \markup \italic { solo ad lib }


common = {
  \time 5/4
  \tempo "Driving Beat" 4=180
  \clef treble \key g \minor
  % \override Score.BarNumber #'break-visibility = #all-visible
  % \override Score.BarNumber #'self-alignment-X = #0
  % \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #1
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s4*5*3 \mark \markup { \musicglyph #"scripts.segno" } 
    s4*5*2 \bar "||" \mark \default
    s4*5*6 \bar "||" \mark \default
    s4*5*4 \bar "||" \mark \default
    s4*5*7 \mark \markup { to \musicglyph #"scripts.coda" coda } \bar "||"
    s4*5*4 \bar "||" \mark \default
    s4*5*13 \bar "|." \break
    \mark \markup { \musicglyph #"scripts.coda" Coda } s4*5
    s4*5*3 \bar "|."
}

\parallelMusic #'(clarA clarB clarC clarBass) {

    d1\trill\f ds16( e f fs |
    R4*5 |
    R4*5 |
    R4*5 |

    g4)-> r1 |
    R4*5 |
    R4*5 |
    g4\f r8 g4 r8 bf4-> c4-> |

    R4*5 |
    R4*5 |
    R4*5 |
    g4 r8 g4 r8 f4-> fs->  |

    g,4 r8 g4 r8 bf4-> c4-> |
    R4*5 |
    g4 r8 g4 r8 bf4-> c4-> |
    g4 r8 g4 r8 bf4-> c4-> |

    g4 r8 g4 r8 f4-> fs->  |
    R4*5 |
    g4 r8 g4 r8 f4-> fs->  |
    g4 r8 g4 r8 f4-> fs->  |

    % [A] bar 5 Main theme.

    R4*5 |
    bf8 g d1 |
    R4*5 |
    g4\mp r8 g4 r8 bf4 c4 |

    R4*5 |
    bf'8 g cs,1 |
    R4*5 |
    g4 r8 g4 r8 f4 fs4 |

    R4*5 |
    bf'8 g c,1 |
    R4*5 |
    g4 r8 g4 r8 bf4 c4 |

    R4*5 |
    bf8 c8 r1 |
    R4*5 |
    g4 r8 g4 r8 f4 fs4 |

    g4 r8 g4 r8 bf4 c4 |
    d4 r8 d4 r8 f4 g4 |
    bf4 r8 bf4 r8 df4 ef4 |
    g4 r8 g4 r8 bf4-> c4-> |

    g4 r8 g4 r8 f4 fs4 |
    d4 r8 d4 r8 c4 cs4 |
    bf4 r8 bf4 r8 af4 a4 |
    g4 r8 g4 r8 f4-> fs4-> |


    % [B] bar 11 second theme up

    g4 bf8 g8 fs'2. |
    d4 r1 |
    bf4 r1 |
    g4 r8 g4 r8 bf4 c4 |

    r4 bf,8 g8 f'2. |
    R4*5 |
    R4*5 |
    g4 r8 g4 r8 f4 fs4 |

    r4 bf,8 g8 e'2. | 
    R4*5 |
    R4*5 |
    g4 r8 g4 r8 bf4 c4 |

    ef?8 d8 r1 |
    g4 r8 g4 r8 bf4 b4 |
    g4 r8 g4 r8 bf4 b4 |
    g4 r8 g4 r8 bf4 b4 |

    % [C] bar 15 main theme modulated

    ef8 c g1 |
    ef8 c g1 |
    c4. g4. fs'4 g,4 |
    c4 r8 c4 r8 fs4 c4 |

    ef'8 c fs,1 |
    ef'8 c fs,1 |
    c4. g4. f'4 g,4 |
    c4 r8 c4 r8 f?4 c4 |

    ef'8 c f,1 |
    ef'8 c f,1 |
    c4. g4. ef'?4 g,4 |
    c4 r8 c4 r8 ef4 c4 |

    ef8 f r1 |
    ef8 f r1 |
    c4 r8 c4 r8 ef4 f4 |
    c4 r8 c4 r8 ef4 f4 |

    % bar 19 back down

    bf8 g8 fs'1 |
    d'4. cs4. g4 d'4 |
    bf8 g8 fs'1 |
    g,4 r8 g4 r8 bf4 c4 |

    bf,8 g8 f'1  |
    cs4. g4. d'4 cs4 |
    bf,8 g8 f'1  |
    g4 r8 g4 r8 f4 fs4 |

    bf,8 g8 e'1 |
    g4. d'4. cs4 g4 |
    bf,8 g8 e'1 |
    g4 r8 g4 r8 bf4 c4 |

    % TO CODA

    ef?8 d8 r1 |
    a4 r8 a4 r8 bf4 c4 |
    g,4 r8 g4 r8 a4 bf4 |
    d4 r8 d4 r8 ef4 f4 |

    R4*5 |
    a4 r1 |
    g4 r1 |
    d4 r8 c4 r8 bf4 a4 |

    R4*5 |
    R4*5 |
    g4 r8 g4 r8 bf4-> c4-> |
    g4 r8 g4 r8 bf4-> c4-> |

    R4*5 |
    R4*5 |
    g4 r8 g4 r8 f4-> fs->  |
    g4 r8 g4 r8 f4-> fs->  |

    % [D] bar 25 

    % 1
    g,2. r8 bf,8 d8 g8 |
    g'2. r8 bf,8 d8 g8 |
    g,4 a bf c d |
    g4 a bf c d |

    fs2. r8 bf,8 d8 f8 |
    fs2. r8 bf,8 d8 f8 |
    g,4 a bf c d |
    g,4 a bf c d |

    e2. r8 e f e | 
    e2. r8 e f e | 
    g,4 a bf c d |
    g,4 a bf c d |

    ef?8 d8 r1 |
    ef?8 d8 r1 |
    g4 r8 g4 r8 bf4-> b4-> |
    g,4 r8 g4 r8 bf4-> b4-> |

    % 2
    c''2. r8 d8 c g |
    c,4 d ef f g |
    c2. r8 d8 c g |
    c4 d ef f g |

    b2. r8 b bf c |
    c,4 d ef f g |
    b2. r8 b bf c |
    c,4 d ef f g |

    a2. r8 a bf a |
    c,4 d ef f g |
    a2. r8 a bf a |
    c,4 d ef f g |

    af8 g8 r1 |
    c,4 r8 c4 r8 ef4 f4 |
    af8 g8 r1 |
    c,4 r8 c4 r8 ef4 f4 |

    % 3
    g,4 a bf c d |
    g2. r8 bf,8 d8 g8 |
    g'2. r8 bf,8 d8 g8 |
    g4 a bf c d |

    g,4 a bf c d |
    fs2. r8 bf,8 d8 f8 |
    fs2. r8 bf,8 d8 f8 |
    g,4 a bf c d |

    g,4 a bf c d |
    e2. r8 e f e | 
    e2. r8 e f e | 
    g,4 a bf c d |


    d4 r8 d4 r8 ef4-> f-> |
    e8 d8 r1 |
    d4 r8 d4 r8 ef4-> f-> |
    d4 r8 d4 r8 ef4-> f-> |

    d4 r1 ^ \markup { \right-align D.S. Al Coda } \break |
    d4 r1 ^ \markup { \right-align D.S. Al Coda } \break |
    d4 r1 ^ \markup { \right-align D.S. Al Coda } \break |
    d4 r1 ^ \markup { \right-align D.S. Al Coda } \break |

    % CODA

    ef?8 d8 r1 |
    a'4 r8 a4 r8 bf4 c4 |
    g,4 r8 g4 r8 a4 bf4 |
    d,4 r8 d4 r8 ef4 f4 |

    d4 r8 d4 r8 ef4 f4 |
    a4 r8 a4 r8 bf4 c4 |
    g4 r8 g4 r8 a4 bf4 |
    d4 r8 d4 r8 ef4 f4 |
    
    d4 r1 |
    a4 r1 |
    g4 r1 |
    d4 r1 |

    f8 g8~g1\fermata |
    d8 ef8~ef1\fermata |
    a8 bf8~bf1\fermata |
    d8 cs8~cs1\fermata |
}


clari   = \relative c'' \clarA
clarii  = \relative c'' \clarB
clariii = \relative c' \clarC 
clarb   = \relative c' \clarBass 


xtitle = "Mission: Impossible Theme"
xcomposer = "Lalo Schifrin"
xarranger = "Arr Roberts"

\include "renderQuartet.ly"
