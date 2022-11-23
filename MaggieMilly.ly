%{
    Comments
%}
\version "2.14.2"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    ragged-last-bottom = ##t
    #(set-paper-size "letter" )
}

\header {
    title = "maggie and milly and molly and may"
    composer = "Gwyneth Walker"
}


vocal = \relative c'' {
  \clef treble 
  \key c \major
  \time 12/8

  R1. |
  R1. |
  R1. |
  R1. |
  a8\p a a b b b g g g c4 c8 |
  f, f f ef'4 ef8 gf r df af r r |
  r4. r4. r4. r4 af8 |
  bf bf bf c c c af4 af8 df4 df8 |
  % Page 2
  gf, gf gf gf\< gf gf gf gf gf gf gf gf |
  a\!\mf a r r4 fs8 a a r8 r4 fs8 |
  a a a a a a b4 b8 b4 b8 |
  cs4. cs4. cs4 cs8 cs4 ds8 |
  ds4. r4. r4. r8 r8 \override NoteHead #'style = #'cross  b8 |
  b b b b b b b b b b4 b8 |
  b r r b b r b b b b b r |
  r4. r8 r b b r r r4.  |
  \revert NoteHead #'style
  % Page 3
  R1. |
  r4. r4. r4. r8 r8 a\p |
  a4 a8 b b b g4 g8 c4 c8 |
  f, f f ef' ef ef  gf4 df4 af4 |
  af'2.~af8 r r r \breathe gs,8 gs |
  gs gs gs gs gs gs as as as as r as |
  fs fs fs b4 b8 b4 b4 b4 |
  b1.~ |
  % Page 4 bar 25
  b8 r r r4. r4. r4. |
  R1. | b8 b b fs fs fs e e e b r r |
  R1. | b'8 b b fs fs fs e e e b r r |
  R1. | b'8 b b fs fs r r4. r8 r8 e |
  e e e b r r r4. r4.
  \bar "|."
}

texta = \lyricmode {
  mag -- gie and mil -- ly and mol -- ly and may went
  down to the beach to play one day
  and mag -- gie dis -- cov -- ered a shell that sang as 
  % Page 2
  sweet -- ly she could -- n't re -- mem -- ber her trou -- bles and |
  mil -- ly and mil -- ly and |
  mil -- ly be -- friend -- ed a strand -- ed star whose |
  rays five lan -- guid -- fing -- rs |
  were and |
  mol -- ly was chased by a hor -- ri -- ble thing which |
  raced side -- ways while blow -- ing bub -- bles: |
  and may |
  % Page 3
  and |
  may came home with a smooth round stone as |
  small as a world and as large as a -- lone 
  for what ev -- er we lose like a you or a me it's
  al -- ways our -- selves we find in the sea 
  % Page 4 bar 25
  mag -- gie and mil -- ly and mol -- ly and may 
  mag -- gie and mil -- ly and mol -- ly and may 
  mag -- gie and mil -- ly and mol -- ly and may 
}


