%{
    Comments

    Version 3
%}
\version "2.12.3"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    ragged-last-bottom = ##t
}

\header {
    title = "7A Home / 7B Tag / 8 Scene Change"
    %title = "7B Scene Change to Gaston"
}

ritard = \markup { \italic { rit. } }
moltoRit = \markup { \italic { molto rit. } }
moltoRall = \markup { \italic { molto rall. } }
bendWithLip = \markup { \italic { bend with lip } }
accelPoco = \markup { \italic { accel poco a poco } }
rallPoco = \markup { \italic { rall poco a poco } }


clarinet = \relative c'' {
  \clef treble \key a \major
  \override Staff.TimeSignature #'style = #'()
  \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
  \override MultiMeasureRest #'expand-limit = #1
  \override BreathingSign #'text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \compressFullBarRests

  \time 4/4
  \tempo "Andante con moto"

  R1*4 |
  \mark \markup{ \box 5 }
  R1 R1 a2( \p gs2) |
  \tempo "Piu mosso in 2"
  R1*4
  a1 \p fs1 | d2 e2 | fs1 |
  e1~ _\ritard \> | e1 \! \bar "||"

  \set Score.currentBarNumber = #109
  \mark \markup{ \box 109 }
  \tempo "To clar"
  R1 r2 a'2~ \pp | a1 \fermata | r1 \bar "||"

  \break

  \time 3/4
  \tempo "Rowdy Waltz in 1"
  \clef treble \key d \major
  \set Score.currentBarNumber = #2

  \bar "|:"
  \repeat volta 2 {
    b4-> \f r4 r4 | fs2.(-> | a2) e4( | e fs g) |
    b2(-> fs4) | b2(-> fs4) | a2.->~ | a4 ( fs8 e ds e) |
  }

  \set Score.currentBarNumber = #82

  a,2. \fermata | as2. \fermata \bar "||"

  \mark \markup{ \box 84 }
  \tempo "A tempo"
  b,2.(~ | b4 b bs | cs2.~ | cs2.) |
  cs2.( | a2. | b2.~ | b2.) |
  fs2.~ | fs2. | g2.~ | g2. |
  g2.~ | g2. | fs2.~ | fs2. |
  R2.*4 |
  af4-> \mf r4 r4 | R2. | d4-> _\ritard r4 r4 | cs2.-> \bar "|."
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
