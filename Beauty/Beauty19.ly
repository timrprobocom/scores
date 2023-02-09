%{
    Comments
%}
\version "2.10.33"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    ragged-last-bottom = ##t
}

\header {
    title = "19 Transformation"
}

ritard = \markup { \italic { rit. } }
moltoRit = \markup { \italic { molto rit. } }
pocoRit = \markup { \italic { poco rit. } }
moltoRall = \markup { \italic { molto rall. } }
bendWithLip = \markup { \italic { bend with lip } }
accelPoco = \markup { \italic { accel poco a poco } }
rallPoco = \markup { \italic { rall poco a poco } }

clarinet = \relative c''' {
  \clef treble \key d \major
  \override Staff.TimeSignature #'style = #'()
  \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
  \override MultiMeasureRest #'expand-limit = #1
  \compressFullBarRests
  \time 2/2
  \tempo "Poco Vivace"

  \override BreathingSign #'text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }

  %R1*2 R1*4

  \set Score.currentBarNumber = #7
  \mark "(Flute)"
  b1->~\f | b8 r8 b8 cs8 d4-> cs-> | cs2-> a~-> | a2. cs4-> |
  \set Score.currentBarNumber = #15

  \break \bar "|:"
  \repeat volta 2 {
    d1->~ | d8 r8 d e f4-> e-> | e2-> c-> | g-> e-> 
  }
  \break \bar ":|:"
  \repeat volta 2 {
    d16(\ff e) fs-. a-. 
    d,16( e) fs-. a-. 
    d,16( e) fs-. a-. 
    d,16( e) fs-. a-.  | R1
    d,16( e) f-. bf-. 
    d,16( e) f-. bf-. 
    d,16( e) f-. bf-. 
    d,16( e) f-. bf-.  | R1
  }
  d,16( e) fs-. a-. 
  d,16( e) fs-. a-. 
  d,16( e) fs-. a-. 
  d,16( e) fs-. a-.  | R1
  d,16( e) f-. bf-. 
  d,16( e) f-. bf-. 
  d,16( e) f-. bf-. 
  d,16( e) f-. bf-.  |
  d,16( e) f-. bf-. 
  d,16( e) f-. bf-. 
  d,16( e) f-. bf-. 
  d,16( e) f-. bf-.  |

  bf,16(-> c d bf c d bf d)
  bf16(-> c d bf c d bf d) |
  c(-> d e c d e c e) 
  c(-> d e c d e c) r \bar "||"

  \key d \minor
  \time 6/4
  \tempo "Majestically"

  a'4-> \ff g-> a-> bf-> g-> e-> | a1.-> |
  a4-> g-> a-> bf-> g-> c-> | a1.-> |

  \time 4/4
  ef1 \trill |
  \set Score.currentBarNumber = #36
  gf1  \trill |
  \mark \markup{ \box 37 }
  f8-> r8 r4 r2 |

  R1*2 \bar "||"
  \set Score.currentBarNumber = #42
  \key bf \major
  \mark \markup{ \box 42 }

  r8 \mp d, d f f bf bf4 | r8 d, d f f bf bf4 | r8 d, d f f bf bf4 | 
  gf1_\pocoRit | f'4(-> \< ef f gf) \! \f \bar "||"

  \mark \markup{ \box 47 }
  \time 6/4
  \key c \major
  \tempo "A tempo"
  R1.
  c1. \trill \ff
}



\score {
  \clarinet
  \layout {
    \context { 
      \RemoveEmptyStaffContext 
    }
    \context {
      \Score
      \override SpacingSpanner
          #'base-shortest-duration = #(ly:make-moment 1 32)
    }
  }
}
