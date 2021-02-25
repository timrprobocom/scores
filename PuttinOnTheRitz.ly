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
  \tempo "Easy swing, a la Fred Astaire" 4=200
  \clef treble \key d \minor
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

\parallelMusic #'(clarA clarB clarC clarBass) {

    R1 |
    R1 |
    R1 |
    d4\mp r d r | 


    R1 |
    R1 |
    R1 |
    d4 r r a8 c |

    R1 |
    R1 |
    R1 |
    d4 d f f |

    R1 |
    R1 |
    R1 |
    d4 r r r |

    d8\mf( a') r d,( g) r d( f) |
    d8\mf( a') r d,( g) r d( f) |
    d8\mf( f) r d( e) r d( f) |
    d4 d d d |

    r8 d( e) r d( e f g) |
    r8 d( e) r d( e f g) |
    r8 d( e) r d4 a4 |
    d4 d a c |

    a8( d) r a( c) r bf a~ | 
    a8( d) r a( g) r f e~ | 
    d8( f) r d( e) f d cs~ |
    d4 r f f |

    a2\> r |
    e2\> r |
    cs2\> r |
    a4 g f e |

    % [A] Bar 9 - first theme, held harmony
    % Dm  2 3 4 DmM7 2 3 4 Dm7 2 3 4 Dm6 A7 3 4 | Am7

    r4\! f\mp r f |
    r4\! a\mp r a |
    d4\!\mf f a a,8( d) |
    d4\!\mp r a r |

    r4 f r f |
    r4 a r a |
    r8 f( a) r8 a,4 d |
    cs4 r a r |

    r4 f r f |
    r4 a r a |
    f4 a a,8( d8) r f |
    c4 r a r |

    R1 |
    a4 a, cs e |
    a4 a, cs e |
    b4 r g r  |

    r2 r4 ds8( e) |
    g4 r4 r2 |
    g4 r4 r2 |
    a4 r r r |

    a,4 r4 r2 |
    R1 |
    r2 a8( g f e) |
    R1 |

    R1 |
    R1 |
    d4 r4 r2 |
    r4 d f a |

    d4\f  d8  d8  r8 cs8~cs4 |
    bf4\f bf8 bf8 r8 a8~a4 |
    f4\f  f8  f8  r8 e8~e4 |
    bf4\f bf8 bf8 r8 a8~a4 |


    % [B] Bar 17 - first theme, articulated harmony
    % Dm  2 3 4 DmM7 2 3 4 Dm7 2 3 4 Dm6 A7 3 4 | Am7


    f1\mp |
    d,4\mf f a a,8( d) |
    d'1\mp |
    d,4\mp r a r |

    f1 |
    r8 f( a) r8 a,4 d |
    cs1 |
    cs4 r a r |

    f1 |
    f4 a a,8( d8) r f |
    c1 |
    c4 r a r |

    f4 r4 r2 |
    a4 a, cs e |
    b4 a, cs e |
    b4 r g r  |

    r2 r4 ds8( e) |
    g4 r4 r2 |
    g4 r4 r2 |
    a4 r r r |

    a,4 r4 r2 |
    r2 a8( g f e) |
    R1 |
    R1 |

    R1 |
    d4 r4 r2 |
    R1 |
    R1 |

    R1 |
    f2\< fs2 |
    d2\< c2 |
    r4 d e fs |


    % [C] Bar 25
    % Chorus 1 normal
    % Gm  C  F  F Dm A |

    g'4\f a bf c |
    g2\!\f  d2 |
    d2\!\f  bf2 |
    g4\f r bf d, |

    d c bf a4 |
    g2  bf2 |
    bf2 d2 |
    g4 r d r |

    g4 c,8( g'8)~ g4 r4 |
    g4 r4 r2 |
    e4 r4 r2 |
    c4 r e g, |

    R1 |
    g4 c,8( g'8)~ g4 r4 |
    R1 |
    c4 c d e |

    f4 g a bf |
    r4 a2 c,4 |
    r4 c a c  |
    f4 r a c, |

    c4 bf a g |
    c4 r c e |
    f2 a4 r |
    f4 r f e |

    f4 c8( f8)~f4 r4 |
    f4 r4 r2 |
    f4 r4 r2 |
    f2 a2 | 

    % Super duper

    d4  d8  d8  r8 cs8~cs4 |
    bf4 bf8 bf8 r8 a8~a4 |
    f4  f8  f8  r8 e8~e4 |
    bf4 bf8 bf8 r8 a8~a4 |


    % [D] Bar 33
    % block chord verse

    d4\mf d d d8 cs |
    a4\mf a a a8 a  |
    f4\mf f f f8 f  |
    d,4\mf f a a,8( d) |

    r8 cs8 cs4 cs cs |
    r8 a8  a4  a  a |
    r8 f8  f4  f  f |
    r8 f( a) r8 a,4 d |

    c4 c c8 c r c |
    a4 a a8 a r a |
    f4 f f8 f r f |
    f4 a a,8( d) r f |

    b4 b a a |
    a4 a g g |
    f4 f e e  |
    a4 a, cs e |
 
    a4 r r e'16( d cs b |
    e4 r r2 |
    cs4 r r2 |
    g4 r r2 |

    a4) r4 r2 |
    r2 a8 g f e |
    R1 |
    r2 a8 g f e |

% I don't know how to do this transition.  Dm to D.

    R1 |
    d4 r4 r2 |
    r4 a'8( bf a g f e |
    d4 r4 r2 |

    R1 |
    d8 r8 r8 d8-> r2 |
    d8) r8 r8 d8-> r2 |
    d4 r4 r2 |

    % [E] Bar 41, Interlude/intro.
    % D  A  D  A  F  C  F   C  / A  E  A  E 

    a'1\mp |
    c'4\mf d f f |
    f1\mp |
    f4\mp r c r |

    g1 |
    f4 e8( g8~g4) r4 |
    e1 |
    g'4 r c, r |

    a1 |
    c,4 d f f |
    f1 |
    f4 r c r |

    g1 |
    f4 e8( g8~g4) r4 |
    e1 |
    g'4 r c, r |

    ef1 |
    c,1\mp |
    ef'4\mf f af af |
    af'4 r ef r |

    df1 |
    g1 |
    af4 g8( bf8~bf4) r |
    bf'4 r ef, r |

    ef1 |
    c1 |
    ef,4 f af af |
    af4 r ef r |

    df1 |
    g1 |
    af4 g8( bf8~bf4) r |
    bf'4 r ef, r |

    c''4.\f g8~g4 r8 e8 |
    g4.\mf g8~g4 r4 |
    e,4.\mf e8~e4 r4 |
    c4\mf r8 e8~ e4 r |

    g4 f4 e8 d8~d4 |
    g4. g8~g4 r4 |
    f4. f8~f4 r4 |
    g4 f e d |

    c'4. g8~g4 r8 e8 |
    g4. g8~g4 r4 |
    e4. e8~e4 r4 |
    c4 r8 e8~ e4 r |

    g4 f4 e8 d8~d4 |
    g4. g8~g4 r4 |
    f4. f8~f4 r4 |
    g4 f e d |

    a'4 a e e |
    a4 a e e |
    a,4 a e e |
    a'4 r a e |

    a2 r2 |
    a2 r2 |
    a2 r2 |
    a4 e a b |

    b4 b8 b8~b8 a8 g4 |
    f'4 f8 f8~f8 r8 f4 |
    d,4 d8 d8~d8 r8 d4 |
    g1 |

    c1\> |
    c4\> bf af! g |
    c4\> r r2 |
    c4\> bf! af! g |

    % [F] 57 Block chord verse.

    \key f \minor c,4\mp c c c8 c  |
    \key f \minor f4\mf af c c,8( f) |
    \key f \minor f4\mp f f f8 e |
    \key f \minor af4\mp af af af8 af  |

    r8 c8  c4  c  c |
    r8 af( c) r8 c,4 f |
    r8 e8 e4 e e |
    r8 af8  af4  af  af |

    c4 c c8 c r c |
    af4 c c,8( f) r af |
    ef4 ef ef8 ef r ef |
    af4 af af8 af r af |

    c4 c bf bf |
    c4 c, e g |
    d4 d c c |
    af4 af g g  |

    g4 r r2 |
    bf4 r r2 |
    c4 r r8 fs8( g) r8 |
    e4 r r2 |

    r2 c8 bf af g |
    r2 c8 bf af g |
    c,4 r4 r2 |
    r2 c2 |

    f4 r4 r2 |
    f4 r4 r2 |
    R1 |
    f4 r4 r2 |

    df'4 df8 df8 r8 c8~c4 |
    af4 af8 af8 r8 g8~g4 |
    f4 f8 f8 r8 e8~e4 |
    df4 df8 df8 r8 c8~c4 |

    % [G] Rpt

     af4 af af af8 af  |
     c'4 c c c8 c  |
     f4\mf af c c,8( f) |
     f'4 f f f8 e |

     r8 af8  af4  af  af |
     r8 c8  c4  c  c |
     r8 af( c) r8 c,4 f |
     r8 e8 e4 e e |

     af4 af af8 af r af |
     c4 c c8 c r c |
     af4 c c,8( f) r af |
     ef4 ef ef8 ef r ef |

     af4 af g g  |
     c4 c bf bf |
     c4 c, e g |
     d4 d c c |

     e4 r r2 |
     g4 r r2 |
     bf4 r r2 |
     c4 r r8 fs,8( g) r8 |

     R1 |
     r2 c8 bf af g |
     r2 c8 bf af g |
     c,4 r4 r2 |

    R1 |
    f4 r4 r2 |
    f4 r4 r2 |
    f4 r c r |

    r4 f2.\< |
    r4 f,\< g a |
    r4 f'2.\< |
    f4\< f g a |
    
    % [H] dar 73 Scat dridge.

    r4 \acciaccatura { e'16 } f2.\mf |
    bf8\f^\solo^\markup { B \flat m } f c' df r df ef r |
    r4 bf2\mf f4 |
    bf4\mf r f r |

    f f, df'8 c~c4 |
    e8 f e ef r df c bf |
    af4 r f af |
    bf4 r f af |

    df4 r8 bf r r df4 |
    df8 ef df bf r4 df8 ef |
    bf4 r8 bf,8~bf8 r8 bf'4 |
    bf4 r8 bf8~bf4 r4 |

    r8 bf r4 r2 |
    df8 bf r4 df8 c b bf |
    r8 bf8 r4 bf8( af g ef) | 
    r2 bf4 f4 |

    r4 \acciaccatura { d16 } ef2. |
    af8^\markup { A \flat } r ef'-. b( c ef-.) b( c |
    r4 af4 r c |
    af4 r ef r |

    ef8 r8 r4 ef,4 g4 |
    ef8-.) ef df c r c bf g |
    ef8 ef8 df4 c bf |
    af4 r ef g |

    af4 r4 r2 |
    af8( ef f af) r4 r4 |
    af4 r8 af8~af8 r8 r4 |
    af4 r8 af8~af4 r4 |
    
    % Super duper ...

    f2 r8 e8~e4 |
    df8( f af df-.) r c8~c4 |
    af2 r8 g8~g4 |
    df2 r8 c8~c4 |
    

    % [J] Bar 81 - final verse

    f'4\f af c c,8( f) |
    f,1\f |
    af1\f |
    f,4\f r c r |

    r8 af( c) r8 c,4 f |
    e1 |
    af1 |
    e4 r c r |

    af4 c c,8( f8) r af |
    ef?1 |
    af1 |
    ef4 r c r |

    c4 c, e g |
    d4 c, e g |
    af4 r4 r2 |
    d4 r bf r  |

    bf4 r4 r2 |
    bf4 r4 r2 |
    R1 |
    c4 c e g |

    R1 |
    R1 |
    r4 c, e g |
    bf4 r4 r2 |

    r4 c, e g |
    r4 c, e g |
    bf4 c, e g |
    r4 c, e g |

    bf4 r c2 |
    bf4 r g2 |
    bf4 r e2 |
    bf4 r c2 |

    d1\fermata |
    af1\fermata |
    c1\fermata |
    d,1\fermata |
}


clari   = \relative c' \clarA
clarii  = \relative c' \clarB
clariii = \relative c' \clarC 
clarb   = \relative c' \clarBass 


xtitle = "Puttin On The Ritz"
xcomposer = "Irving Berlin"
xarranger = "Arr Roberts"

\include "renderQuartet.ly"
