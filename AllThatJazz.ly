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
  \tempo "Jazzy, swing" 4=120
  \clef treble 
  \key c \major
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default \tempo "Straight 8ths"
    s1*8 \bar "||" \mark \default
    s1*10 \bar "||" \mark \default \key d \major
    s1*22 \bar "|."
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
 
    % [A] Bar 9 Come on babe why don't we paint the town

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

    % Bar 17 Park the car, I know a whoopee spot

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

    e8 e4 g8 r4 a4 |
    g4 g g g |
    d4 d e e |
    bf4 bf a a |

    ef4 r4 r2 |
    r2 ef4-> r4 |
    r2 c4-> r4 |
    r2 af4-> r4 |

    d4 r4 r2 |
    r2 d4-> r4 |
    r2 b4-> r4 |
    r2 g4-> r4 |

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

    R1 |
    r4 c4~c8 g a g |
    r4 e4~e2 |
    c4 r g r |

    R1 |
    a8 c a g a g e ef |
    e8 g e e e e c c |
    c4 r g r |

    R1 |
    e8 g e ef e g e ef |
    R1 |
    c4 r g r |

    R1 |
    e8 g r g~g2 |
    R1 |
    c4 r g r |

    R1 |
    R1 |
    r4 d'2.~ |
    R1 |

    R1 |
    R1 |
    d8 g, a g a g a g |
    R1 |

    R1 |
    R1 |
    r4 ef'2.~ |
    R1 |

    R1 |
    R1 |
    ef8 af, bf af bf af bf af |
    R1 |

    c'8 ef, e a g e c fs, |
    R1 |
    R1 |
    R1 |

    g8 e' d c d c a c |
    R1 |
    R1 |
    R1 |

    ef2 r2 |
    R1 |
    R1 |
    R1 |

    d2 r2 |
    R1 |
    R1 |
    R1 |

    c1 |
    r4 c4~c8 g a g |
    r4 c4~c8 g a g |
    c4 r g r |

    r4 cs' b a |
    cs4 cs b a |
    cs4 e d cs |
    a4 r d r |

    % [E] Big finish
    r4 d'2.~\f |
    fs8\f fs r d r d e d |
    fs8\f fs r d r d e d |
    d'4\f r a r |

    d8 a b a b a fs f |
    fs8 fs r d r d e f |
    fs8 fs r d r d e f |
    d,4 r4 a8 a b cs |

    fs8 a8 r f fs a r f |
    fs4 a,-> a-> r8 f' |
    d4 a-> a-> r8 f' |
    d4 fs-> fs-> r |


    fs8 a8 r a8 r2 |
    fs8 a8 r a8 r a b a |
    fs8 a8 r a8 r a b a |
    a,1-> |

    r4 d2.~\f |
    fs8\f fs r d r d e d |
    fs8\f fs r d r d e d |
    d'4\f r a r |

    d8 a b a b a fs f |
    fs8 fs r d r d e f |
    fs8 fs r d r d e f |
    d,4 r4 a8 a b cs |

    fs8 a8 r f fs a r f |
    fs4 a,-> a-> r8 f' |
    d4 a-> a-> r8 f' |
    d4 fs-> fs-> r |

    fs8 a8 r a8 r2 |
    fs8 a8 r a8 r a b a |
    fs8 a8 r a8 r a b a |
    a,1-> |

    r4 e2.~ |
    cs4 cs8 a r a b a |
    cs4 cs8 a r a b a |
    R1 |

    e8 a, b a b a b a |
    cs4 cs8 a r a b a |
    cs4 cs8 a r a b a |
    R1 |

    r4 f'2.~ |
    d8 d4 bf8 r bf c cs |
    R1 | R1 |

    f8 bf, c bf c bf c bf |
    d8 d4 bf8 r8 d, e f |
    R1 | R1 |

    d8 d4 a8 r a b a |
    fs8 fs4 d8 r d e f |
    R1 | R1 |

    d8 d8 r8 fs8~fs4 b,4 |
    fs8 fs4 a8 r a b a |
    R1 | 
    R1 |

    d1~ |
    r4 b8->( bf a) fs'->( e d) |
    R1 |
    R1 |

    d2 r2 |
    b8->( bf a) fs->( e d) b4 |
    R1 |
    R1 |
    
    d1~ |
    R1 |
    r8 a b c cs fs e d |
    R1 |

    d2 r2 |
    R1 | 
    c8 cs r a8~a2 |
    R1 |

    f4~ \times 2/3 { f8 e ef } d2 |
    r8 d' e f fs d e f |
    R1 |
    R1 |

    d1 |
    fs!8 f fs d r d e f |
    R1 |
    R1 |

    R1 |
    fs8 b( a fs d) a( b d) |
    R1 |
    R1 |
    
    r4 fs, d r4 |
    r4 a d d, |
    R1 |
    R1

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