upper = \relative c'' {
  \clef treble 
  \key c \major
  \time 12/8

  R1. | 
  R1. |
  a8-. r r b-. r r g-. r r c-. r r |
  <g a>-. r r <g b>-. r r <c, g'>-. r r <c c'>-. r r |
  <g' a>-. r r <g b>-. r r <c, g'>-. r r <c c'>-. r r |
  <c f>-. r r <f bf ef>-. r r r4. r4. |
  gf''8-. r df-. af-. e'-. b-. fs-. d'-. cs-. b-. a-. gs-. |
  <af, bf>-. r r <a' c>-. r r <df,, af'>-. r r <b! cs'>-. r r |
  % Page 2 bar 9
  \change Staff = "lower" \voiceOne <cs, fs>8-. r r <d fs>-. r r <e fs>-. r r fs-. r r |
  \change Staff = "upper" \oneVoice cs'8-. r r r4. <e fs>8-. r r r4. |
  \change Staff = "lower" \voiceOne s2. <fs, gs b>4. s4. |
  s1. |
  df8 ef f g f ef df ef f g f ef |
  df ef f g a b \change Staff = "upper" c d e f e d |
  df8 ef f g f ef df ef f g a b |
  c d e f g a b  \oneVoice r r r4. |
  % Page 3
  R1. |
  <g, a>8-. r r <g b>-. r r <c, g'>-. r r <c c'>-. r r |
  <g' a>-. r r <g b>-. r r <c, g'>-. r r <c c'>-. r r |
  <c f>-. r r <f bf ef>-. r r <af df gf>2. |
  \change Staff = "lower" \voiceOne d,,8^"a tempo" e fs gs as b 
      \change Staff = "upper" cs d e fs \breathe r^"slowly" r |
  \change Staff = "lower" <fs, gs>2. <fs as>2. | 
  <d fs b>4. <d g b>4. <e a b>2. |
  \change Staff = "upper" b''8^"Tempo I" b b cs cs cs a a a d d d |

  % Page 4 bar 25

  <b e>8 <b e> <b e> <cs fs> <cs fs> <cs fs> <a d> <a d> <a d> <d g> <d g> <d g> |
  \oneVoice
  <cs' fs>8-. <c f>-. <b e>-. <bf ef>-. <a d>-. <af df>-.
    <g c>-. <fs b>-. <f bf>-. <e a>-. <ef af>-. <g d>-. |
  s4. s4. <d, e>4. <g a>4. |
  <cs' fs>8-. <c f>-. <b e>-. <bf ef>-. <a d>-. <af df>-.
    <g c>-. <fs b>-. <f bf>-. <e a>-. <ef af>-. <g d>-. |
  s4. s4. <d, e>4. <g a>4. |
  <cs' fs>8-. <c f>-. <b e>-. <bf ef>-. <a d>-. <af df>-.
    <g c>-. <fs b>-. <f bf>-. <e a>-. <ef af>-. <g d>-. |
  R1. |
  \change Staff = "lower" \voiceOne e,,8-. d-. c-. b-. s8 s8 s4. s4.
  \bar "|."
}

lower = \relative c' {
  \clef bass 
  \key c \major
  \time 12/8

  a8-.\p^"playfully" r r b-. r r g-. r r c-. r r |
  <g a>-. r r <g b>-. r r <c, g'>-. r r <bf c'>-. r r |
  <g' a>-. r r <g b>-. r r <c, g'>-. r r <bf bf'>-. r r |
  <g' a>-. r r <g b>-. r r <c, g'>-. r r <bf bf'>-. r r |
  <g' a>-. r r <g b>-. r r <c, g'>-. r r <bf bf'>-. r r |
  <af af'>-. r r <g g'>-. r r r4. r4. |
  R1. |
  R1. |
  % Page 2 bar 9
  \voiceTwo <cs, fs>8-. r r <d fs>-. r r <e fs>-. r r fs-. r r |
  \oneVoice fs'-. r r r4. e8-. r r r4. |
  fs,8( cs' fs gs a fs) \voiceTwo e,4. r4. |
  ef8( bf' ef gf af \change Staff = "upper" df) <af df gf>2. |
  \change Staff = "lower" 
  df,,8 ef f g f ef df ef f g f ef |
  df ef f g a b c d e f e d |
  df8 ef f g f ef df ef f g a b |
  \change Staff = "upper" c d e f g a b  
    \change Staff = "lower" \oneVoice r r r4. |
  % Page 3 bar 17
  <g, a>8-. r r <g b>-. r r <c, g'>-. r r <bf c'>-. r r |
  <g' a>-. r r <g b>-. r r <c, g'>-. r r <bf bf'>-. r r |
  <g' a>-. r r <g b>-. r r <c, g'>-. r r <bf bf'>-. r r |
  <af af'>-.^"rit..." r r <g g'>-. r r <f f'>2. |
  \voiceTwo d8\f e fs gs as b cs d e fs \breathe r r |
  <fs, cs'>2. <e b'>2. |
  <d, d'>4. <g g'>4. <a a'>2. |
  b'4.\sustainOn fs'4. \change Staff = "upper" <d' e>4. <g a>4. |
  % Page 4 bar 25
  \change Staff = "lower" b,,4. fs'4. \change Staff = "upper" <d' e>4. <g a>4.|
  \change Staff = "lower" \oneVoice 
  R1.\sustainOff |
  b,,4.\sustainOn fs'4. s4. s4.\sustainOff |
  R1. |
  b,4.\sustainOn fs'4. s4. s4.\sustainOff |
  R1. |
  R1. |
  \voiceTwo e,8-. d-. c-. b-. r r r4. r4. 
  \bar "|."
}




\score {
\new Score \with {
  proportionalNotationDuration = #(ly:make-moment 1 16)
}
  <<
   \new Voice = "vocal"   \vocal
    \new Lyrics \lyricsto vocal \texta
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context {
      \RemoveEmptyStaffContext 
    }
  }
}
