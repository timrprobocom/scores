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
  \time 12/8
  \tempo "Pop Ballad" 4.=80
  \clef treble \key c \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" } 
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s1.*9 \bar "||" \mark \default
    s1.*8 \bar "||" \mark \default
    s1.*8 \bar "||" \mark \default
    s1.*8 \bar "||" \mark \default
    s1.*8 \bar "||" \mark \default
    s1.*8 \bar "|."
}

\parallelMusic  #'(clari clarii clariii) {

    R1. |
    r2. r4. g,8 a b |
    c,8 e g c g e c e g c g e |

    % Bar 2, first verse.

    c,2.~c4. e4 d8 |
    c8 r4 e4. g c |
    c8 e g c g e c e g c c, b |

    e8 d c~c4. r4. d4. |
    a,4. c e a |
    a8 c e a e c a c e a a, g |

    e8 d c~c4. r4. r8 c4 |
    f,4. a c f |
    f8 a c f c a f a c f c a |

    g4.~g8 b4  d4.~d8 e4 |
    g,4. b d g |
    g8 b d g d b g b d g d b |

    c4. r4. r4. d4. |
    c,4. e4. g c |
    c8 e g c g e c e g c c, b |

    c2. r4. e,4 f8 |
    a,4. c e a |
    a8 c e a e c a c e a e c |

    g1. |
    b,4. e g b|
    b8 e g b g e b e g b g e |

    R1. |
    g,4. b d g |
    b8 d g b g d b d g b g d |

   % Bar 10, second phrase.

    c,8 e g c g e c e g c c, b |
    c2.~c4. e4 d8 |
    c8 r4 e4. g c |

    a8 c e a e c a c e a a, g |
    e8 d c~c4. r4. d4. |
    a,4. c e a |

    f8 a c f c a f a c f c a |
    e8 d c~c4. r4. r8 c4 |
    f,4. a c f |

    g8 b d g d b g b d g d b |
    g4.~g8 b4  d4.~d8 e4 |
    g,4. b d g |

    c8 e g c g e c e g c c, b |
    c4. r4. r4. d4. |
    c,4. e4. g c |

    a8 c e a e c a c e a e c |
    c2. r4. c4. |
    a,4. c e a |

    b8 e g b g e b e g b g e |
    g'1. |
    b,4. e g b|

    b8 d g b g d b d g b g d |
    g,,4. b d g |
    r2. g8 a g f4 g8 |

   % [B] Bar 18, second verse.  C   G   A   E   F    G7   C C7

    c8 r4 e4. g c |
    c,8 e g c g e c e g c c, b |
    e'4.~e8 c4 g2. |

    g,4. b d g |
    g8 b d g d b g b d g d b |
    r2. r4. r8 d'4 |

    a,4. c e a |
    a8 c e a e c a c e a e c |
    c4.~c8 g4 e2. |

    b,4. e g b|
    b8 e g b g e b e g b g e |
    r2. r4. b'4. |

    f,4. a c f |
    f8 a c f c a f a c f c a |
    a4.~a8 f4 d2. |

    g4. b d g |
    g8 b d g d b g b d g d b |
    d'4. r8 e d e g4~g4. |

    c,,4. e4. g c |
    c,8 e g c g e c e g c g e |
    c,1. |

    c,4. e4. bf' c |
    c8 e g bf g e c e g bf g e |
    c1. |

    % [C] Bar 26 Lonely rivers run to the sea to the sea
    % F G F Eb F G C C

    f,4 g8~g a c b4. r8 g b |
    a8 a a a r4 b8 b b b r4 |
    f,8 f f f r4 g8 g g g r4 |

    a8 r4 r8 f a    g4.  r4. |
    a8 a a a r4 g8 g g g r4 |
    f8 f f f r4 ef8 ef ef ef r4 |

    f4 g8~g a c d4. r8 e d |
    a8 a a a r4 b8 b b b r4 |
    f8 f f f r4 g8 g g g r4 |
    
    e16 d e g a r r4. r2. |
    e8 e e e r4  e8 e e e r4 |
    c8 c c c r4  c8 c c c r4 |

    f,4 g8~g a c b4. r8 c b |
    a,8 a a a r4 b8 b b b r4 |
    f,8 f f f r4 g8 g g g r4 |

    a8 r4 r8 bf a    g4.  r4. |
    a8 a a a r4  g8 g g g r4 |
    f8 f f f r4  ef8 ef ef ef r4 |

    f4 g8~g a c d4. r8 e d |
    a8 a a a r4  b8 b b b r4 |
    f8 f f f r4  g8 g g g r4 |
    
    e8 d c~c4.~c2. |
    e8 e e e r4   e8 e e e r4 |
    c8 c c c r4   c8 c c c r4 |

    % [D] Bar 34 final verse


    e1\fermata \bar "|." |
    g1\fermata \bar "|." |
    c1\fermata \bar "|." |

}


xtitle = "Unchained Melody"
xinstrument = "Clarinet trio"
xcomposer = "Alex North"
xarranger = "Arr Roberts"


\include "renderTrio.ly"
