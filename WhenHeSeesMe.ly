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
  \tempo "Moderately" 4=120
  \clef treble 
  \key af \major
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s1*2 \bar "||" \mark \default
    s1*14 \bar "||" \mark \default
    s1 s4
    s1*10 \bar "||" \mark \default
    s1*22 \bar "||" \mark \default
    s1*16 \bar "||" \mark \default
    s1*4
    s1 s2
    s1*10 \bar "||" \mark \default
    s1*16 \bar "||" \mark \default \tempo Gently
    s1*14 \bar "|."
}

\parallelMusic  #'(clari clarii clariii clarb) {

    R1 |
    R1 |
    af,8\mf af8 r4 r2 |
    af8\mf af8 r4 r2 |

    R1 |
    R1 |
    af8 af8 r4 r2 |
    af8 af8 r4 r2 |

% Bar 3 - first verse - Ab

    r8 g,8\mf g8 g8 g8 f8 r4 |
    af,8\mp af8 d ef r2 |
    ef'8\mp ef8 b c r2 |
    af8\mp af8 r4 r2 |

    r8 g8~g16 g16 g8 g8 f8 ef8 c8 |
    af,8 af8 d ef r2 |
    ef8 ef8 b c r2 |
    af8 af8 r4 r2 |

    r8 g'8~g16 g16 g8 g8 f8 ef8 d8 |
    af,8 af8 d ef r2 |
    ef8 ef8 b c r2 |
    af8 af8 r4 r2 |

    f8 ef d c ef d c bf |
    af,8 af8 d ef r2 |
    ef8 ef8 b c r2 |
    af8 af8 r4 r2 |

    % Game - guess what? - Gm

    d2 r2 |
    g,8 g8 d' ef r2 |
    d8 d8 bf bf r2 |
    g8 g8 r8 f'8~f4 ef |

    % p2 bar 8

    r4 r8 g,8 f'8 ef bf16 g8 f'16~ |
    g,8 g8 d' ef r2 |
    d8 d8 bf bf r2 |
    g,8 g8 r4 r2 |

    % Gb

    f8 f8~f16 f16 f8 f8 ef r4 |
    gf,8 gf8 c df r2 |
    df8 df8 a bf r2 |
    gf8 gf8 r4 r2 |

    r8 f8~f16 f16 f8 f8 ef df bf |
    gf,8 gf8 c df r2 |
    df8 df8 a bf r2 |
    gf8 gf8 r4 r2 |

    r8 f'8 f16 f8. f8 ef df16 c8 ef16~ |
    gf,8 gf8 c df r2 |
    df8 df8 a bf r2 |
    gf8 gf8 r4 r2 |

    ef8 df c bf df c bf af |
    gf,8 gf8 c df r2 |
    df8 df8 a bf r2 |
    gf8 gf8 r4 r2 |

    % Fm

    c2 r2 |
    f,8 f8 c'8 df8  r2 |
    c8 c8 af8 af8 r2 |
    f8 f8 r8 ef'8~ ef4 df4 |

    r8 af8 bf c ef f af bf~ | 
    f,8 f8 c'8 df8  r2 |
    c8 c8 af8 af8 r2 |
    f,8 f8 r4 r2 |

    bf8 c4. r2 |
    f,8 f8 c'8 df8  r2 |
    c8 c8 af8 af8 r2 |
    f8 f8 r4 r2 |
   
    % page 3 "With a stranger who might"

    r4 r8 df16 c df8 c c bf |
    f,8 f8 c'8 df8  r2 |
    c8 c8 af8 af8 r2 |
    f8 f8 r4 r2 |

    % [B]

    \key df \major bf8\mf gf'8 gf4 r8 bf,8 bf af |
    \key df \major bf8\mf bf8 bf4 r2 |
    \key df \major gf'8\mf gf8 gf4 r2 |
    \key df \major ef8\mf ef8 ef4 r2 |

    % Bar 18

    \time 5/4 af8 f' f f f f f f f f |
    \time 5/4 c8 c c c c c c c c c |
    \time 5/4 ef8 ef ef ef ef ef ef ef ef ef |
    \time 5/4 af8 af af af af af af af af af |
    
    \time 4/4 af,8 f' f4 r8 df16 df16 df8 af |
    \time 4/4 af8 af af4 r2 |
    \time 4/4 f8 f f4 r2 |
    \time 4/4 df8 df df4 r2 |

    bf8 gf' gf gf gf gf gf gf |
    bf8 bf bf bf bf bf bf bf |
    df8 df df df df df df df |
    gf8 gf gf gf gf gf f f |

    bf,8 gf' gf4 r8 gf gf af |
    bf8 bf8 bf4 r2 |
    gf8 gf gf4 r2 |
    ef8 ef8 ef4 r2 |

    af,8 f' f f f f f f |
    c8 c c c c c c c |
    ef8 ef ef ef ef ef ef ef |
    af8 af af af af af af af |
    
    af,8 f' f4 r8 df8 df8 af |
    af8 af af4 r2 |
    f8 f f4 r2 |
    df8 df df4 r2 |

    % page 4 "cookie before the cream but what"

    bf8 gf' gf gf gf gf gf gf |
    bf8 bf bf bf bf bf bf bf |
    df8 df df df df df df df |
    gf,8 gf gf gf gf gf f f |

    bf,8. gf'16~gf16 gf16 gf8~gf4 r8 bf,8 |
    bf2. r4 |
    gf2. r4 |
    ef2. df8 ef8 |

    a8. f'16~f16 f16 f8~f2\> |
    c1\> |
    a1\> |
    f1\> |
    
    r2\!\< r8 f8 g a |
    r8\!\< c c c c2 |
    r8\!\< a a a a2 |
    r8\!\< f f f f2 |

    %  [C] 1st chorus "When he sees me, what if he doesn't like me"

    \key bf \major bf4.\f a8 a4 d,4 |
    \key bf \major f8\f f f f~f f f4 |
    \key bf \major d8\f d d d~d d d4 |
    \key bf \major bf,4.\f a'4. g4 |

    r8 bf' bf a a g a bf |
    d'4 f,8 f~f f f4 |
    bf'4 d,8 d~d d d4 |
    bf,4. a'4. g4 |

    r8 bf bf a a g a bf |
    f8 f f f~f f f4 |
    d8 d d d~d d d4 |
    bf,4. a'4. g4 |

    ef4. d8 c8 bf4 a8~ |
    f8 f f f~f f f4 |
    d8 d d d~d d d4 |
    bf,4. a'4. g4 |

    a8 g8 g2. |
    g8 g g g~g g g g |
    ef8 ef ef d c c c d |
    ef4. d'4. c4 |

    r2 r4 r8 bf8~ |
    g8 g g g~g g g g |
    d8 d d ef c c c c |
    ef,4. d'4. c4 |

    \times 2/3 { bf4 a4 bf4 } a2~ |
    g8 g g g~g g g g |
    ef8 ef ef ef f f f f |
    ef,4. d'4. c4 |

    % page 5  "if when he knows me, he's only disappointed?"

    a2. c4 |
    g8 g g g~g g g g |
    f8 f f f f f f f |
    a8 ef'4 d8~d4 c4 |

    bf4. a8 a4 d,4 |
    f8 f f f~f f f4 |
    d8 d d d~d d d4 |
    bf,4. a'4. g4 |

    r8 bf' bf a a g a bf |
    d'4 f,8 f~f f f4 |
    bf4 d8 d~d d d4 |
    bf,4. a'4. g4 |

    r8 bf bf a a g a bf |
    f8 f f f~f f f4 |
    d8 d d d~d d d4 |
    bf,4. a'4. g4 |

    ef4. d8 c8 bf4 a16 bf16 |
    f8 f f f~f f f4 |
    d8 d d d~d d d4 |
    bf,4. a'4. g4 |

    a8 bf a g~g2 |
    g8 g g g~g g g g |
    ef8 ef ef d c c c d |
    ef4. d'4. c4 |

    r2 r8 g4 f16 ef16 |
    g8 g g g~g g g g |
    d8 d d ef c c c c |
    ef,4. d'4. c4 |

    d8 ef4 bf8~bf2 |
    g8 g g g~g g g g |
    ef8 ef ef ef f f f f |
    ef,4. d'4. c4 |

    r2 r4 r8 bf8 |
    g8 g g g~g g g g |
    ef8 ef ef ef f f f f |
    ef,4. d'4. c4 |

    % page 6  bar 44 "so I'm just fine inside my shell-shaped mind"

    c8\mf a'8 a4 r8 f f ef |
    a2.\mp a4 |
    c2.\mp c4 |
    f,2.\mp f4 |

    d8 bf'4 bf8~bf8 a g f |
    bf2. bf4 |
    d2. d4 |
    g2. f4 |

    f8 ef16 d16~d8 d16 c bf2 |
    bf2. bf4 |
    g2. f4 |
    ef2. d4 |

    r2 r4 c8 d8 |
    g2. bf4 |
    ef2. d4 |
    c2. d4 |

    ef4. c'8 c4 ef,4~ |
    gf1 |
    bf1 |
    ef1 |

    ef4 r4 r8 ef8 af af |
    bf1 |
    gf1 |
    ef1 |


    % Is this an exact repeat?
    % [D]


    \key af \major af1 |
    \key af \major af,8\mf af8 d ef r2 |
    \key af \major af,8\mf af8 b c r2 |
    \key af \major af,8\mf af8 r4 r2 |

    R1 |
    af,8 af8 d ef r2 |
    af8 af8 b c r2 |
    af8\mf af8 r4 r2 |

