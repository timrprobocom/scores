\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { sub \dynamic mp }
rall = \markup { \italic rall... }
ritard = \markup { \italic { molto rit. } }
atempo = \markup { \italic { a tempo } }


common = {
  \numericTimeSignature 
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" } 
  \time 4/4
  \tempo "Jazzy" 4=120
  \clef treble 
  \key c \major
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "|."
}

\parallelMusic  #'(clari clarii clariii clarb) {

    c4\f c c c |
    g'4\f g g g |
    e4\f e e e |
    c4\f c c c |

    c4 c c c |
    g4 g g g |
    e4 e e e |
    c4 c c8 g a g |

    e,4\mf e e e |
    c,4\mf c c c |
    g,4\mf g g g |
    c4\mf c c c |

    e4 e e e |
    c4 c c c |
    g4 g g g |
    c4 c c8 g a g |

    g,4\mp g g g |
    e,4\mp e e e |
    c,4\mp c c c |
    c4\mp c c c |

    g4 g g g |
    e4 e e e |
    c4 c c c |
    c4 c c8 g a g |

    g4 g g g |
    e4 e e e |
    c4 c c c |
    c4 c c c |

    g4 g g g |
    e4 e e e |
    c4 c c c |
    c4 c c8 g a g |
 
    % Come on babe why don't we paint the town

    e8 e r c r c d c |
    g4 g g g |
    e4 e e e |
    c4 c c c |

    e8 e r c r2 |
    g4 g g g |
    e4 e e8 g, a g |
    c4 c c8 g a g |
    
    r2 r4 r8 ef8 |
    g8 r g4-> g-> r4 |
    c8 r e4-> e-> r4 |
    c8 r g4-> g-> r4 |

    e!8 g r g r g a g |
    r4 r8 b8~b2 |
    r4 r8 ds8~ds2 |
    r4 r8 g8~g8 g a b |

    % I'm gonna rouge my knees and roll my stockings down

    e8 e r c r c d c |
    g4 g g g |
    e4 e e e |
    c4 c c c |

    e8 e r c r2 |
    g4 g g g |
    e4 e e8 g, a g |
    c4 c c8 g a g |
    
    r2 r4 r8 ef8 |
    g8 r g4-> g-> r4 |
    c8 r e4-> e-> r4 |
    c8 r g4-> g-> r4 |

    e!8 g r g4 g8 a g |
    r2 c8 c b a |
    r2 r2 |
    r2 c8 c b a |

    % Park the car, I know a whoopee spot

    b4 b8 g8 r g a g |
    g4 b b b |
    d4 d d d |
    g4 r d' r |

    b8 b4 g8 r g a b |
    b4 b b b |
    d4 d d d |
    g4 r d r |

    c8 c4 af8 r af bf af |
    c4 c c c |
    ef4 ef ef ef |
    af4 r ef' r |

    c8 c4 af8 r c,8 d ef |
    c4 c c f, |
    ef4 ef ef f |
    af4 r ef r |

    % Noisy hall where there's a nightly brawl

    e8 e4 c8 r8 c d ef |
    g4 g g g |
    e4 e e e |
    c4 c b b |

    e8 e4 g8 r8 g a g |
    g4 g g g |
    d4 d e e |
    bf4 bf a a |

    ef4 r4 r2 |
    ef4 r4 r2 |
    r2 c4 r4 |
    r2 af4 r4 |

    d4 r4 r2 |
    d4 r4 r2 |
    r2 d4 r4 |
    r2 g4 r4 |

    % Jazz -- end swing.

    c1 |
    r4 c'4~c8 g a g |
    r4 e4~e2 |
    c4 r g r |

    R1 |
    a8 c a g a g e ef |
    e8 g e e e e c c |
    c4 r g r |

    R1 |
    e8 g r ef e g r ef |
    R1 |
    c4 r g r |

    R1 |
    e8 g r g r g a g |
    R1 |
    c4 r g r |

    e1\fermata \bar "|." |
    g1\fermata \bar "|." |
    c1\fermata \bar "|." |
    c1\fermata \bar "|." |

}


clari =   \transpose bf bf { \common  \relative c''' \clari }
clarii =  \transpose bf bf { \common  \relative c''  \clarii }
clariii = \transpose bf bf { \common  \relative c''  \clariii }
clarb =   \transpose bf bf { \common  \relative c'   \clarb }

xtitle = "All That Jazz"
xinstrument = "from Chicago"
xcomposer = "Kander & Ebb"
xarranger = "Arr Roberts"


\include "renderQuartet.ly"
