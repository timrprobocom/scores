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

common = {
  \numericTimeSignature 
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \override MultiMeasureRest.expand-limit = #1
  \override BreathingSign.text = \markup { \musicglyph #"scripts.caesura.straight" } 
  \time 4/4
  \tempo "Rock" 4=160
  \clef treble 
  \key e \minor
  \set Score.markFormatter = #format-mark-box-letters
}

notation = {
    s1*16 \bar "||" \mark \default
    s1*16 \bar "||" \mark \default
    s1*16 \bar "||" \mark \default
    s1*16 \bar "||" \mark \default
    s1*16 \bar "||" \mark \default \key f \major
    s1*16 \bar "||" \mark \default 
    s1*10 \bar "||" \mark \default 
    s1*12 \bar "|."
}

\parallelMusic  #'(clari clarii clariii clarb) {

   % First verse

   e8\mp d8 b8 r8 r2 |
   r4 e4\mp e4 e4 |
   r8 b\mp e,4 b'4 r8 e, |
   r8 b\mp e,4 b'4 r8 e, |

   r8 b8  b b  e e g4 | 
   e4 e4 e4 e4 |
   fs4 g4 r2 |
   fs4 g4 r2 |

   a4 d,8 d8~d8 c b4 |
   d4 d d d |
   r8 a d,4 a'4 r8 d, |
   r8 a d,4 a'4 r8 d, |

   r2 r8 a8~a8 b |
   d4 d d d |
   e4 fs4 r2 |
   e4 fs4 r2 |

   c4 d a b |
   c4 c c c  |
   r8 g c,4 g'4 r8 c, |
   r8 g c,4 g'4 r8 c, |

   c4 b a g |
   c4 c c c  |
   d4 e4 r2 |
   d4 e4 r2 |

   a8 g fs4 r2 |
   b4 b b b |
   r8 fs b,4 fs'4 r8 b,8 |
   r8 fs b,4 fs'4 r8 b,8 |

   R1 |
   b4 b b b |
   cs4 ds4 r2 |
   cs4 ds4 r2 |

   % Bar 9 I.... hear the sound of a church bell ring

   b'1\mf |
   e'1\mf |
   r8 b'\mf e,4 b'4 r8 e, |
   r8 b'\mf e,4 b'4 r8 e, |

   r4 b8 b8 b8 a8 g4 |
   R1 |
   fs4 g4 r2 |
   fs4 g4 r2 |

   d4 e4 b4~b8 a |
   d,4 d d d |
   r8 a d,4 a'4 r8 d, |
   r8 a d,4 a'4 r8 d, |

   fs8 r8 r4 r8 a8~a8 b |
   d4 d d d |
   e4 fs4 r2 |
   e4 fs4 r2 |

   c4 d a b |
   c4 c c c | 
   r8 g c,4 g'4 r8 c, |
   r8 g c,4 g'4 r8 c, |

   c4 b a g |
   c4 c c c |
   d4 e4 r2 |
   d4 e4 r2 |

   a8 g fs4 r2 |
   R1 | 
   b4\< ds4 fs4 c' |
   b4\< ds4 fs4 c' |

   R1 |
   R1 |
   b4 a g fs\! |
   b4 a g fs\! |

   % [A] Bar 17 First chorus

   R1 |
   g4\f g' f8 f8 e4 |
   d4(\f d'4 c2 |
   g,4\f g' f8 f8 e4 |

   R1 |
   g,4 a c d |
   b2 c2) |
   g,4 a c d |

   R1 |
   g,4 g' f8 f8 e4 |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   R1 |
   g,4 a c d |
   b2 c2) |
   g,4 a c d |

   d'2\f e4-> e4-> |
   b'2 c4-> c4-> |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   r4 r8 f8~f e8~e d |
   r4 r8 d8~d c8~c b |
   b2 c2) |
   g,4 a c d |

   e4 d4 e4-> e4-> |
   c4 b4 c4-> c4-> |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   r4 r8 f8~f e8~e e |
   r4 r8 d8~d c8~c c |
   b2 c2) |
   g,4 a c d |

   % (Same up a whole step, melody in 3rd)

   e2 fs4-> fs4-> |
   cs2 d4-> d4-> |
   cs2 d2 |
   a4 a' g8 g8 fs4 |

   r4 r8 g8~g fs8~fs e |
   r4 r8 e8~e d8~d cs |
   e4 r8 a,8~a8 a8~a8 b8 |
   a,4 b d e |

   fs4 e4 fs4-> fs4-> |
   d4 cs4 d4-> d4-> |
   r4 cs2. |
   a,4 a' g8 g8 fs4 |

   r4 r8 g8~g fs8~fs4 |
   r4 r8 e8~e d8~d4 |
   R1 |
   a,4 b d e |

   % (Same up a whole step, melody in 3rd)

   fs2 gs4-> gs4-> |
   ds2 e4-> e4-> |
   ds2 e2 |
   b4 b' a8 a8 gs4 |

   r4 r8 a8~a gs8~gs fs |
   r4 r8 fs8~fs e8~e ds |
   fs4 r8 b,8~b8 b8~b8 cs8 |
   b,4 cs  e fs |

   gs4 fs gs-> gs-> |
   e4 ds4 e-> e-> |
   r4 ds2. |
   b,4 b' a8 a8 gs4 |

   r4 r8 a8~a gs8~gs4 |
   r4 r8 fs8~fs e8~e4 |
   R1 |
   b,4 cs  e fs |

   % [B] Bar 33 second verse same as the first.
   % She's somehow closer now

   e8_\subMp d8 b8 r8 r2 |
   r4 e,_\subMp e e |
   r8 b_\subMp e,4 b'4 r8 e, |
   r8 b_\subMp e,4 b'4 r8 e, |

   r4 b4 e4 g4 |
   e4 e e e |
   fs4 g4 r2 |
   fs4 g4 r2 |

   a4 d,8 d8~d8 c b4 |
   d4 d d d |
   r8 a d,4 a'4 r8 d, |
   r8 a d,4 a'4 r8 d, |

   R1 |
   d4 d d d |
   e4 fs4 r2 |
   e4 fs4 r2 |

   c4 d a b |
   c4 c c c |
   r8 g c,4 g'4 r8 c, |
   r8 g c,4 g'4 r8 c, |

   c4 b a g |
   c4 c c c |
   d4 e4 r2 |
   d4 e4 r2 |

   a8 g fs4 r2 |
   b4 b b b |
   r8 fs b,4 fs'4 r8 b,8 |
   r8 fs b,4 fs'4 r8 b,8 |

   R1 |
   b4 b b b |
   cs4 ds4 r2 |
   cs4 ds4 r2 |

   % Bar 41 When ... I look in her eyes

   b'1~\mf |
   e'1\mf | 
   r8 b'\mf e,4 b'4 r8 e, |
   r8 b'\mf e,4 b'4 r8 e, |

   b2~b8 a8 g4 |
   R1 |
   fs4 g4 r2 |
   fs4 g4 r2 |

   d4 e4 b4~b8 a |
   d,4 d d d |
   r8 a d,4 a'4 r8 d, |
   r8 a d,4 a'4 r8 d, |

   fs8 r8 r4 r8 a8~a8 b |
   d4 d d d |
   e4 fs4 r2 |
   e4 fs4 r2 |

   c4 d a b |
   c4 c c c |
   r8 g c,4 g'4 r8 c, |
   r8 g c,4 g'4 r8 c, |

   c4 b a g |
   c4 c c c |
   d4 e4 r2 |
   d4 e4 r2 |

   a8 g fs4 r2 |
   R1 | 
   b4\< ds4 fs4 c' |
   b4\< ds4 fs4 c' |

   R1 |
   R1 |
   b4 a g fs\! |
   b4 a g fs\! |

   % [C] Bar 49 Second chorus.

   R1 |
   g4\f g' f8 f8 e4 |
   d4(\f d'4 c2 |
   g,4\f g' f8 f8 e4 |

   R1 |
   g,4 a c d |
   b2 c2) |
   g,4 a c d |

   R1 |
   g,4 g' f8 f8 e4 |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   R1 |
   g,4 a c d |
   b2 c2) |
   g,4 a c d |

   d'2\f e4 e4 |
   b'2 c4 c4 |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   r4 r8 f8~f e8~e d |
   r4 r8 d8~d c8~c b |
   b2 c2) |
   g,4 a c d |

   e4 d4 e4 e4 |
   c4 b4 c4 c4 |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   r4 r8 f8~f e8~e e |
   r4 r8 d8~d c8~c c |
   b2 c2) |
   g,4 a c d |

   % (Same up a whole step, melody in 3rd)

   e2 fs4-> fs4-> |
   cs2 d4-> d4-> |
   cs2 d2 |
   a4 a' g8 g8 fs4 |

   r4 r8 g8~g fs8~fs e |
   r4 r8 e8~e d8~d cs |
   e4 r8 a,8~a8 a8~a8 b8 |
   a,4 b d e |

   fs4 e4 fs4-> fs4-> |
   d4 cs4 d4-> d4-> |
   r4 cs2. |
   a,4 a' g8 g8 fs4 |

   r4 r8 g8~g fs8~fs4 |
   r4 r8 e8~e d8~d4 |
   R1 |
   a,4 b d e |

   % (Same up a whole step, melody in 3rd)

   fs2 gs4-> gs4-> |
   ds2 e4-> e4-> |
   ds2 e2 |
   b4 b' a8 a8 gs4 |

   r4 r8 a8~a gs8~gs fs |
   r4 r8 fs8~fs e8~e ds |
   fs4 r8 b,8~b8 b8~b8 cs8 |
   b,4 cs  e fss |

   gs4 fs gs-> gs-> |
   e4 ds4 e-> e-> |
   r4 ds2. |
   b,4 b' a8 a8 gs4 |

   r4 r8 a8~a gs8~gs4 |
   r4 r8 fs8~fs e8~e4 |
   R1 |
   b,4 cs  e fss |

   % [D] Bar 65 -- second main theme.
   %  ....  ta tions!

   r2 cs,4 ds4~ |
   b8 ds a' ds, b4 gs' |
   b8 ds fs ds b4 e |
   b,4 r b r |
     
   ds1 |
   b,4 fs' b, gs' |
   b4 ds b e |
   b4 r b r |

   R1 |
   b,8 ds a' ds, b4 gs' |
   b8 ds fs ds b4 e |
   b4 r b r |
     
   R1 |
   b,4 fs' b, gs' |
   b4 ds b e |
   b4 r b r |

   b'1~ |
   b,8 ds a' ds, b4 gs' |
   b8 ds fs ds b4 e |
   b4 r b r |
     
   b1 |
   b,4 fs' b, gs' |
   b4 ds b e |
   b4 r b r |

   a2 gs2 |
   b,8 ds a' ds, b4 gs' |
   b8 ds fs ds b4 e |
   b4 r b r |
     
   fs2 e2 |
   b,4 fs' b, gs' |
   b4 ds b e |
   b4 r b r |

   % I don't know where but she sends me there.   Chord moves to E.

   b'8 b~b b~b a gs a~ |
   e1~ |
   e,4 gs a gs |
   e4 b cs b |
     
   a4 b b8 a gs4 |
   e1 |
   e4 gs a gs |
   e4 b cs b |

   R1 |
   d'2 cs2 |
   e4 gs a gs |
   e4 b cs b |
     
   R1 |
   b2 a4 gs |
   e4 gs a gs |
   e4 b cs b |

   % Back to B.

   b,8 ds fs ds b4 e |
   fs4 b,4 r2 |
   b8 ds a' ds, b4 gs' |
   b4 r b r |
     
   b4 ds b e |
   b4 fs' b, gs' |
   R1 |
   b4 r b r |

   b8 ds fs ds b4 e |
   b,8 ds a' ds, b4 gs' |
   R1 |
   b4 r b r |
     
   b4 ds b e |
   b,4 fs' b, gs' |
   R1 |
   b4 r b r |

   % [E] bar 81 Third major theme. 
   % This should be in F# major but screw that.
   % Gotta keep those love good

   R1 |
   R1 |
   f,1~\mf |
   f1~\mf |

   R1 |
   R1 |
   f1 |
   f1 |

   R1 |
   R1 |
   g1 |
   g1 |

   R1 |
   R1 |
   a4 a4 a8 d,8~d4 |
   a4 a4 a8 d 8~d4 |

   r4 a,2\mf gs8 a8 |
   r4 a,2\mf gs8 a8 |
   f1~ |
   f,1~ |

   r8 c,8~c4 d4 f4 |
   r8 c,8~c4 d4 f4 |
   f1 |
   f1 |

   r4 g8 g8~g8 g8~g8 g8 |
   r4 g8 g8~g8 g8~g8 g8 |
   g1 |
   g1 |

   a4 g4 f8 d8~d4 |
   a4 g4 f8 d8~d4 |
   a4 a4 a8 d,8~d4 |
   a4 a4 a8 d 8~d4 |

   r4 a'2 gs8 a8 |
   r4 a''2 gs8 a8 |
   f1~ |
   f,1~ |

   r8 c,8~c4 d4 f4 |
   r8 c,8~c4 d4 f4 |
   f1 |
   f1 |

   r4 g8 g8~g8 g8~g8 g8 |
   r4 g8 g8~g8 g8~g8 g8 |
   g1 |
   g1 |

   a4 g4 f8 d8~d4 |
   a4 g4 f8 d8~d4 |
   a4 a4 a8 d,8~d4 |
   a4 a4 a8 d 8~d4 |

   R1 |
   R1 |
   f1~\p |
   f,1~\p |

   R1 |
   R1 |
   f1 |
   f1 |

   ef'1\f-> |
   c1\f-> |
   a1\f-> |
   f1\f-> |

   R1 |
   R1 |
   R1 |
   R1 |

  % [F] return to chorus in reverse order.  Bb then Ab then Gb.

   r4 bf' af8 af g4 |
   r4 bf  af8 af g4 |
   f4( f' ef2 |
   d'2 ef4-> ef4-> |

   bf,4 c d f |
   bf,4 c d f |
   d2 ef2) |
   r4 r8 f8~f8 ef8~ef8 d8 |

   r4 bf af8 af g4 |
   r4 bf af8 af g4 |
   f,4( f' ef2 |
   ef4 d4 ef4-> ef4-> |

   bf,4 c d f |
   bf,4 c d f |
   d2 ef2) |
   r4 r8 f8~f8 ef8~ef8 d8 |

   r4 af gf8 gf f4 |
   r4 af gf8 gf f4 |
   ef,4( ef' df2 |
   c2 df4-> df4-> |

   af,4 bf c ef |
   af,4 bf c ef |
   c2 df2) |
   r4 r8 ef8~ef8 df8~df8 c8 |

   r4 af gf8 gf f4 |
   r4 af gf8 gf f4 |
   ef,4( ef' df2 |
   df4 c4 df4-> df4-> |

   af,4 bf c ef |
   af,4 bf c ef |
   c2 df2) |
   r4 r8 ef8~ef8 df8~df8 c8 |

   R1 |
   R1 |
   R1 |
   gf4 gf gf gf |

   R1 |
   R1 |
   R1 |
   gf4 gf gf gf |

   % [G] bar 107 finale.

   gf,8 af bf cf df2 |
   R1 |
   r2 r4 gf,4 |
   r2 r4 gf4 |

   ef8 df bf2. |
   r2 df4 gf4 |
   R1 |
   R1 |

   af8 bf c df ef2 |
   af4 ef'8 df c4 af4 |
   af4 ef'8 df c4 af4 |
   af1 |

   f8 ef c2. |
   r4 ef af c |
   r4 ef af c |
   af1 |

   bf8 c d ef f2 |
   r4 f8 ef d4 bf |
   r4 f8 ef d4 bf |
   bf1 |

   g8 f d2. |
   r4 f bf d |
   r4 f bf d |
   bf1 |

   af8 bf c df ef2 |
   af4 ef'8 df c4 af4 |
   af4 ef'8 df c4 af4 |
   af1 |

   f8 ef c2. |
   r4 ef af c |
   r4 ef af c |
   af1 |

   R1 |
   R1 |
   ef,4(_\fade ef' df2 |
   af4_\fade af af af |

   R1 |
   R1 |
   c2 df2) |
   af4 af af af |

   R1 |
   R1 |
   ef,4( ef' df2 |
   af4 af af af |

   R1 |
   R1 |
   c2 df2) |
   af4 af af af |
}


clari =   \transpose bf bf { \common  \relative c'' \clari }
clarii =  \transpose bf bf { \common  \relative c'  \clarii }
clariii = \transpose bf bf { \common  \relative c'' \clariii }
clarb =   \transpose bf bf { \common  \relative c'' \clarb }

xtitle = "Good Vibrations"
%xinstrument = "not needed"
xcomposer = "Brian Wilson"
xarranger = "Arr Roberts"


\include "renderQuartet.ly"
