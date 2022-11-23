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
    title = "14 Maison Des Lunes"
}


clarinet = \relative c'' {
  \clef treble \key c \major
  \override Staff.TimeSignature #'style = #'()
  \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
  \override MultiMeasureRest #'expand-limit = #1
  \compressFullBarRests
  \time 3/4
  \tempo "In 1, forcefully"

  \override BreathingSign #'text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }

  \appoggiatura { fs16[ g16 gs16] } a8-.\ff r8 r4 r4
  a,,4(\f b4 c4)
  d4( e4 f4)

  g2.
  c4( d4 ef4)
  ef4(\< f4 g4)\!

  \bar "||"
  \key a \major
  \mark \markup{ \box 7 }
  \bar "|:"

  \repeat volta 2 {
    cs?2.->
    cs,,\pp_\markup { \italic "subtone" }
    ds~ds
    d!~d
    cs~cs
  }

  \mark \markup{ \box 15 }
  cs~cs
  ds~ds
  d!~d
  cs~cs

  % Bar 23

  \key c \major
  \mark \markup{ \box 23 }

  % R2.*4
  % R2.*4
  % R2.*2
  R2.*10
  \tempo "In 3"
  R2.*2
  \bar "||"

  % Bar 37

  \time 4/4
  \mark \markup{ \box 37 }
  \set Score.currentBarNumber = #37
  \tempo "Misterioso"
  e''4(\p_\markup{ \italic "soli w/Trpt." } d2.)
  c4( b2.)
  a4( g2.)
  f4(_\markup{ \italic "molto rit." } e2.)
  \bar "||"

  \tempo "In 4, slowly and deliberately"
  R1*2
  R1_\markup{ \italic "accel. poco a poco" }
  \tempo "In 2"
  R1

  % Bar 45

  a,,4-. gs4-. fss4-. gs4-.
  f'4-. d4-. r4 e4-.
  f4-. e4-. r4 d4-.
  c2( c8) r8 r4

  R1*4
  
  \tempo "Slower"
  r1
  e4(\< a4 c4)\fermata\!\f r4
  \tempo "A tempo"
  e4-.\mp d4-. r4 d4(
  c2)_\markup{ \italic "poco rit." } r2
  \bar "||"

  \break

  % Cut to 73

  \mark \markup{ \box 73 }
  \set Score.currentBarNumber = #73
  \tempo "Poco meno mosso"
  e4(\p ef d df   c b bf a
  g1\<~ g2\!) e4-. e4-.
  e'4( ef d df   c b bf a
  g1\<~ g2\!) a,4-.(\mf bf4
  ef'4 d df c   b bf a af)
  a,2->_\markup{ \italic "rit. poco a poco" } gs-> |
  a2-> b-> |
  d4-> r r c-> |
  a4-> r r a--\p |
  e'4-> r4 r2 \fermata
  \bar "||"

  \pageBreak

  % From 88 back to 57

  \tempo "A tpo, Easy 2"
  \mark \markup{ \box 57 }
  \set Score.currentBarNumber = #57
  R1*4
  a,4-. gs4-. fss4-. gs4-.
  f'4-. d4-. r4 e4-.
  f4-. e4-. r4 d4-.
  c'2( c8) r8 r4
  R1*3

  r2r4 e,16[(\mf gs b e]) |
  \tempo "Slower"
  f4->-. e->-. a->-. e8-.[ e8-.]_\markup{ \italic "molto rit." }
  f4--\< e4--\! c'\f\fermata r4 |

  \tempo "A tempo"
  e,4-.\mp d-. r d( |
  c2~c8) r8 r4
  \bar "||"

  \mark \markup{ \box 73 }
  \set Score.currentBarNumber = #73
  \tempo "Poco meno mosso"
  e4(\p ef d df   c b bf a
  g1\<~ g2\!) e4-. e4-.
  e'4( ef d df   c b bf a
  g1\<~ g2\!) a,4-.(\mf bf4
  ef'4 d df c   b bf a af)
  a,2->_\markup{ \italic "rit. poco a poco" } gs-> |
  a2-> b-> |
  d4-> r r c-- |
  a4-> r r a--\p |
  e'4-> \breathe e4\fermata f4\fermata gs4\fermata 
  \bar "||"

  \break

  % Now back to 57 again.

  \tempo "A tpo, start very slow"
  \mark \markup{ \box 57 }
  \set Score.currentBarNumber = #57
  R1*4
  a,4-. gs4-. fss4-. gs4-.
  f'4-. d4-. r4 e4-.
  f4-. e4-. r4 d4-.
  c'2( c8) r8 r4
  R1*3

  r2 r4 \breathe r4 \mf |
  \tempo "Slower"
  f4->-. e->-. a->-. e8-.[ e8-.]_\markup{ \italic "molto rit." }
  f4--\< e4--\! c'\f\fermata r4 |

  \break

  % Cut to 134

  \tempo "In 4"
  \mark \markup{ \box 134 }
  \set Score.currentBarNumber = #134
  b4( a2 b4) | a2\<~a2\! |
  \tempo "Piu mosso"
  R1*2
  e4-^\ff\fermata r4 r2 |

  % Made up from 140 on

  a2~ \fermata  a8 gs8 g fs | f e ds d 
  cs c b as | a1\fermata

  \bar "|."

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
