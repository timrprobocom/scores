\version "2.14.2"
\include "english.ly"

\paper {
    #(set-paper-size "letter" )
    ragged-last-bottom = ##t
    system-system-spacing #'basic-distance = #20
}

\header {
    title = "O Magnum Mysterium"
    poet = "Euphonium TC"
    arranger = "Morton Lauridsen"
}


ritard = \markup { \italic { rit. } }
aTempo = \markup { \italic { a tempo } }
slightRit = \markup { \italic { slight rit. } }
pocoRit = \markup { \italic { poco rit. } }
moltoRit = \markup { \italic { molto rit. } }
moltoRall = \markup { \italic { molto rall. } }
bendWithLip = \markup { \italic { bend with lip } }
accelPoco = \markup { \italic { accel poco a poco } }
rallPoco = \markup { \italic { rall poco a poco } }

euphbc = \relative c' {
   \override Staff.TimeSignature #'style = #'()
   %% \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
   \override MultiMeasureRest #'expand-limit = #1
   \compressFullBarRests
   %% \set Score.skipBars = ##t

   \time 4/4
   \key ef \major

   g1\p
   \mark \markup { Adagio, molto legato e espressivo } |
   d2 d4 d4 | c1( | bf1)\fermata |
   \mark \markup{ \box A } c'1^"A tempo" | bf2. bf4 |
   af1( | g1) |
   \time 3/2
   d2( ef4 af2 af4) | g2( bf4) ef2\mp\< ef4\! |
   \mark \markup{ \box B } \time 4/4
   c1(\mf |
   bf2.) bf4 | g2.\> g4\!\mp | af2.( c,4 | bf2.) c4 | 
       d2(^\ritard c4)\fermata c4\p | c2. c4 |
   %% Bar 18
   d2 d2\fermata | \mark \markup{ \box C } R1*3 r1 
   \mark \markup{ \smaller "poco rit" \box D \smaller "A tempo" } R1*4
   \time 3/2 R1.*2 
   \mark \markup{ \box E } \time 4/4 R1*5
   r2 r4\fermata r4 | R2*2 | r1^\ritard |
   \mark \markup{ \box F } \time 3/2 R1.*3^"A tempo" | r1.^\pocoRit |
     r1.^"A tempo" |
   %% Bar 43
   r2 r2 g2\pp\< | g1 c2 | f4( ef) ef( bf ef2)^"rit." |
   \mark \markup{ \box G }
   \time 4/4
   r4^"A tempo, deliberamente" ef4\f af f | bf,2 bf4-- d |
   %% Bar 48
%%   ef1 | ef4 ef4\<^"molto rit." bf4 g4\! | ef1(\ff^"A tempo" | f4) f f f |
   ef1 | ef4 ef4\<^\moltoRit bf4 g4\! | ef1(\ff^"A tempo" | f4) f f f |
       bf1( | bf1)\> | \time 3/2 d,2\mp\! ef4 af2\< af4\! |
   %% Bar 55
   g2( bf4) ef2\mf\< ef4\! |
   \mark \markup{ \box H } \time 4/4
   c1(\f | d2.) d4 | g,2.\> g4\!\mp | af2. c,4 | bf2. c4 |
   %% Bar 61
%%   d2(^"rit" c4)\fermata c\p | c2.^"molto rit." c4 |
   d2(^"rit" c4)\fermata c\p | c2.^\moltoRit c4 |
   \mark \markup{ \box I }
   r4 bf'2\mp^"solo"_"dolce" bf4 | bf4( c af bf) | bf4 bf2\p_"non solo" bf4 |
     bf1( |
   c1) | bf1( | bf2\fermata bf2 | bf1)^\ritard\> | bf2\!\pp bf2 |
     bf2 af2\fermata | g1\fermata_"niente" \bar "|."

}




%% Turn on the other multimeasure rests

\score {
%%  { \clef bass \transpose c, c, \euphbc }
  { \clef treble \transpose c, d \euphbc }
  \layout {
    \context {
      \Score
      \override SpacingSpanner
          #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
}