% page 7 - second verse - Ab - bar 52

    r8 g,8\mf g8 g8 g8 f8 r4 |
    af,8\mp af8 d ef r2 |
    ef8\mp ef8 b c r2 |
    af8\mp af8 r4 r2 |

    r8 g4 g16 g16 g8 f8 ef8 c8 |
    af,8 af8 d ef r2 |
    ef8 ef8 b c r2 |
    af8 af8 r4 r2 |

    r8 g'8 g g g f ef d |
    af,8 af8 d ef r2 |
    ef8 ef8 b c r2 |
    af8 af8 r4 r2 |

    f8 ef16 d16~d8 c ef d c16 bf8. |
    af,8 af8 d ef r2 |
    ef8 ef8 b c r2 |
    af8 af8 r4 r2 |

    % Why - a certain suitor stands in line

    d2. r4 |
    g,8 g8 d' ef r2 |
    d8 d8 bf bf r2 |
    g8 g8 r8 f'8~f4 ef |

    r8 g, f' f f ef bf g |
    g,8 g8 d' ef r2 |
    d8 d8 bf bf r2 |
    g,8 g8 r4 r2 |

    % Gb

    f'8 f8~f16 f16 gf8 f4 ef4 |
    gf,8 gf8 c df r2 |
    df8 df8 a bf r2 |
    gf8 gf8 r4 r2 |

    r8 f8~f8 f16 f16 f8 ef df bf |
    gf,8 gf8 c df r2 |
    df8 df8 a bf r2 |
    gf8 gf8 r4 r2 |

    r8 f'8 f16 f8. f8 ef df c8 |
    gf,8 gf8 c df r2 |
    df8 df8 a bf r2 |
    gf8 gf8 r4 r2 |

    ef16 df8 c16~c8 bf8 df c af c~ |
    gf,8 gf8 c df r2 |
    df8 df8 a bf r2 |
    gf8 gf8 r4 r2 |

    % page 8 - Fm "I could end up a miserable wife"

    c2 r2 |
    f,8 f8 c'8 df8  r2 |
    c8 c8 af8 af8 r2 |
    f8 f8 r8 ef'8~ ef4 df4 |

    af8 bf df ef f af bf c~ |
    f,8 f8 c'8 df8  r2 |
    c8 c8 af8 af8 r2 |
    f,8 f8 r4 r2 |

    c8 c4.~c2 |
    f,8 f8 c'8 df8  r2 |
    c8 c8 af8 af8 r2 |
    f8 f8 r4 r2 |
   
    % "sorry girls but he could be"

    r4 r8 df16 c df8 c c bf |
    f,8 f8 c'8 df8  r2 |
    c8 c8 af8 af8 r2 |
    f8 f8 r4 r2 |

    % [E] "criminal"  bar 66

    \key df \major bf8\mf gf'8 gf4 r8 bf,8 bf af |
    \key df \major bf8\mf bf8 bf4 r2 |
    \key df \major gf'8\mf gf8 gf4 r2 |
    \key df \major ef'8\mf ef8 ef4 r2 |

    af8 f' f f f f f f |
    c8 c c c c c c c |
    ef8 ef ef ef ef ef ef ef |
    af,8 af af af af af af af |

    f8 f f f af f f ef |
    c8 c c c c c c c |
    ef8 ef ef ef ef ef ef ef |
    af8 af af af af af af af |

    ef8 df f4 r8 df df c |
    af8 af af4 r2 |
    f8 f f4 r2 |
    df8 df df4 r2 |

    \time 6/4 bf8 gf' gf gf  gf gf gf gf   gf gf gf gf |
    \time 6/4 bf8 bf bf bf   af af af af   af af af af |
    \time 6/4 df8 df df df   df df df df   df df df df |
    \time 6/4 gf,8 gf gf gf   gf gf gf gf   gf gf f f |

    % Page 9 - "Color blind"

    \time 4/4 bf,8 gf' gf4 r4 bf,8 af8 |
    \time 4/4 bf8 bf8 bf4 r2 |
    \time 4/4 gf8 gf gf4 r2 |
    \time 4/4 ef8 ef8 ef4 r2 |

    % "how untrustworthy is that"

    af8 f' f f f f f f |
    c8 c c c c c c c |
    ef8 ef ef ef ef ef ef ef |
    af8 af af af af af af af |
    
    af,8 f' f4 r8 df8 df8 cf |
    af8 af af4 r2 |
    f8 f f4 r2 |
    df8 df df4 r2 |
    
    bf8 gf' gf gf af gf f ef |
    bf8 bf bf bf bf r8 r4 |
    df8 df df df ef f gf af |
    gf8 gf gf gf gf gf f f |

    % lovely eyes  Eb chord  bar 75

    af8 gf f ef~ef4 r8 ef8 |
    bf'1\mp |
    gf1\mp |
    ef1\mp |

    % Gb+2

    af8 gf f ef~ef4 r8 ef8 |
    af1 |
    gf1 |
    df1 |
    
    % Cb

    af8 gf f ef~ef2 |
    gf1~ |
    ef1~ |
    cf1~ |

    r2 r8 af4 af16 af16 |
    gf1 |
    ef1 |
    cf1 |

    % F7 "do with that?"

    af4. g8 \times 2/3 { f8( ef f~ } f4) |
    ef1 |
    c1 |
    f1 |

    r2\!\< r8 f8 g a |
    r8\!\< c' c c c2 |
    r8\!\< a' a a a2 |
    r8\!\< f f f f2 |

    % [F] Second chorus page 10 bar 72

    \key bf \major bf4.\f a8 a4 d,4 |
    \key bf \major f8\f f f f~f f f4 |
    \key bf \major d8\f d d d~d d d4 |
    \key bf \major bf,4.\f a'4. g4 |

    r8 bf' bf a a g a bf |
    d4 f8 f~f f f4 |
    bf4 d8 d~d d d4 |
    bf,4. a'4. g4 |

    r8 bf bf a a g a bf |
    f8 f f f~f f f4 |
    d8 d d d~d d d4 |
    bf,4. a'4. g4 |

    ef4. d8 c8 bf4 a8~ |
    f8 f f f~f f f4 |
    d8 d d d~d d d4 |
    bf,4. a'4. g4 |

    a8 g8 g2. |
    g8 g g g~g g g g |
    ef8 ef ef d c c c d |
    ef4. d'4. c4 |

    r2 r4 r8 bf8~ |
    g8 g g g~g g g g |
    d8 d d ef c c c c |
    ef,4. d'4. c4 |

    \times 2/3 { bf4 a4 bf4 } a2~ |
    g8 g g g~g g g g |
    ef8 ef ef ef f f f f |
    ef,4. d'4. c4 |

    % "if when he holds me"

    a2. c4 |
    g8 g g g~g g g g |
    f8 f f f f f f f |
    a8 ef'4 d8~d4 c4 |

    bf4. a8 a4 d,4 |
    f8 f f f~f f f4 |
    d8 d d d~d d d4 |
    bf,4. a'4. g4 |

    % page 12 "my heart is set in motion"

    r8 bf' bf a a g a g |
    d4 f8 f~f f f4 |
    bf4 d8 d~d d d4 |
    bf4. a4. g4 |

    r8 bf bf a a g a bf |
    f8 f f f~f f f4 |
    d8 d d d~d d d4 |
    bf,4. a'4. g4 |

    ef4. d8 c8 bf4 a8~ |
    f8 f f f~f f f4 |
    d8 d d d~d d d4 |
    bf,4. a'4. g4 |
 
    % Eb

    a8 g4.~g2 |
    g8 g g g~g g g g |
    ef8 ef ef d d d ef ef |
    ef4. g4. bf4 |

    % F9

    r4 r8 a8~a bf ef4~ |
    g8 g g bf~bf bf bf bf |
    c8 c c ef~ef ef ef ef |
    f4. a4. c4 |

    % Gm11

    ef8 d4 c8~c8 bf8 a4 |
    bf8 bf bf bf~bf bf bf bf |
    f8 f f f~f f f f |
    g4. bf4. d4 |

    % F7sus4

    bf2 r8 a8 a4~ |
    c8 c c c~c c c4 |
    a8 a a bf~bf bf a4 |
    a4. c4. f,4 |


    % "Slower more freely"   Gm  bar 97

    a2\mp r4 bf,4 |
    bf,1~\mp |
    d,,1~\mp |
    g1~\mp |

    g2 r4 r8 d8 |
    bf1 |
    d1 |
    g1 |

    % Page 12   Eb

    f4 ef2. |
    bf1~ |
    g1~ |
    ef1~ |

    r2 r4 f4 |
    bf1 |
    g1 |
    ef1 |

    % F 

    f2. c'8 a8~ |
    a1~ |
    c1~ |
    f1~ |

    a2 r4 f8 c8 |
    a1 |
    c1 |
    f1 |

    % Cm

    ef2 r2 |
    g1~ |
    ef1~ |
    c1~ |

    r2 \times 2/3 { c'4 c d } |
    g1 |
    ef1 |
    c1 |

    ef4 c'4 c4 ef,4 |
    bf1~ |
    gf1~ |
    ef8 ef ef f f f f f |

    r2 r8 c'4 bf16 a16 |
    bf1 |
    gf1 |
    gf8 gf gf c c c c c |

    bf1 |
    d8 d d d~d d d d |
    c,8 c c c~c c c d |
    bf,4. a'4. g4 |

    bf1 |
    d8 d d d~d d d d |
    c8 c c c~c c c d |
    bf,4. a'4. g4 |

    bf8 bf bf bf~bf bf bf bf |
    d8 d d d~d d d d |
    c8 c c c~c c c d |
    bf,4. a'4. g4 |

    bf4-> r4 r2 |
    d4-> r4 r2 |
    f4-> r4 r2 |
    bf4-> r4 r2 |

}

clari =   \transpose af bf { \common  \relative c''' \clari }
clarii =  \transpose af bf { \common  \relative c''  \clarii }
clariii = \transpose af bf { \common  \relative c''  \clariii }
clarb =   \transpose af bf { \common  \relative c'   \clarb }

xtitle = "When He Sees Me (from \"Waitress\")"
xcomposer = "Sara Bareilles"
xarranger = "Arr Roberts"


\include "renderQuartet.ly"
