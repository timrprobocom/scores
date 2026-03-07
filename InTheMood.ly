\version "2.20.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { \italic sub \dynamic mp }
fade = \markup { \italic fade... }
rall = \markup { \italic rall... }
ritard = \markup { \italic { molto rit. } }
atempo = \markup { \italic { a tempo } }
fmppp = \markup { \dynamic { f-mp-pp } }

common = {
  \numericTimeSignature 
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \override MultiMeasureRest.expand-limit = #1
  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" } 
  \time 4/4
  \tempo "Swing" 4=172
  \clef treble 
  \key c \major
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s1*8 \mark \default
    s1*12 \mark \default
    s1*10 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*10 \mark \default
    s1*16 \bar "||" \mark \default
    s1*10 \bar "||" \mark \default
    s1*10 \bar "|."
}

\parallelMusic  #'(clari clarii clariii clarb) {

   % Introduction

   c8 e g c r c r c |
   c8 e g c r c r c |
   c8 e g c r c r c |
   c8 e g c r c r c |

   r8 c r c b c g e |
   r8 c r c b c g e |
   r8 c r c b c g e |
   r8 c r c b c g e |

   g8 fs f e ef d4 c8~ |
   g8 fs f e ef d4 c8~ |
   g8 fs f e ef d4 c8~ |
   g8 fs f e ef d4 c8~ |

   c8 e g c~c g e c |
   c1 |
   c8 e g c~c g e c |
   c1 |

   d8( e d c a4) d8( e) |
   fs4 r r fs |
   d8( e d c a4) d8( e) |
   d4 r r d |

   d8( c a) a~a e'4. |
   r2 r8 fs4. |
   d8( c a) a~a e'4. |
   r2 r8 d4. |

   d8( e d c a4) d8( e) |
   f!4 r r f |
   d8( e d c a4) d8( e) |
   g4 r r g |

   d8( c a) a~a c4 c8~ |
   r2 r8 a4 r8 |
   d8( c a) a~a c4 r8 |
   r2 r8 f4 r8 |

   % First theme, bar 9

   \repeat volta 2 {

   c2. r4 |
   e8( g) c e,( g) c e,( g) |
   e8( g) c e,( g) c e,( g) |
   c4 e g a |

   r2 r8 c4 c8~ |
   c8 e,( g) c~c4 r4 |
   c8 e,( g) c~c4 r4 |
   c4 a g e |

   c2. r4 |
   e,8( g) c e,( g) c e,( g) |
   e,8( g) c e,( g) c e,( g) |
   c4 e g a |

   r2 r8 c4 c8~ |
   c8 e,( g) c~c4 r4 |
   c8 e,( g) c~c4 r4 |
   c4 bf g e |

   c2. r4 |
   f,8( a) c f,( a) c f,( a) |
   f,8( a) c f,( a) c f,( a) |
   f4 a c d |

   r2 r8 c4 c8~ |
   c8 f,8( a) c~c4 r4 |
   c8 f,8( a) c~c4 r4 |
   ef4 d c a |

   c2. r4 |
   e,8( g) c e,( g) c e,( g) |
   e,8( g) c e,( g) c e,( g) |
   c,4 e g a |

   r2 r8 c4 c8~ |
   c8 e,( g) c~c4 r4 |
   c8 e,( g) c~c4 r4 |
   c4 a g e |

   }
   \alternative {
     {
       c8 c c c c c c c |
       g8 g g g a a a a |
       e8 e e e f f f f |
       c4 c f f |

       c8 c c c c c c c |
       g8 g g g a a a a |
       e8 e e e f f f f |
       fs4 fs f f |
     }
     {
       c8 c c c c c c c |
       g8 g g g a a a a |
       e8 e e e f f f f |
       c4 c f f |

       c8 c4 c8~c2 |
       bf8 a4 g8~g2 |
       g8 f4 e8~e2 |
       gs8 g4 c,8~c2 |
     }
   }

   % [B] Second theme bar 21

   \repeat volta 2 {

     c8( a4) c8~c4 r4 |
     a8( g4) a8~a4 r4 |
     e8( d4) ef8~ef4 ef'8 d~ |
     c8 r8 c4~c8 d ef4( |

     r8 f,( a) c e8 e4. |
     r8 c,( f) a b8 b4. |
     d4 r8 b,8~b2 |
     d8) r r g,~g2 |

     c8( a4) c8~c4 r4 |
     a8( g4) a8~a4 r4 |
     e8( d4) ef8(~ \times 2/3 { ef8 c) b } a4( |
     c8 r8 c4~c8 d ef4( |

     r8 f,( a) c e8 g4. |
     r8 c,( f) a b8 b4. |
     c8) c4 b8~b d f4 |
     d8) r r g,~g2 |

     c,8( a4) c8~c4 r4 |
     a8( g4) a8~a4 r4 |
     e8( d4) e8~e4 ef'8 d~ |
     c8 r8 c4~c8 d ef4( |

     r8 f,( a) c e8 g4 e8 |
     r8 c,( f) a b8 b4. |
     d4 r4 c,8 f4 g8 |
     d8) r r g,~g2 |

   }
   \alternative {
     {
       g8\f g g g g g g g |
       b8\f b b b bf bf bf bf |
       f8\f f f f e e e e |
       g2\f g2 |
       
       g4 ef8 d~d c4. |
       b4 c8 b~b a4. |
       f4 ds8 d~d e4. |
       g'4 gs g c, |
     }
     {
       g'8\f g r d g g r d |
       b8\f b r d bf bf r d |
       f8\f f r e e e r e |
       g'2\f g,2 |
       
       g4 ef8 d~d c4. |
       b4 c8  b~b g4. |
       f4 ds8 d~d e4. |
       r4 gs8 g~g c4. |
     }     
   }

   % [C] Bar 31 Solo in 3rd

   r8 g4. bf2 |
   r8 e4. fs2 |
   \acciaccatura { c16 d e f } g8 e4 ef4 c4 d8~ |
   c4 r ef r |

   a1 |
   f1 |
   d8 c d c a g4. |
   d4 r g r |

   r8 g4. bf2 |
   \acciaccatura { d16 ds } e8 g a g c a f ef |
   r8 e4. fs2 |
   c,4 r ef r |

   a1 |
   d8 f a c e g4. |
   f2. \times 2/3 { g8 a g } |
   d4 r g r |

   r8 g4. bf2 |
   r8 e4. fs2 |
   c8 bf4. fs8 ef4. |
   c,4 r ef r |

   c2 r8 g'4 e8 |
   d4 r g r |
   a8 f4. d8 g,4. |
   d4 r g r |

   g8 g r e g g r e |
   b8 b r g bf bf r g |
   f''8 f r e e e r e |
   r4 g r g |

   g4 ef8 d~d c4. |
   b4 bf8 a~a g4. |
   f4 fs8 f~f r ef' c |
   r4 gs g c, |

   % [D] Bar 39 More solo

   r8 g4. bf2 |
   r8 e4. fs2 |
   ef8 c a c a fs a fs |
   c4 c ef ef |

   a2. r4 |
   r2 r8 c ef d |
   f!8 d a bf~bf g4. |
   d4 d g g |

   r8 g4. bf2 |
   c8 c, e a fs ds c a |
   r8 e4. fs2 |
   c,4 r ef r |

   a2. r4 |
   f8 g f a16 as b8 d4. |
   r8 c4. r8 f4. |
   d4 r g r |
  
   r8 g4. as2 |
   e4 r fs4 r |
   c4 r ef4 r |
   r4 c, r ef |

   c2 r8 g4\f e8 |
   r8 f4. r8 b,4. |
   bf'8( b bf) r g( af g) r |
   d4 d g g |

   g8 g r e g g r e |
   b8 b r e bf bf r e |
   f8 f r e e e r e |
   r4 g r g, |

   g4 ef8 d~d r   e  ef |
   b4 bf8 a~a r   e' ef |
   f4 fs8 f~f r   e  ef |
   r4 gs'8 g~g r  e  ef |

   % Bar 47 Bridge.

   d e f g  gs a4 a8 |
   d e f g  gs a4 a8 |
   d e f g  gs a4 a8 |
   d e f g  gs a4 a8 |

   r2 g2 |
   r2 f2 |
   r2 b2 |
   r2 g2 |

   % [E] Bar 49 Repeated section

   \repeat volta 3 {

   e8(_\fmppp g c) e,( g c) e,( g |
   c8(_\fmppp e g) c,( e g) c,( e |
   g8(_\fmppp c e) g,( c e) g,( c |
   c,4 e g a |

   c8) e,( g c)~c4 r4 |
   g8) c,( e g)~g4 r4 |
   e8) g,( c e)~e4 r4 |
   c4 a g e |

   e,8( g c) e,( g c) e,( g |
   c,8( e g) c,( e g) c,( e |
   g,8( c e) g,( c e) g,( c |
   c4 e g a |

   c8) e,( g c)~c4 r4 |
   g8) c,( e g)~g4 r4 |
   e8) g,( c e)~e4 r4 |
   c4 a g e |

   f,8( a c) f,( a c) f,( a |
   d8( f a) d,( f a) d,( f |
   a,8( c d) a ( c d) a ( c |
   f4 a c d |

   c8) f,( a c)~c4 r4 |
   a8) d,( f a)~a4 r4 |
   d8) a(  c d)~d4 r4 |
   ef4 d c a |

   e,8( g c) e,( g c) e,( g |
   c,8( e g) c,( e g) c,( e |
   g,8( c e) g,( c e) g,( c |
   c,4 e g a |

   c8) e,( g c)~c4 r4 |
   g8) c,( e g)~g4 r4 |
   e8) g,( c e)~e4 r4 |
   c4 a g e |

   g8( b d) g,( b d) g,( b |
   f8( g b) f ( g b) f ( g |
   b8( d f) b,( d f) b,( d |
   g4 b d b |

   d8) g, b d~d4 r4 |
   b8) f  g b~b4 r4 |
   f8) b, d f~f4 r4 |
   g f e d |

   }

   \alternative {
     {
       r8 g, fs g gs a bf b |
       r8 e, ds e ef f g gs |
       r8 c, c c c cs d ef |
       r8 g, fs g gs a bf b |

       c8 r c,2.~ |
       a8 r r2. |
       e8 r r2. |
       c8 r c2.~ |

       c1~ |
       R1 |
       R1 |
       c1~ |

       c1 |
       R1 |
       R1 |
       c1 |
     }
     {
       r8 g' fs g gs a bf b |
       r8 e ds e ef f g gs |
       r8 c c c c cs d ef |
       r8 g fs g gs a bf b |
     }
   }

   c8 r r4 r8 c'4->\ff c8~ |
   a8 r r4 r8 a'4->\ff r8 |
   e8 r r4 r8 d'4->\ff r8 |
   c8 r r4 r8 f4->\ff r8 |

   % [F] Bar 65 Final stretch

   c1 |
   e8( g c) e,( g c) e,( g |
   c8( e g) c,( e g) c,( e |
   c4 e g a |

   c4 r8 c r8 c4 c8~ |
   c8) e,( g c~c4) r4 |
   g8) c,( e g~g4) r4 |
   c4 a g e|

   c1 |
   e,8( g c) e,( g c) e,( g |
   c,8( e g) c,( e g) c,( e |
   c4 e g a |

   c4 r8 c r8 c4 c8~ |
   c8) e,( g c~c4) r4 |
   g8) c,( e g~g4) r4 |
   c4 a g e|

   c1 |
   f,8( a c) f,( a c) f,( a |
   c,8( f a) c,( f a) c,( f |
   f4 a c d |

   c4 r8 c r8 c4 c8~ |
   c8) f,( a c~c4) r4 |
   a8) c,( f a~a4) r4 |
   f4 d c a |

   c1 |
   e,8( g c) e,( g c) e,( g |
   c,8( e g) c,( e g) c,( e |
   c,4 e g a |

   c4 r8 c r8 c4 d8~ |
   c8) e,( g c~c4) r4 |
   g8) c,( e g~g4) r4 |
   c4 a g e|

   d1 |
   g,8( b d) g,( b d) g,( b |
   f,8( g b) f ( g b) f ( g |
   c4 e g a |

   d4 r8 d,8 r2 |
   d8) g,( b d~d4) r4 |
   b8) f ( g b~b4) r4 |
   c4 a g e |

   % [G] Bar 73 

   g,4 fs8 g af a bf b |
   e,4 ds8 e e f fs g |
   c,4 b8 c c cs d ef |
   c2. r8 c'8 |

   c4 b8 c cs d ef e |
   gs4 g8 gs a bf b c |
   e4 ef8 e g fs f bf |
   c,2 c'8 c,4 c'8 |

   f4 ef8 e f fs g gs |
   cs4 b8 c cs d ef e |
   a4 a8 gs g c b bf |
   c,2 c'8 c,4 c'8 |

   a4 gs8 a bf4 bf4 |
   f4 e8 f fs4 fs4 |
   cs4 c8 cs d4 d4 |
   c,2 c'4 c4 |

   a8 bf8 b4 b4 bf8 b |
   f8 fs g4 g4 fs8 g |
   cs8 d ef4 ef4 d8 ef |
   c,4 c'8 c,8 r8 c'8 c,r |

   c2 gs8-> a-> bf-> b-> |
   gs2 r2 |
   e2 r2 |
   r4 c4 r2 |

   c1~ |
   r8 e b' a g ef e b |
   R1 |
   R1 |

   c2. r4 |
   c8 r8 r4 r2 |
   c8( e b a g ef f b |
   c8( e b a g ef f b |

   r2 c8-> c4-> r8 |
   r2 c8-> c4-> r8 |
   c8) r8 r4 c8-> c4-> r8 |
   c8) r8 r4 c'8 c,4 r8 |

   c4-> r8 c8->~c2 |
   c4-> r8 c8->~c2 |
   c4-> r8 c8->~c2 |
   c'4-> r8 c,8~c2 |

}


clari =   \transpose bf bf { \common  \relative c'' \clari }
clarii =  \transpose bf bf { \common  \relative c'  \clarii }
clariii = \transpose bf bf { \common  \relative c' \clariii }
clarb =   \transpose bf bf { \common  \relative c' \clarb }

xtitle = "In The Mood"
%xinstrument = "not needed"
xcomposer = "Glenn Miller"
xarranger = "Arr Roberts"


\include "renderQuartet.ly"
