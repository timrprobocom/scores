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
  \time 4/4
  \tempo "Rhythmic" 4=118
  \clef treble \key f \major
  % \override Score.BarNumber #'break-visibility = #all-visible
  % \override Score.BarNumber #'self-alignment-X = #0
  % \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \compressFullBarRests
  \override MultiMeasureRest #'expand-limit = #1
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*16 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*9 \bar "|."
}

\parallelMusic #'(soprano alto tenor) {

    r4 r8 c8 f g16 a~a c,8 ef16~ |
    r4 r8 c8 f g16 a~a c,8 ef16~ |
    r4 r8 c8 f, g16 a~a a8 g16~ |

    ef2 r8 r16 c8 d16 |
    ef2 r8 r16 c8 d16 |
    g2 r2 |

    ef4 d8.( c16) c4 r4 |
    ef4 d8.( c16) c4 r4 |
    r2 r4 r8 bf8 |

    R1 |
    R1 |
    df4 c4 bf4 c8. a16~ |

    % Page 3

    r4 r8 c16 c f8 g16 a~a c,8 ef16~ |
    r4 r8 c16 c f8 g16 a~a c,8 ef16~ |
    r4 r8 c16 c f, g16 a~a a8 g16~ |

    ef2 r8 r8 c16 d16 |
    ef2 r8 r8 c16 d16 |
    g2 r2 |
    
    ef4 d c r8 bf8 |
    ef4 d c r8 bf8 |
    r2 r4 r8 bf8 |

    df4 ef4 f4 g8. a16 |
    df4 ef4 d4 d8. f16 |
    bf4 c bf bf8. a16 |

    % Bar 12

    r8 a16 a a4 a16 a16~a16 g8 f16~f8 d16( c16) |
    r8 a16 a a4 a16 a16~a16 g8 f16~f8 d16( c16) |
    r8 a16 a a4 a16 a16~a16 g8 a16~a8 a8 |

    r8 a16 a a4 a16 a16~a16 g8 f16~f8 d16( c16) |
    r8 a16 a a4 a16 a16~a16 g8 f16~f8 d16( c16) |
    r8 a16 a a4 a16 a16~a16 g8 a16~a8 a8 |

    % Page 4

    r8. c16  f8 f8 f8 e16 e r8 d8 |
    r8. c16  f8 f8 f8 e16 e r8 d8 |
    r8. a16 bf8 bf8 bf8 c16 c r8 bf8 |

    d8 c16 c16~c8 a8 f8.-> e16~->e8 d8-> |
    d8 c16 c16~c8 a8 d8.-> c16~->c8 a8-> |
    bf8 c16 c16~c8 a8 a8.-> g16~->g8 f-> |

    r8 a16 a a4 a16 a16 a16 g8 f16~f8 d16( c16) |
    r8 a16 a a4 a16 a16 a16 g8 f16~f8 d16( c16) |
    r8 a16 a a4 a16 a16 a16 g8 a16~a8 a8 |

    r8 a16 a a4 a16 bf16~bf8 a16 g16~g16( f8. |
    r8 a16 a a4 a16 bf16~bf8 a16 g16~g16( f8. |
    r8 a16 a a4 a16 bf16~bf8 c16 bf16~bf16 a8. |

    r16 af8 f16  af8 r16 f16  af8 f16 af16 r8. f16 |
    r16 af8 f16  af8 r16 f16  af8 f16 af16 r8. f16 |
    r16 af8 f16  af8 r16 f16  af8 f16 af16 r8. f16 |

    af16 af8 af16~af16 f16 f8  r8 f g g(|
    af16 af8 af16~af16 f16 f8  r8 f g g(|
    af16 af8 af16~af16 f16 f8  r2 |

    % Page 5.

    a8) r4 r8 f8 a a( |
    a8) r4 r8 f8 a a( |
    f8 f g g( a) r r4 |

    bf4 r4 r8 f g g( |
    bf4 r4 r8 f g g( |
    r8 g a a( bf) a bf bf( |

    a8 a4 a8  r8 f8 c a'~ |
    f8 f4 f8 r8 c8 c f~ |
    c8 c4 c8 r8  a a c~ |

    a8 a4 a8 r8 f g g( |
    f8 f4 f8 r8 f g g( |
    c8 c4 c8 r2 |

    a4) r4 r8 g a a( |
    a4) r4 r8 g a a( |
    r8 f g g( a) r8 r4 |

    bf4) r r8 f g g( |
    bf4) r r8 f g g( |
    r8 g a a( bf) a bf bf( |

    a8 a4 a8 r8 f c a~-> |
    f8 f4 f8 r8 c c df~-> |
    c8 c4 c8 r8 a a bf~-> |

    a8 a4-> a16->( g16~g4) r16 f g a~ |
    df8 df4-> df8~df4      r16 df df c~ |
    bf8 bf4-> bf8~->bfr    r16 bf bf c~ |

    % Page 6 bar 28



}
