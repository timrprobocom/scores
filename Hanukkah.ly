\version "2.14.2"
\include "english.ly"

\paper {
    #(set-paper-size "letter" )
    ragged-last-bottom = ##t
}

\header {
    title = "A Hanukkah Festival"
    subtitle = "(Sevivon - Maoz Tzur - Hanukkah)"
    poet = "EUPHONIUM TC"
    arranger = "Arr Chris M Bernotas"
}


ritard = \markup { \italic { rit. } }
aTempo = \markup { \italic { a tempo } }
slightRit = \markup { \italic { slight rit. } }
moltoRit = \markup { \italic { molto rit. } }
moltoRall = \markup { \italic { molto rall. } }
bendWithLip = \markup { \italic { bend with lip } }
accelPoco = \markup { \italic { accel poco a poco } }
rallPoco = \markup { \italic { rall poco a poco } }

euphbc = \relative c {
   \override Staff.TimeSignature #'style = #'()
   %% \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
   \override MultiMeasureRest #'expand-limit = #1
   \compressFullBarRests
   \set Score.skipBars = ##t

   \time 2/4
   \key d \minor

   \mark \markup { \left-column { \smaller "\"Sevivon\""  Andante } }
%%   \mark \markup { \column {
%%     \line { \smaller "\"Sevivon\"" }
%%     \line { Andante }
%%   }}
   R2*8

   \mark \markup{ \box 9 }
   d2~\mf | d4 d8 d | d2~ | d4 d8 d | d2~ | d4 d8 d | d2 | d4 a'4 |
   \mark \markup{ \box 17  }
   d,2~ | d4 d8 d8 | d2~ | d4 a4 | d2~\> | d2~ | d8\!\mp r8 r4 | R2 |
   \mark \markup{ \box 25  }
   R2*2 |
   d2~\mf | d4 a8 a | d2~d4 d8 d | a4 a4 | d8 d8 d4 |
   \mark \markup{ \box 33 }
   \tempo "Slightly Faster"
   g8 r g r | d r d r | a' r a r | d, e f->( d) |
   g r g r | d r d r | a'\< r a r\! | d,->\f d-> d4-> |
   \mark \markup{ \box 41  }
   R2*4 | d8\mf d e4-> | f8 f8 e4-> | a8 a8 g16( f e d) |
   f8 f8 e4-> | d8 d8 e4-> | f8 f8 g4-> | a8\<  a a a, | d a d4-> |
   \mark \markup{ \box 53  }
   g8\!\f g4 f8 | f8 f4 f8 | g8 g4 g8 | f8 g a f |
   g8 g4 g8 | f8 f4 f8 | g8 g4 g8 | f8-> e-> d4->_"accel" | R2*2 |
   d8\mf\< c d fs\! \bar "||"

   \mark \markup{ \box 64 }
   \key g \minor
   \tempo "Brightly"
   g8\ff g a4 | bf8 bf8 a4 |
   g8 g8 a4 | bf8 bf8 a4 | g8 g8 a4 | bf8 bf8 a4 | g8 a bf fs | g8-> g-> g4-> |
   \mark \markup{ \box 72  }
   c,8 r c r | g' r g r | d r d r |
   g a bf->( g) | c, r c r | g' r g r | d r d4~-> | d\cresc d~-> | d d~-> |
     d d~-> | d2~ | d2\!\ff \fermata | 
     %% The "s1*0" lets me attach text to the multimeasure rest, above
     %% the fermata.
     \textLengthOn
     s1*0^\markup{ Cadenza }
     R2^\fermataMarkup
     \textLengthOff
     \bar "||"

   \time 4/4
   \key c \minor
   \mark \markup{ \box 85 }
   \grace s16^"Gently"
   R1*4
   \mark \markup{ \box 89 }
   R1*4 | df1\mf | ef4( d c) af' | g2 f2 | ef4( d bf2) |
   \mark \markup{ \box 97 }
   ef'8( d c bf af g f bf, |

   %% Page 2

   c2)-> d2->\< | ef4->\!\ff bf'-> af-> ef-> | <<f1-> {s2 s2\>}>> | r4\! ef2.->\mf |
     r4 bf2-> bf4 | ef4( d c bf) | bf4( c d bf) |
   \mark \markup{ \box 105 }
   ef2 ef | c d | ef f | d\< _\slightRit d4->( c4) | 
     c2\>\f _\aTempo bf4 ef4~\! | ef2\mf d2 | bf1~ | bf1 |
   \mark \markup{ \box 113 }
   R1*2 | ef4 ^"Soli" bf ef bf'~ | bf1 | g1~ | g1~ \bar "||"

   \mark \markup{ \box 119 }
   \time 2/4
   g8^\markup { \smaller "\"Hanukkah\"" }
   \tempo "Joyful!"
%%   g8^\markup \left-column { "\"Hanukkah\"" \larger Joyful! } 
       r8 r4 | 
       R1*3 | bf,2~\fp\< | bf2~ | bf2~ | bf2 | bf4\!\f bf~-> | bf bf-> |
   \mark \markup{ \box 129 }
   r8 ef\> r ef | r ef r ef\!\mf | r ef r ef | r ef r ef |
   \mark \markup{ \box 133 }
   r ef r ef | r ef r ef | r ef r ef | r ef r ef | r d r d |
   r d r d | r d d d | ef bf' af bf |
   \mark \markup{ \box 141 }
   g ef r ef | r ef r ef | r ef r ef | r ef r ef | r d r d | r d r d  |
   d d ef f | g4-. ef-> \bar "||"
   \mark \markup{ \box 149 }
   \key af \major
   ef4-> r4 | R2*3 | ef8\f c ef4 | ef8 c ef4 | c8 ef af g | f2 |
     d8 bf d4 | d8 bf d4 |
   bf8 e8 g f | ef2 |
   \mark \markup{ \box 161 }
   ef8 c ef4 | ef8 c ef4 | c8 ef af g | f2 | g8 g g4 | g8 g g4 | 
     g8 ef f g | af4-. bf-> \bar "||"
   \mark \markup{ \box 169 }
   \key ef \major
   ef4->\ff d-> | c-> bf-> | g-> g-> | af2-> | d4-> c-> bf-> af-> |
     f8-> bf-> af-> bf-> | g4-> bf-> |
   \mark \markup{ \box 177 }
   ef4-> d-> | c-> bf-> | g-> g-> | af2-> | f8-> g-> af4-> |
     d,8-> ef-> f4-> | bf,8-> c-> d-> ef-> | f-> g-> af-> bf-> |
   \mark \markup{ \box 185 }
   R2*2 | d,4->\mf\< f-> | af-> bf-> | ef,8->\!\ff d-> c-> bf-> |
      c-> bf-> af-> g-> | af-> g-> f'-> bf-> | r4 e,->~\sf | e2 |
      ef!4-^ r4 \bar "|."

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
