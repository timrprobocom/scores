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
  \time 6/8
  \tempo "March" 4.=120
  \clef treble \key c \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" } 
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s2.*4 \bar "||" \mark \default
    s2.*8 \bar "||" \mark \default
    s2.*8 \bar "||" \mark \default
    s2.*8 \bar "||" \mark \default
    s2.*8 \bar "||" \mark \default
    s2.*12 \bar "|."
}

\parallelMusic  #'(clari clarii clariii clarb) {
    
    g8\f fs a g r r |
    g'8\f fs a g r r |
    g8\f fs a g r r |
    g'8\f fs a g r r |

    g,8 fs a g r r |
    g,8 fs a g r r |
    g,8 fs a g r r |
    g,8 fs a g r r |

    g'8 r f d r b |
    b8 r bf b r bf |
    b8 r c d r e    |
    g8 r gs8 a r as |

    g8 r r r r g,\mp |
    b8 r r r4. |
    f8 r r f4.-> |
    g8 r r g4.-> |

    % First verse.  Bar 5, I
    
    c8 r d e f g |
    R2. |
    c8\mp r8 r8 r4. |
    c8\mp r8 r8 r4. |

    a8 r g e r c |
    R2. |
    c8 r8 r8 r4. |
    c8 r8 r8 r4. |

    e8 r ds e r r |
    r8 r8 r8 b4.( |
    r8 r8 r8 b4.( |
    c8 r8 r8 b4.( |

    e4. r8 r8 g,8 |
    a4. g4.) |
    a4. g4.) |
    a4. g4.) |

    % B bar 13
    
    c8 r d e f g |
    c,8 r8 r8 r4. |
    c8 r8 r8 r4. |
    c8 r8 r8 r4. |

    a8 r g e r c |
    c8 r8 r8 r4. |
    c8 r8 r8 r4. |
    c8 r8 r8 r4. |

    % III

    b8 r as b r r |
    gs'8 r r gs r r |
    b8 r r b r r |
    e8 r r e r r |

    % Vm7

    b4. r8 r8 g8 |
    f4 r8 g, r r |
    d4 r8 d  r r |
    g4 r8 g, r r |


    c8 r d e f g |
    c8 r8 r8 r4. |
    c8 r8 r8 r4. |
    c8 r8 r8 r4. |

    a8 r g e r c |
    c8 r8 r8 r4. |
    c8 r8 r8 r4. |
    c8 r8 r8 r4. |

    % III

    e8 r ds e r r |
    e8 r r b r r |
    e8 r r gs r r |
    e8 r r e r r |

    % III6 ?  VI?

    e4. r8 r8 e8 |
    a4. r8 r8 r8 |
    cs4.  r8 r8 r8 |
    e4.  r8 r8 r8 |

    % V

    d8 r b d g a |
    d8 r r d8 r r |
    b8 r r b8 r r |
    g8 r r g8 r r |

    % II

    b4. a4. |
    fs8 r r fs r r |
    a8 r r a r r |
    d8 r r d r r |

    % V7

    g4 r8 r4. |
    g8 r g16 g b8 c cs |
    g8 r g16 g b8 c cs |
    g8 r g,16 g b8 c cs |

    r4. r4  g8 |
    d8 e f g r r |
    d8 e f g r r |
    d8 e f g r r |
    

    % Second verse, C, bar 21

    c8\mf r d e f g |
    g,4. c4.~ |
    g,4. c4.~ |
    c,8\mf r r g r r |

    a8 r g e r c |
    c4. g4. | 
    c4. g4. | 
    c8 r r g r r |

    e8 r ds e r r |
    b2. |
    b2. |
    c8 r r g r r |

    e4. r8 r8 g,8 |
    a2. |
    a2. |
    c8 r r g r r |

    % B bar 13
    
    c8 r d e f g |
    g4. c4.~ |
    g4. c4.~ |
    c8 r r g r r |

    a8 r g e r c |
    c4. d4. | 
    c4. d4. | 
    c8 r r d r r |

    % III

    b8 r as b r r |
    e2. |
    e2. |
    e8 r r b r r |

    % Vm7

    b4. r8 r8 g8 |
    f2. |
    f2. |
    g'8 r r g, r r |


    c8 r d e f g |
    g,4. c4.~ |
    g,4. c4.~ |
    c8 r r g r r |

    a8 r g e r c |
    c4. d4. |
    c4. d4. |
    c8 r r g r r |

    % III

    e8 r ds e r r |
    e8 r r b r r |
    e8 r r gs r r |
    e'8 r r e r r |

    % VI

    e4. e8 f g |
    a4. r8 r8 r8 |
    cs,4.r8 r8 r8 |
    e4.  r8 r8 r8 |

    % IV

    a8 r r d, e f |
    f8 r r f8 r r |
    c8 r r c8 r r |
    f,8 r r f,8 r r |

    % V7

    g8 r r g, a b |
    f8 r r g, a b |
    b8 r r g a b |
    g'8 r r g, a b |

    % I

    c8 r r r r r |
    c8 r \times 2/3 { g16( a g } fs4) g8 |
    c8 r \times 2/3 { g16( a g } fs4) g8 |
    c8 r \times 2/3 { g16( a g } fs4) g8 |

    r4. r4. |
    c4 r8 c4. |
    c4 r8 r r r |
    c4 r8 r r r |

    % Bridge, now in F?, [E] bar 37.

    R2. |
    a'4. r8 gs a |
    R2. |
    R2. |

    R2. |
    c4. e,4. |
    R2. |
    R2. |

    R2. |
    g4. d4. |
    R2. |
    R2. |

    R2. |
    f4. c4. |
    R2. |
    R2. |

    e8 r r r r r |
    e8 r c c'4. |
    e8 r r r r r |
    e8 r r r r r |

    f8 r r r r r |
    f,8 r c c'4. |
    f8 r r r r r |
    f8 r r r r r |

    g8 r r r r c,( |
    g8 r r r r c,( |
    g8 r r r r c,( |
    g8 r r r r c,( |

    cs4. c4) r8 |
    cs4. c4) r8 |
    cs4. c4) r8 |
    cs4. c4) r8 |


    % Closing

    r4. e8 f g |
    r4. e8 d c |
    r4. e8 f g |
    f4. c8 c c |

    a8 r r d e f |
    f8 r r f g a |
    a8 r r d e f |
    f8 r r f g a |

    g8 r r g, a b |
    g8 r r g, a b |
    g8 r r d e f |
    g8 r r g, a b |

    c8 r r c c c |
    c8 r r c c c |
    c8 r r c c c |
    c8 r r c c c |

    c r4 r4. \bar "|. |
    c r4 r4. \bar "|. |
    c r4 r4. \bar "|. |
    c r4 r4. \bar "|. |

}


xtitle = "Guadalcanal March"
xinstrument = "Victory at Sea"
xcomposer = "Richard Rodgers"
xarranger = "Arr Roberts"

\include "renderQuartet.ly"
