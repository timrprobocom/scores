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
  \time 4/4
  \tempo "Allegretto" 4=160
  \clef treble \key c \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" } 
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s1*1 \bar "||" 
    s1*17 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*10 \bar "||" \mark \default
    s1*24 \bar "||" \mark \default
    s1*11 \bar "|."
}

\parallelMusic  #'(clari clarii clariii clarb) {

    r2 r4 r8 g,,8 |
    R1 |
    R1 |
    R1 |

    g'4 g8( a) g4 e4 | 
    R1 |
    R1 |
    c2 g'2 | 

    g4 g8( a) g4 e4 |
    R1 |
    R1 |
    b,2 g'2 |

    g4 g8( a) g4 e4  |
    R1 |
    R1 |
    bf,2 g'2 |

    c2( f2) |
    R1 |
    R1 |
    a,2 af2 |

    r4 c8( d) e4 f4 |
    R1 |
    R1 |
    g1 |

    e8 d d cs d4 d4 |
    R1 |
    R1 |
    b2 g2 |

    r4 b8 c!8 b4 d4 | 
    R1 |
    R1 |
    d'2 g,2 |

    c1 |
    R1 |
    r8 g,( c e g c e g) |
    c1 |

    % Repeat that.

    g'4 g8( a) g4 e4 | 
    R1 |
    R1 |
    c2 g'2 | 

    g4 g8( a) g4 e4 |
    R1 |
    R1 |
    b,2 g'2 |

    g4 g8( a) g4 e4  |
    R1 |
    R1 |
    bf,2 g'2 |

    c2( f2) |
    R1 |
    R1 |
    a,2 af2 |

    r4 c8( d) e4 f4 |
    R1 |
    R1 |
    g1 |

    e8 d d cs d4 d4 |
    R1 |
    R1 |
    b2 g2 |

    r4 b8 c!8 b4 d4 | 
    R1 |
    R1 |
    d'2 g,2 |

    c1 |
    R1 |
    R1 |
    c1 |


  
    % Double bar.

    r2 g'4. e8 |
    r2 g4. e8 |
    R1 |
    R1 |

    % Main theme [A]

    g4. f8 b,2~ |
    g4. f8 b,2~ |
    R1 |
    R1 |

    b2 b'2 |
    b2 g'2 |
    R1 |
    R1 |

    a2 a2~ |
    f2 f2~ |
    R1 |
    R1 |

    a2 a4. g8 |
    f2 a4. g8 |
    R1 |
    R1 |

    a4. g8 c,2~ |
    R1 |
    R1 |
    R1 |

    c2 \times 2/3 { e4 g e' } |
    R1 |
    R1 |
    R1 |

    d1~ |
    R1 |
    R1 |
    R1 |

    d2 c4. a8 |
    R1 |
    R1 |
    R1 |

    % [B] bar 27.  Others find peace of mind 

    b2 a4. e'8 |
    R1 |
    R1 |
    R1 |

    g,2 f4. c'8 |
    R1 |
    R1 |
    R1 |

    e,2 e2 |
    R1 |
    R1 |
    R1 |

    r2 d4. a'8 |
    R1 |
    R1 |
    R1 |

    g2 c,4. b'8 |
    R1 |
    R1 |
    R1 |

    a2 d,4. c'8 |
    R1 |
    R1 |
    R1 |

    b1~ |
    R1 |
    R1 |
    R1 |

    b4 r4 g4. e8 |
    R1 |
    R1 |
    R1 |

    % [C] bar 35.  Repeat.

    g4. f8 b,2~ |
    R1 |
    R1 |
    R1 |

    b2 b'2 |
    R1 |
    R1 |
    R1 |

    a2 a2~ |
    R1 |
    R1 |
    R1 |

    a2 a4. g8 |
    R1 |
    R1 |
    R1 |

    a4. g8 c,2~ |
    R1 |
    R1 |
    R1 |

    c2 \times 2/3 { e4 g e' } |
    R1 |
    R1 |
    R1 |

    d1~ |
    R1 |
    R1 |
    R1 |

    d2 d4. c8 |
    R1 |
    R1 |
    R1 |

    d2 d4. c8 |
    R1 |
    R1 |
    R1 |

    ef2 d4. c8 |
    R1 |
    R1 |
    R1 |

    e1~ |
    R1 |
    R1 |
    R1 |

    e4 r4 g,4. e8 |
    R1 |
    R1 |
    R1 |

    g4. f8 b,2~ |
    R1 |
    R1 |
    R1 |

    b2 d'2 |
    R1 |
    R1 |
    R1 |

    c1 |
    R1 |
    R1 |
    R1 |
 



    e1\fermata \bar "|." |
    g1\fermata \bar "|." |
    c1\fermata \bar "|." |
    c1\fermata \bar "|." |

}


xtitle = "Only Make Believe"
xinstrument = "from Showboat"
xcomposer = "Rodgers & Kern"
xarranger = "Arr Roberts"


\include "renderQuartet.ly"
