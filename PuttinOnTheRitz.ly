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

    fs'1\mp |
    a'4\mf b d d |
    d1\mp |
    d4\mp r a r |

    e1 |
    d4 cs8( e8~e4) r4 |
    cs1 |
    e'4 r a, r |

    fs1 |
    a,4 b d d |
    d1 |
    d4 r a r |

    e1 |
    d4 cs8( e8~e4) r4 |
    cs1 |
    e'4 r a, r |

    c1 |
    a,1\mp |
    c'4\mf d f f |
    f'4 r c r |

    bf1 |
    e1 |
    f4 e8( g8~g4) r |
    g'4 r c, r |

    c1 |
    a1 |
    c,4 d f f |
    f4 r c r |

    bf1 |
    e1 |
    f4 e8( g8~g4) r |
    g'4 r c, r |

    a''4.\f e8~e4 r8 cs8 |
    e4.\mf e8~e4 r4 |
    cs,4.\mf cs8~cs4 r4 |
    a4\mf r8 cs8~ cs4 r |

    e4 d4 cs8 b8~b4 |
    e4. e8~e4 r4 |
    d4. d8~d4 r4 |
    e4 d cs b |

    a'4. e8~e4 r8 cs8 |
    e4. e8~e4 r4 |
    cs4. cs8~cs4 r4 |
    a4 r8 cs8~ cs4 r |

    e4 d4 cs8 b8~b4 |
    e4. e8~e4 r4 |
    d4. d8~d4 r4 |
    e4 d cs b |

    fs'4 fs cs cs |
    fs4 fs cs cs |
    fs,4 fs cs cs |
    fs'4 r fs cs |

    fs2 r2 |
    fs2 r2 |
    fs2 r2 |
    fs4 cs fs gs |

    gs4 gs8 gs8~gs8 fs8 e4 |
    d'4 d8 d8~d8 r8 d4 |
    b,4 b8 b8~b8 r8 b4 |
    e1 |

    a1\> |
    a4\> g f! e |
    a4\> r r2 |
    a4\> g! f! e |

    % [F] 57 Block chord verse.

    a,4\mp a a a8 a  |
    d4\mf f a a,8( d) |
    d4\mp d d d8 cs |
    f4\mp f f f8 f  |

    r8 a8  a4  a  a |
    r8 f( a) r8 a,4 d |
    r8 cs8 cs4 cs cs |
    r8 f8  f4  f  f |

    a4 a a8 a r a |
    f4 a a,8( d) r f |
    c4 c c8 c r c |
    f4 f f8 f r f |

    a4 a g g |
    a4 a, cs e |
    b4 b a a |
    f4 f e e  |

    e4 r r2 |
    g4 r r2 |
    a4 r r8 ds8( e) r8 |
    cs4 r r2 |

    r2 a8 g f e |
    r2 a8 g f e |
    a,4 r4 r2 |
    r2 a2 |

    d4 r4 r2 |
    d4 r4 r2 |
    R1 |
    d4 r4 r2 |

    bf'4 bf8 bf8 r8 a8~a4 |
    f4 f8 f8 r8 e8~e4 |
    d4 d8 d8 r8 cs8~cs4 |
    bf4 bf8 bf8 r8 a8~a4 |

    % [G] Rpt

     f4 f f f8 f  |
     d4\mf f a a,8( d) |
     a'4 a a a8 a  |
     d'4 d d d8 cs |

     r8 f8  f4  f  f |
     r8 f( a) r8 a,4 d |
     r8 a8  a4  a  a |
     r8 cs8 cs4 cs cs |

     f4 f f8 f r f |
     f4 a a,8( d) r f |
     a4 a a8 a r a |
     c4 c c8 c r c |

     f4 f e e  |
     a4 a, cs e |
     a4 a g g |
     b4 b a a |

     cs4 r r2 |
     g4 r r2 |
     e4 r r2 |
     a4 r r8 ds,8( e) r8 |

     R1 |
     r2 a8 g f e |
     r2 a8 g f e |
     a,4 r4 r2 |

    R1 |
    d4 r4 r2 |
    d4 r4 r2 |
    d4 r a r |

    r4 d2.\< |
    r4 d'\< e fs |
    r4 d2.\< |
    d4\< d e fs |
    
    % [H] bar 73 Scat bridge.

    r4 \acciaccatura { cs'16 } d2.\mf |
    g8\f^\solo^Gm d a' bf r bf c r |
    r4 g2\mf d4 |
    g4\mf r d r |

    d d, bf'8 a~a4 |
    cs8 d cs c r bf a g |
    f4 r d f |
    g4 r d f |

    bf4 r8 g r r bf4 |
    bf8 c bf g r4 bf8 c |
    g4 r8 g,8~g8 r8 g'4 |
    g4 r8 g8~g4 r4 |

    r8 g r4 r2 |
    bf8 g r4 bf8 a af g |
    r8 g8 r4 g8( f e c) | 
    r2 g4 d4 |

    r4 \acciaccatura { b16 } c2. |
    f8^F r c'-. gs( a c-.) gs( a |
    r4 f4 r a |
    f4 r c r |

    c8 r8 r4 c,4 e4 |
    c8-.) c bf a r a g e |
    c8 c8 bf4 a g |
    f4 r c e |

    f4 r4 r2 |
    f8( c d f) r4 r4 |
    f4 r8 f8~f8 r8 r4 |
    f4 r8 f8~f4 r4 |
    
    % Super duper ...

    d2 r8 cs8~cs4 |
    bf,8( d f bf-.) r a8~a4 |
    f2 r8 e8~e4 |
    bf2 r8 a8~a4 |
    

    % [J] Bar 81 - final verse

    d'4\f f a a,8( d) |
    d,1\f |
    f1\f |
    d,4\f r a r |

    r8 f( a) r8 a,4 d |
    cs1 |
    f1 |
    cs4 r a r |

    f4 a a,8( d8) r f |
    c?1 |
    f1 |
    c4 r a r |

    a4 a, cs e |
    b4 a, cs e |
    f4 r4 r2 |
    b4 r g r  |

    g4 r4 r2 |
    g4 r4 r2 |
    R1 |
    a4 a cs e |

    R1 |
    R1 |
    r4 a, cs e |
    g4 r4 r2 |

    r4 a, cs e |
    r4 a, cs e |
    g4 a, cs e |
    r4 a, cs e |

    g4 r a2 |
    g4 r e2 |
    g4 r cs2 |
    g4 r a2 |

    b1\fermata |
    f1\fermata |
    a1\fermata |
    d,1\fermata |
}


clari   = { \common \relative c' \clarA   }
clarii  = { \common \relative c' \clarB   }
clariii = { \common \relative c' \clarC    }
clarb   = { \common \relative c' \clarBass } 


xtitle = "Puttin On The Ritz"
xcomposer = "Irving Berlin"
xarranger = "Arr Roberts"

\include "renderQuartet.ly"
