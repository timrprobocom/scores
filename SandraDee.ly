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
    title = "Sandra Dee Reprise"
}


right = \relative c'' {
  \clef treble \key a \major
  \override Staff.TimeSignature #'style = #'()
  \time 3/4

  << { gs'4 e4 cs4 } \\ cs2. >>
  << { gs'4 e4 cs4 } \\ cs2. >>
  << { a'4 fs4 d4 } \\ d2. >>
  << { a'4 fs4 d4\fermata } \\ d2. >>
  \bar "||"

  << e2. \\ { b4 \appoggiatura { cs16[ b16] } a2 } >>
  << e'2. \\ { b8[ \appoggiatura { cs16[ b16] } a8] g2 } >>
  << { \acciaccatura es'8 a2 fs4 } \\ {fs2 d4 } >>
  e8 d8 cs8 b8 a8 gs8
  \bar "||"
}

left = \relative c' {
  \clef bass \key a \major
  \override Staff.TimeSignature #'style = #'()
  \time 3/4

  << e2. \\ a,2. >>
  << e'2. \\ a,2. >>
  << fs'2. \\ a,2. >>
  << fs'2. \\ a,2. >>
  \bar "||"

  << e'2. \\ a,2. >>
  << e'2. \\ a,2. >>
  << { r8 a8 d8[ fs8] gs8 } \\ d,2. >>
  << { r8 a'8 d8 a8 d4 } \\ d,2. >>
  \bar "||"
}



\score {
  <<
    \new PianoStaff <<
      \new Staff = "upper" \right
      \new Staff = "lower" \left
    >>
  >>
  \layout {
    \context { 
      \RemoveEmptyStaffContext 
    }
    \context {
      \Score
      \override SpacingSpanner
          #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
}
