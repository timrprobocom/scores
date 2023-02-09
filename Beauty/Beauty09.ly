%{
    Comments
%}
\version "2.12.3"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    ragged-last-bottom = ##t
}

\header {
    title = "9 Be Our Guest"
}

moltoRall = \markup { \italic { molto rall. } }
bendWithLip = \markup { \italic { bend with lip } }
accelPoco = \markup { \italic { accel poco a poco } }


flute = \relative c''' {
  \clef treble \key g \major
  \override Staff.TimeSignature #'style = #'()
  \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
  \override MultiMeasureRest #'expand-limit = #1
  \override BreathingSign #'text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \compressFullBarRests

  \time 2/2

  \set Score.currentBarNumber = #331
  \mark \markup{ \box 331 }

  e4.( \mf d8)-. cs4-. d4-. | e-. d-. cs-. d-. | e-. d-. cs-. d-. |
     e-. \< fs-. g-. \! r4 |

  b4.(-> \trill a8) b4.(-> \trill a8) | b4.(-> \trill a8) fs4-. d-. |
     c(-> b) b-.-> as-. | b1 |

  e4.( \mf d8)-. cs4-. d4-. | e-. d-. cs-. d-. | e-. d-. b-. d-. |
     gs2->~ gs8 r8 r4 |
  d'4-. cs-. d4-. cs-. | cs-. b-. cs-. b-. | b-. \< a-. b-. a-. \! | R1 |
  R1*2 | df4.-> \mf ef8( d4)-. ef4-. | c-.-> df-.-> ef-.-> r4 \bar "||"
}


clarinet = \relative c''' {
  \override MultiMeasureRest #'expand-limit = #1
  \compressFullBarRests
  \clef treble \key df \major
  R1*4

  % bar 355 page 66

  R1*2 af!1-> \ff \startTrillSpan | 
  af1-> \stopTrillSpan | af4-> af4-> af4-> af4-> | c,2-> c2-> \bar "||"

  \set Score.currentBarNumber = #389
  \mark \markup{ \box 389 }
  df1-> \mf | af2( df2) | f1-> | af,2( c2) |
  df2.-> f4( | df2)-.-> af2-.-> | f1-> |

  \set Score.currentBarNumber = #412
  R1 _\markup{ \italic { rall poco a poco } } |
  R1*4 \bar "||"
  \mark \markup{ \box 417 }

  % Bar 417 transposed 
  \key d \major
  g''2-- \f _\moltoRall g2--~ | g1 | g2-- g2-- \breathe | cs,2-> \fermata fs2-> \fermata |

  % Bar 421 page 67
  \mark \markup{ \box 421 }
  \tempo "Heavy 4"
  r4 fs4-> \ff _\accelPoco r2 | r4 fs4-> r2 | r4 fs4-> r2 | r4 fs4-> r2 |
  r4 d,8( \mf fs8 a4-.) fs4-. | d( a')-. fs-. d-. | r4 e8( ds e fs g a |
    b4)-> r4 r2 |

  % Bar 429 back to clarinet
  R1*4 \tempo "A tempo"
  e,,8( \ff fs g a b cs d ds | e) r8 r4 r2 | 
  fs,8( gs a b c d ds e | fs) r8 r4 r2 | 
  g,8( a b cs ds e es fs | g) r8 r4 r2 | a1-> a1-> |
  d4-. fs,-. a-. d-. | cs-. fs,-. a-. cs-. | b-. d,-. fs-. b-. | bf-. d,-. fs-. bf-. |
  a4-. r4 e8(-> d cs d) | g(-> fs es fs) b(-> a gs a) | d1->\glissando | d,,4 r4 r2
  \bar "|."
}




\score {
  { \transpose bf c \flute \clarinet }
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
