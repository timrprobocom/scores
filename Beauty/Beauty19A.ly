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
    title = "19 Transformation II"
}

ritard = \markup { \italic { rit. } }
moltoRit = \markup { \italic { molto rit. } }
pocoRit = \markup { \italic { poco rit. } }
moltoRall = \markup { \italic { molto rall. } }
bendWithLip = \markup { \italic { bend with lip } }
accelPoco = \markup { \italic { accel poco a poco } }
rallPoco = \markup { \italic { rall poco a poco } }

flute = \relative c''' {
  \clef treble \key c \major
  \override Staff.TimeSignature #'style = #'()
  \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
  \override MultiMeasureRest #'expand-limit = #1
  \compressFullBarRests
  \time 4/4

  R1 \break

  \tempo "Grandly"

  c2-> e,8( g) b8( c) | f,1 | r2 e8( g) b( c) | d2 e4--( e-- |
  a,2) c4--( c-- | a2) e'8( f8) d8( e8) | 
    \tempo "Heavier" c2-- \breathe e4-- d4-- | c2-- c4-> b4-> | 
  a2 a4-> g4-> f4(-> a8-- c8--) r8 r8 r8 r8 |
  af2-> ef4-> \ff f-> | g1-> \fermata \sfz \p \< | R1 \! _\markup "[Curtain]" \bar "|."
}



\score {
  { \transpose c d \flute }
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
