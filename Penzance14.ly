%{
%}
\version "2.14.2"
\include "english.ly"


\paper {
    #(set-paper-size "letter" )
    ragged-last-bottom = ##t
    system-system-spacing #'basic-distance = #20
}

\header {
    title = "Pirates of Penzance"
    subtitle = "14 Oh Men of Dark and Dismal Fate"
}

ritard = \markup { \italic { rit. } }
moltoRit = \markup { \italic { molto rit. } }
moltoRall = \markup { \italic { molto rall. } }
bendWithLip = \markup { \italic { bend with lip } }
accelPoco = \markup { \italic { accel poco a poco } }
rallPoco = \markup { \italic { rall poco a poco } }

vocal = \relative c'' {
  \clef treble \key d \major
  \time 6/8
  \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
  \set Score.currentBarNumber = #51

  cs4. a8 r a | a a a a b a | e'4. a,8 a a | d cs d a gs a | 
  fs es fs d d d | b' b b a a a \bar "||"

  \set Score.currentBarNumber = #73
  \mark \markup{ \box C }

  d,4. d8 r\ff <d a' fs'> | 
  <d a' fs'> <d a' e'> <d a' d>  <cs as' e'> <cs as' d> <cs as' cs> |
  <b b' d>4. <b d b'>8 r <b fs' d'> |
  <b fs' d'> <b fs' c'> <b fs' b> <a fs' c'> <a fs' b> <a fs' a> | 
  <g g' b>4. <gs b d gs>8 <gs d' b'>8 <gs d' b'> |

  % 79

  <g d' e> <g cs fs> <g d' g> <g cs a'> <g b a' b> <g a a' cs> |
  <fs d' a' d> <fs d' a' e'> <fs d' a' fs'> <e d' b' g'> <fs d' b' fs'> <g e' b' e> |
  <a fs' a a'>4 <a fs' a>8 <a fs' a>4. | <a g' cs e>2. |
}

pianoRight = \relative c' {
  \clef treble \key d \major
  \time 6/8
  \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
  \set Score.currentBarNumber = #51

  <cs g' cs>4.( <cs g' a>8) r r | <a c fs a> r r <a c fs a> r r |
  <g' e'>4.( <g a>8) r r | <d a' d>8 r r a' r r | fs r r a r r |
  <b d b'> r r <cs a> r r \bar "||"

  \set Score.currentBarNumber = #73
  \mark \markup{ \box C }

  <fs, d'>8 r r r4 <a fs'>8\ff |
  <a fs'>8 e' d <as e'> d cs |
  <d, b' d>4. <d fs b>8 r <fs d'> | 
  << {d'8 c b c b a } \\ { <d, fs>4. fs4. } >> |
  <d g b>4. <d g>8 b' b |

  % 79

  e, fs g a b cs | d\< e fs <g, g'> fs' e\! |
  <a, d fs a>\fz r a a4. | <g a cs e>2. |
}

pianoLeft = \relative c, {
  \clef bass \key d \major
  \time 6/8
  \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
  \set Score.currentBarNumber = #51

  <e e'>4.~<e e'>8 r r | <ds ds'> r r <ds ds'> r r |
  <e' a cs>4.~ <e a cs>8 r r | <fs, fs'> r r <a a'> r r |
  <fs fs'> r r <d d'> r r | <g, g'> r r <a a'> r r \bar "||"

  \set Score.currentBarNumber = #73
  \mark \markup{ \box C }

  <d d'>8 r r  r4. | <d' d'>4. <cs cs'> | <b b'> <b, b'>8 r r |
  <b' b'>4. <a a'>4. | <g g'>4. <g, g'>8 r r |

  % 79

  <g'' b d>8-- r r <g a cs e>-- r r | <fs a d>-- r r <e g b d>-- r r |
  <a, d fs a> r a' a4. | <a,, a'>2. |
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
