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
  \clef treble \key d \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" } 
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s2.*4 \bar "||" \mark \default
    s2.*16 \bar "||" \mark \default
    s2.*16 \bar "||" \mark \default
    \key g \major
    s2.*16 \bar "||" \mark \default
    s2.*16 \bar "||" \mark \default
    \key c \major
    s2.*16 \bar "|."
}

\parallelMusic  #'(clari clarii clariii clarb) {
    
    a8\f gs b a r r |
    a'8\f gs b a r r |
    a8\f gs b a r r |
    a'8\f gs b a r r |

    a,8 gs b a r r |
    a,8 gs b a r r |
    a,8 gs b a r r |
    a,8 gs b a r r |

    a'8 r g e r cs |
    cs8 r c cs r c |
    cs8 r d e r fs    |
    a8 r bf8 b r bf |

    a8 r r r r a,\mp |
    cs8 r r r4. |
    g8 r r g4.-> |
    a8 r r a4.-> |

    % First verse.  Bar 5, I
    
    d8 r e fs g a |
    R2. |
    d8\mp r8 r8 r4. |
    d8\mp r8 r8 r4. |

    b8 r a fs r d |
    R2. |
    d8 r8 r8 r4. |
    d8 r8 r8 r4. |

    fs8 r e fs r r |
    r8 r8 r8 cs4.( |
    r8 r8 r8 cs4.( |
    d8 r8 r8 cs4.( |

    fs4. r8 r8 a,8 |
    b4. a4.) |
    b4. a4.) |
    b4. a4.) |

    % Bar 9
    
    d8 r e fs g a |
    d,8 r8 r8 r4. |
    d8 r8 r8 r4. |
    d8 r8 r8 r4. |

    b8 r a fs r d |
    d8 r8 r8 r4. |
    d8 r8 r8 r4. |
    d8 r8 r8 r4. |

    % III

    cs8 r c cs r r |
    as'8 r r as r r |
    cs8 r r cs r r |
    fs8 r r fs r r |

    % Vm7

    cs4. r8 r8 a8 |
    g4 r8 a, r r |
    e4 r8 e  r r |
    a4 r8 a, r r |

    % Bar 13

    d8 r e fs g a |
    d8 r8 r8 r4. |
    d8 r8 r8 r4. |
    d8 r8 r8 r4. |

    b8 r a fs r d |
    d8 r8 r8 r4. |
    d8 r8 r8 r4. |
    d8 r8 r8 r4. |

    % III

    fs8 r es fs r r |
    fs8 r r cs r r |
    fs8 r r as r r |
    fs8 r r fs r r |

    % VI?

    fs4. r8 r8 fs8 |
    b4.  r8 r8 r8 |
    ds4. r8 r8 r8 |
    fs4. r8 r8 r8 |

    % V

    e8 r cs e a b |
    e8 r r e8 r r |
    cs8 r r cs8 r r |
    a8 r r a8 r r |

    % II

    cs4. b4. |
    gs8 r r gs r r |
    b8 r r b r r |
    e8 r r e r r |

    % V7

    a4 r8 r4. |
    a8 r a16 a cs8 d ds |
    a8 r a16 a cs8 d ds |
    a,8 r a16 a cs8 d ds |

    r4. r4  a8 |
    e8 fs g a r r |
    e8 fs g a r r |
    e8 fs g a r r |
    

    % Second verse, B, bar 21

    d8\mf r e fs g a |
    a,4. d4.~ |
    a,4. d4.~ |
    d,8\mf r r a r r |

    b8 r a fs r d |
    d4. a4. | 
    d4. a4. | 
    d8 r r a r r |

    fs8 r es fs r r |
    cs2. |
    cs2. |
    d8 r r a r r |

    fs4. r8 r8 a,8 |
    b2. |
    b2. |
    d8 r r a r r |
    
    d8 r e fs g a |
    a4. d4.~ |
    a4. d4.~ |
    d8 r r a r r |

    b8 r a fs r d |
    d4. e4. | 
    d4. e4. | 
    d8 r r e r r |

    % III

    cs8 r bs cs r r |
    fs2. |
    fs2. |
    fs8 r r cs r r |

    % Vm7

    cs4. r8 r8 a8 |
    g2. |
    g2. |
    a'8 r r a, r r |

    d8 r e fs g a |
    a,4. d4.~ |
    a,4. d4.~ |
    d8 r r a r r |

    b8 r a fs r d |
    d4. e4. |
    d4. e4. |
    d8 r r a r r |

    % III

    fs8 r es fs r r |
    fs8 r r cs r r |
    fs8 r r as r r |
    fs'8 r r fs r r |

    % VI

    fs4. fs8 g a |
    b4. r8 r8 r8 |
    ds,4.r8 r8 r8 |
    fs4. r8 r8 r8 |

    % IV

    b8 r r e, fs g |
    g8 r r g8 r r |
    d8 r r d8 r r |
    g8 r r g,8 r r |

    % V7

    a8 r r a, b cs |
    g8 r r a, b cs |
    cs8 r r a b cs |
    a'8 r r a, b cs |

    % I

    d8 r r r r r |
    d8 r \times 2/3 { a16( b a } gs4) a8 |
    d8 r \times 2/3 { a16( b a } gs4) a8 |
    d8 r \times 2/3 { a16( b a } gs4) a8 |

    r4. r4. |
    d4 r8 d4. |
    d4 r8 r r r |
    d4 r8 r r r |

    % Bridge, now in G, [C] bar 37.

    g8 g g g r r  |
    b'4. r8 as b |
    R2. |
    R2. |

    r8 fs e d c b |
    d4. fs,4. |
    R2. |
    R2. |

    r8 e d c b a |
    a4. e4. |
    R2. |
    R2. |

    r8 d c b a g | 
    g4. d4. |
    R2. |
    R2. |

    fs8 r d d'4. |
    fs8 r d d'4. |
    fs,8 r r r r r |
    fs,8 r r r r r |

    g,8 r d d'4. |
    g,8 r d d'4. |
    g8 r r r r r |
    g8 r r r r r |

    a8 r r r r d,( |
    a8 r r r r d,( |
    a8 r r r r d,( |
    a8 r r r r d ( |

    ef4. d4) r8 |
    ef4. d4) r8 |
    ef4. d4) r8 |
    ef4. d4) r8 |

    % Bar 45.

    g'8 g g g r r  |
    b'4. r8 as b |
    R2. |
    R2. |

    r8 fs e d c b |
    d4. fs,4. |
    R2. |
    R2. |

    r8 e d c b a |
    a4. e4. |
    R2. |
    R2. |

    r8 d c b a g | 
    g4. d4. |
    R2. |
    R2. |

    R2. |
    fs8 r ess fs4. |
    R2. |
    R2. |

    R2. |
    ds'8 r css ds4. |
    R2. |
    R2. |

    R2. |
    b8 r r b b b |
    R2. |
    R2. |

    R2. |
    c8 r r d,4. |
    R2. |
    R2. |

    % [D] Bar 53

    g'8 g g g r r  |
    b'4. r8 as b |
    R2. |
    R2. |

    r8 fs e d c b |
    d4. fs,4. |
    R2. |
    R2. |

    r8 e d c b a |
    a4. e4. |
    R2. |
    R2. |

    r8 d c b a g | 
    g4. d4. |
    R2. |
    R2. |

    fs8 r d d'4. |
    fs8 r d d'4. |
    fs,8 r r r r r |
    fs,8 r r r r r |

    g,8 r d d'4. |
    g,8 r d d'4. |
    g8 r r r r r |
    g8 r r r r r |

    a8 r r r r d,( |
    a8 r r r r d,( |
    a8 r r r r d ( |
    a8 r r r r d ( |

    ef4. d4) r8 |
    ef4. d4) r8 |
    ef4. d4) r8 |
    ef4. d4) r8 |

    % Bar 61

    R2. |
    d'4. r8 cs d |
    R2. |
    R2. |

    R2. |
    e4. b4. |
    R2. |
    R2. |

    R2. |
    d4. a4. |
    R2. |
    R2. |

    R2. |
    c4. g4. |
    R2. |
    R2. |

    R2. |
    b8 c cs d r ds |
    R2. |
    R2. |

    R2. |
    e8 r r fs4. |
    R2. |
    R2. |

    r8 r g g r g, | 
    g8 r g g r g, | 
    R2. |
    R2. |

    g8 r g' g r r |
    g8 r g' g r g, |
    R2. |
    R2. |


    % [E] Bar 69 final verse

    e8  r e g g c |
    c8 r d e f g |
    g4.   c4.~ |
    R2. |

    c8 r g g r e |
    a8 r g e r c |
    c4. g4. |
    R2. |

    g8 r fs g r r |
    e8 r ds e r r |
    b2. |
    R2. |

    g4. r8 r g  |
    e4. r8 r g, |
    a2. |
    R2. |

    e8 r e g g c |
    c8 r d e f g |
    g4.  c4.~ |
    R2. |

    c8 r g g r e |
    a8 r g e r c |
    c4. d4. |
    R2. |

    e8 r ds e r r |
    b8 r as b r r |
    e2. |
    R2. |

    f4. r8 r f |
    b4. r8 r g |
    f2. |
    R2. |

    e8 r e g g c |
    c8 r d e f g |
    a4.  g4.~ |
    R2. |

    c8 r g g r e |
    a8 r g e r c |
    g4. c,4. |
    R2. |

    R2. |
    e8 r ds e r r |
    e4. e4. |
    R2. |

    % Closing

    r4. e8 f g |
    e4. e8 d c |
    r4. e8 f g |
    f4. c8 c c |

    a,8 r r d e f |
    f8 r r f g a |
    a8 r r d, e f |
    f8 r r f g a |

    g8 r r g, a b |
    g8 r r g, a b |
    g8 r r d e f |
    g8 r r g, a b |

    c8 r r c c c |
    c8 r r c c c |
    c8 r r c c c |
    c8 r r c c c |

    c8 r4 r4. \bar "|." |
    c8 r4 r4. \bar "|." |
    c8 r4 r4. \bar "|." |
    c8 r4 r4. \bar "|." |
}


xtitle = "Guadalcanal March"
xinstrument = "Victory at Sea"
xcomposer = "Richard Rodgers"
xarranger = "Arr Roberts"

\include "renderQuartet.ly"
