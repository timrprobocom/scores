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
    s1*16 \bar "|."
}

\parallelMusic  #'(clari clarii clariii clarb) {

   % First verse

   e8 d8 b8 r8 r2 |
   R1 |
   r8 b e,4 b'4 r8 e, |
   r8 b e,4 b'4 r8 e, |

   r8 b8  b b  e e g4 | 
   R1 |
   fs4 g4 r2 |
   fs4 g4 r2 |

   a4 d,8 d8~d8 c b4 |
   R1 |
   r8 a d,4 a'4 r8 d, |
   r8 a d,4 a'4 r8 d, |

   r2 r8 a8~a8 b |
   R1 |
   e4 fs4 r2 |
   e4 fs4 r2 |

   c4 d a b |
   R1 |
   r8 g c,4 g'4 r8 c, |
   r8 g c,4 g'4 r8 c, |

   c4 b a g |
   R1 |
   d4 e4 r2 |
   d4 e4 r2 |

   a8 g fs4 r2 |
   R1 |
   r8 fs b,4 fs'4 r8 b,8 |
   r8 fs b,4 fs'4 r8 b,8 |

   R1 |
   R1 |
   cs4 ds4 r2 |
   cs4 ds4 r2 |

   % Bar 9 I.... hear the sound of a church bell ring

   b'1 |
   R1 |
   r8 b' e,4 b'4 r8 e, |
   r8 b' e,4 b'4 r8 e, |

   r4 b8 b8 b8 a8 g4 |
   R1 |
   fs4 g4 r2 |
   fs4 g4 r2 |

   d4 e4 b4~b8 a |
   R1 |
   r8 a d,4 a'4 r8 d, |
   r8 a d,4 a'4 r8 d, |

   fs8 r8 r4 r8 a8~a8 b |
   R1 |
   e4 fs4 r2 |
   e4 fs4 r2 |

   c4 d a b |
   R1 | 
   r8 g c,4 g'4 r8 c, |
   r8 g c,4 g'4 r8 c, |

   c4 b a g |
   R1 |
   d4 e4 r2 |
   d4 e4 r2 |

   a8 g fs4 r2 |
   R1 | 
   b4 ds4 fs4 c' |
   b4 ds4 fs4 c' |

   R1 |
   R1 |
   b4 a g fs |
   b4 a g fs |

   % [A] Bar 17 First chorus

   R1 |
   R1 |
   d4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   R1 |
   R1 |
   b2 c2) |
   g,4 a b d |

   R1 |
   R1 |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   R1 |
   R1 |
   b2 c2) |
   g,4 a b d |

   d'2 e4 e4 |
   b'2 c4 c4 |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   r4 r8 f8~f e8~e d |
   r4 r8 d8~d c8~c b |
   b2 c2) |
   g,4 a b d |

   e4 d4 e4 e4 |
   c4 b4 c4 c4 |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   r4 r8 f8~f e8~e e |
   r4 r8 d8~d c8~c c |
   b2 c2) |
   g,4 a b d |

   % (Same up a whole step, melody in 3rd)

   e2 fs4-> fs4-> |
   cs2 d4-> d4-> |
   cs2 d2 |
   a4 a' g8 g8 fs4 |

   r4 r8 g8~g fs8~fs e |
   r4 r8 e8~e d8~d cs |
   e4 r8 a,8~a8 a8~a8 b8 |
   a,4 b cs e |

   fs4 e4 fs4-> fs4-> |
   d4 cs4 d4-> d4-> |
   r4 cs2. |
   a,4 a' g8 g8 fs4 |

   r4 r8 g8~g fs8~fs4 |
   r4 r8 e8~e d8~d4 |
   R1 |
   a,4 b cs e |

   % (Same up a whole step, melody in 3rd)

   fs2 gs4-> gs4-> |
   ds2 e4-> e4-> |
   ds2 e2 |
   b4 b' a8 a8 gs4 |

   r4 r8 a8~a gs8~gs fs |
   r4 r8 fs8~fs e8~e ds |
   fs4 r8 b,8~b8 b8~b8 cs8 |
   b,4 cs ds g |

   gs4 fs gs-> gs-> |
   e4 ds4 e-> e-> |
   r4 ds2. |
   b,4 b' a8 a8 gs4 |

   r4 r8 a8~a gs8~gs4 |
   r4 r8 fs8~fs e8~e4 |
   R1 |
   b,4 cs ds g |

   % [B] Bar 33 second verse same as the first.

   e8 d8 b8 r8 r2 |
   R1 |
   r8 b e,4 b'4 r8 e, |
   r8 b e,4 b'4 r8 e, |

   r8 b8  b b  e e g4 | 
   R1 |
   fs4 g4 r2 |
   fs4 g4 r2 |

   a4 d,8 d8~d8 c b4 |
   R1 |
   r8 a d,4 a'4 r8 d, |
   r8 a d,4 a'4 r8 d, |

   r2 r8 a8~a8 b |
   R1 |
   e4 fs4 r2 |
   e4 fs4 r2 |

   c4 d a b |
   R1 |
   r8 g c,4 g'4 r8 c, |
   r8 g c,4 g'4 r8 c, |

   c4 b a g |
   R1 |
   d4 e4 r2 |
   d4 e4 r2 |

   a8 g fs4 r2 |
   R1 |
   r8 fs b,4 fs'4 r8 b,8 |
   r8 fs b,4 fs'4 r8 b,8 |

   R1 |
   R1 |
   cs4 ds4 r2 |
   cs4 ds4 r2 |

   % Bar 41 I.... hear the sound of a church bell ring

   b'1 |
   R1 | 
   r8 b' e,4 b'4 r8 e, |
   r8 b' e,4 b'4 r8 e, |

   r4 b8 b8 b8 a8 g4 |
   R1 |
   fs4 g4 r2 |
   fs4 g4 r2 |

   d4 e4 b4~b8 a |
   R1 |
   r8 a d,4 a'4 r8 d, |
   r8 a d,4 a'4 r8 d, |

   fs8 r8 r4 r8 a8~a8 b |
   R1 |
   e4 fs4 r2 |
   e4 fs4 r2 |

   c4 d a b |
   R1 |
   r8 g c,4 g'4 r8 c, |
   r8 g c,4 g'4 r8 c, |

   c4 b a g |
   R1 |
   d4 e4 r2 |
   d4 e4 r2 |

   a8 g fs4 r2 |
   R1 | 
   b4 ds4 fs4 c' |
   b4 ds4 fs4 c' |

   R1 |
   R1 |
   b4 a g fs |
   b4 a g fs |

   % [C] Bar 49 Second chorus.

   R1 |
   R1 |
   d4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   R1 |
   R1 |
   b2 c2) |
   g,4 a b d |

   R1 |
   R1 |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   R1 |
   R1 |
   b2 c2) |
   g,4 a b d |

   d'2 e4 e4 |
   b 2 c4 c4 |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   r4 r8 f8~f e8~e d |
   r4 r8 d8~d c8~c b |
   b2 c2) |
   g,4 a b d |

   e4 d4 e4 e4 |
   c4 b4 c4 c4 |
   d,4( d'4 c2 |
   g,4 g' f8 f8 e4 |

   r4 r8 f8~f e8~e e |
   r4 r8 d8~d c8~c c |
   b2 c2) |
   g,4 a b d |

   % (Same up a whole step, melody in 3rd)

   e2 fs4-> fs4-> |
   cs2 d4-> d4-> |
   cs2 d2 |
   a4 a' g8 g8 fs4 |

   r4 r8 g8~g fs8~fs e |
   r4 r8 e8~e d8~d cs |
   e4 r8 a,8~a8 a8~a8 b8 |
   a,4 b cs e |

   fs4 e4 fs4-> fs4-> |
   d4 cs4 d4-> d4-> |
   r4 cs2. |
   a,4 a' g8 g8 fs4 |

   r4 r8 g8~g fs8~fs4 |
   r4 r8 e8~e d8~d4 |
   R1 |
   a,4 b cs e |

   % (Same up a whole step, melody in 3rd)

   fs2 gs4-> gs4-> |
   ds2 e4-> e4-> |
   ds2 e2 |
   b4 b' a8 a8 gs4 |

   r4 r8 a8~a gs8~gs fs |
   r4 r8 fs8~fs e8~e ds |
   fs4 r8 b,8~b8 b8~b8 cs8 |
   b,4 cs ds g |

   gs4 fs gs-> gs-> |
   e4 ds4 e-> e-> |
   r4 ds2. |
   b,4 b' a8 a8 gs4 |

   r4 r8 a8~a gs8~gs4 |
   r4 r8 fs8~fs e8~e4 |
   R1 |
   b,4 cs ds g |

   % [D] Bar 65 -- second main theme.

}


clari =   \transpose bf bf { \common  \relative c'' \clari }
clarii =  \transpose bf bf { \common  \relative c'  \clarii }
clariii = \transpose bf bf { \common  \relative c'' \clariii }
clarb =   \transpose bf bf { \common  \relative c'' \clarb }

xtitle = "Good Vibrations"
%xinstrument = "from Chicago"
xcomposer = "Brian Wilson"
xarranger = "Arr Roberts"


\include "renderQuartet.ly"
