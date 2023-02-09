%{
%}
\version "2.14.2"
\include "english.ly"


\paper {
    #(set-paper-size "letter" )
    ragged-last-bottom = ##t
}

\header {
    title = "Wir Wandelten"
}

ritard = \markup { \italic { rit. } }
moltoRit = \markup { \italic { molto rit. } }
moltoRall = \markup { \italic { molto rall. } }
bendWithLip = \markup { \italic { bend with lip } }
accelPoco = \markup { \italic { accel poco a poco } }
rallPoco = \markup { \italic { rall poco a poco } }

vocal = \relative c'' {
  \clef treble \key e \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4

  gs8( b) ds( fs) e4 b4 | r4 e ds cs | 
  bs4. bs8 ds( cs) bs( ds) |
  ds4 r4 r2 | r2 r4 e4 \bar "|."
}

pianoRight = \relative c' {
  \clef treble \key e \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  <b e b'>4( <a ds a'> << { <e' gs>4 ds8 fs8 } \\ { gs,8 b8 a4 }>> |
  <gs b>4) <gs e' gs>( <a fs' a> \key af \major <bf g' bf>) |
  <c af' c>( <ef ef'> <df g df'> <ef ef'>~ |
  <ef ef'>8) <bf' df>( <af c> <bf df>)
  <ef, cf' ef>8( <bf' df> <af cf> <bf df>) |
  <ef, cf' ef>4( <a df>2) \key e \major r8 <e' e'>8 \bar "|."
}

pianoLeft = \relative c {
  \clef bass \key e \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  << { gs'4 fs e b~ } \\ { e4 e e e, } >> |
  << { b'4 e fs } \\ { e, e'2 } >> \key af \major << e4 \\ g >> |
  <ef af>4 ef, <ef' g bf>4 ef,4 |
  <ef' af c>4 af, <ef' af cf> af, |
  <bf gf' a>4 b, r4 \key e \major <gs' b> \bar "|."
}



\score {
  <<
    \new Voice = "vocal"   \vocal
    \new PianoStaff <<
      \new Staff = "upper" \pianoRight
      \new Staff = "lower" \pianoLeft
    >>
  >>
}
