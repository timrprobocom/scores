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
    title = "Gesu Bambino"
}

vocala = \relative c'' {
  c8.( bf16) a8   bf8.( a16) g8  a8.( g16) f8  g4 c,8
  f4 f8  g[ a bf] c4.~c4 c8
  c8.( bf16) a8   bf8.( a16) g8  a8.( g16) f8  g4 c,8
  f8.( g16) a8  bf8.( a16) g8 f4.~f4 f8

  % Page 2

  d'8.( e16) f8  f8.( e16) d8 c4 a8 c4 f,8
  d'8.( e16) f8  f8.( e16) d8 c2.~
  c4.~c4 c8 df8.( c16) bf8  af8.( g16) f8
  g4 af8  f4 f8 g8[ af bf] c4 c8
  ef2.~ef4.~ef4\fermata ef,8

  \bar "||"

  \key af \major
  af4. g af bf
  af2. ef4.~ef4 c'8
  c4. bf c df
  c2. bf4.~bf4 c8

  % Page 3

  df4. c bf a
  g2.( af4.) df
  c2. bf4.~bf4 af8
  af1.~
  af4. r4 r8 r4 r8 r4 c8

  %\bar "||"
  \key f \major
}

vocalb = \relative c'' {
  c8.( bf16) a8   bf8.( a16) g8  a8.( g16) f8  g4 c,8
  \bar "||"
  f4 f8  g[( a) bf] c4.~c4 c8
  c8.( bf16) a8   bf8.( a16) g8  a8.( g16) f8  g4 c,8
  f8.( g16) a8  bf8.( a16) g8 a4.~a4 a8

  f'2.( c4.~c4) f,8
  f'2.( c2.~
  c4. c4) c8 df8.( c16) bf8 af8.( g16) f8
  g4 af8  f4. r4 r8 r4 r8
  r4 r8 af4. df4. f4.
  af2.( f4.) df4.\fermata
  c8.( bf16) a8   bf8.( a16) g8  f2.~
  f4. r4 r8 r2.
  \bar ".|"
}


vocal = \relative c'' {
  \clef treble \key f \major
  \override Staff.TimeSignature #'style = #'()
  \time 12/8
  \partial 8
  r8
  R1.
  r2. r4 r8  r4 c8

  \repeat volta 2 \vocala
  \vocalb

}

textA = \lyricmode {
  When blos -- soms flow -- ered mid the snows up --
  on  a win _ -- ter night 
  Was born the Child, the Christ -- mas Rose, the
  King of Love and Light.   The

  % Page 2 

  an -- gels sang  the shep -- herds sang, The
  grate -- ful earth re -- joiced
  And at His Bless -- ed 
  birth the stars Their ex _ -- ul -- ta -- tion
  voiced!

  O come let us a -- dore him
  O come let us a -- dore him

  % Page 3

  O come let us a -- dore him
  Christ _ the Lord

  Ah! _ _ _ _ _ _ _
  O come let us a -- dore him _ _ _ _ _ _ _
  a -- dore Him Christ the Lord 
  O come, O come, 
  O come let us a -- dore _ Him,
  let us a -- dore Him.
  Christ _ _ the Lord.
}

textB = \lyricmode {
  % Repeat

  A -- gain the heart with rap -- ture glows
  To greet  the ho _ -- ly night
  That gave the world its Christ -- mas Rose,
  Its King of Love  and Light
  Let ev -- 'ry voice ac -- claim His name,
  The grate -- ful cho -- rus swell
  From par -- a -- dise to earth He came
  That we _ with Him might dwell

  O come let us a -- dore him
  O come let us a -- dore him
  O come let us a -- dore him
  Christ _ the Lord
}


uppera = \relative c {
  << { f'4. e4. f4. g4. } \\ { a,4( c8) g4( c8) a4( c8) bf4( c8) } >>
  << { f4. e4. f4. g4. } \\ { a,4( c8) g4( c8) a4( c8) bf4( c8) } >>
  << { f4. e4. f4. g4. } \\ { a,4( c8) g4( c8) a4( c8) bf4( c8) } >>
  << { f4. e4. f4.~f4. } \\ { a,4( c8) g4( c8) a8.( bf16 c8) a4( f'8) } >>

  % Page 2 

  << { <d' bf>8. <e c>16 <f d>8  <f d>8. <e c>16 <d bf>8 c4 a8 c4 f,8 } \\
     { f4. f4. <f c>4 s8 <f c>4 s8 } >>

  << { <d' bf>8. <e c>16 <f d>8  <f d>8. <e c>16 <d bf>8  <c c,>2.~ } \\
     { f,4. f4. <f a>4 <e g>8 <f a>4 <e g>8 } >>

  << { c'4.~c4 c8 df8. c16 bf8  af8. g16 f8 } \\
     { <a f c>4 <g e>8 <a f c>4 <f c>8 <f df>4 <ff df>8 <ef c>4 c8 } >>

  << { <g' e bf>4 <af e bf>8 <f df af>4 <f df af>8 g af bf c4 c8 } \\
     { s2. <e, c>4 <f d>8 <f c>8 g8 <a e c>8 } >>

  <ef' bf g ef>4 <ef c af ef>8 <ef bf g ef>4 <ef c af ef>8 
  <ef bf g ef>4 <ef c af ef>8 <ef bf g ef>4 r8\fermata

  \bar "||"
  \key af \major

  ef8.( df16 c8) df8.( c16 bf8) c8.( bf16 af8) bf4 ef,8
  af4 af8 bf[ c df] ef2.
  ef8.( df16 c8) df8.( c16 bf8) c8.( bf16 af8) bf4 ef,8
  af4 af8 bf[ c df] ef4.~ef4 ef8

  % Page 3

  f8.( ef16 df8) ef8.( df16 c8) df8.( c16 bf8) c4 af8(
  bf4 c8 df c bf c df ef) f4 df,8
  ef8-. f-. g-. af-. bf-. c-. df-. ef-. f-. g4 af8
  << { af,1.~ } \\ { c,8. df16 ef8 c8. df16 ef8 c8. df16 ef8 c8. df16 ef8 } >>
  << { af4. g f e } \\ { c8. bf16 af8  bf8. af16 g8  af8. g16 f8  g8. a16 bf8 } >>


  %\bar "||"
  \key f \major
}

upperb = \relative c' {
  << { f4. e4. f4. g4. }   \\ { a,4( c8) g4( c8) a4( c8) bf4( c8) } >>
  \bar "||"
  << { f4. e4. f4. g4. }   \\ { a,4( c8) g4( c8) a4( c8) bf4( c8) } >>
  << { f4. e4. f4. g4. }   \\ { a,4( c8) g4( c8) a4( c8) bf4( c8) } >>
  << { f4. e4. f4.~f4 f8 } \\ { a,4( c8) g4( c8) a8( bf8 c8) a4 f'8 } >>

  << { <d' bf>8. <e c>16 <f d>8  <f d>8. <e c>16 <d bf>8 c4 a8 c4 f,8 } \\
     { f4. f4. <f c>4 s8 <f c>4 s8 } >>

  << { <d' bf>8. <e c>16 <f d>8  <f d>8. <e c>16 <d bf>8  <c c,>2.~ } \\
     { f,4. f4. <f a>4 <e g>8 <f a>4 <e g>8 } >>

  << { c'4.~c4 c8 df8. c16 bf8  af8. g16 f8 } \\
     { <a f c>4 <g e>8 <a f c>4 <f c>8 <f df>4 <ff df>8 <ef c>4 c8 } >>

  <g' e bf>4 <af e bf>8 <f df af>4. 
    << { \stemDown df'8. ef16 df8 c4 bf8 } \\ { \stemUp g'4.( af4.) } >>

  <f af,>1.
  
  <f, df af f>2. <f df af f>4. <f df af f>4.\fermata
  << { f4. e4. f2.~ }   \\ { a,4( c8) g4( c8) a8.( bf16 c8) a8.( bf16 c8) } >>
  <f a,>4. <f a,>4. <f a,>2.

  \bar ".|"
}

upper = \relative c' {
  \clef treble \key f \major
  \override Staff.TimeSignature #'style = #'()
  \time 12/8
  \partial 8
  f8
  << { f4. e4. f4. g4. } \\ { a,4( c8) g4( c8) a4( c8) bf4( c8) } >>
  << { f2. c2.         } \\ { a8. bf16 c8  bf4 a8 g2.            } >>


  \repeat volta 2 \uppera
  \upperb

}

lowera = \relative c {

  <c f,>2. <c f,>
  <c f,>2. <c f,>
  <c f,>2. <c f,>
  <c f,>2. << { c4( d8) c4 f8 } \\ { f,4.( f4) s8 } >>

  % Page 2 

  <d'' f, bf,>4\arpeggio f,8 <d' f, bf,>4\arpeggio f,8 
      <a c, f,>4\arpeggio c,8 <a' c, f,>4\arpeggio c,8
  <d' f, bf,>4\arpeggio f,8 <d' f, bf,>4\arpeggio f,8
      <f f,>4 <c c,>8 <f f,>4 <c c,> 8
  <f f,>4 <c c,>8 <f f,>4 <a, a,>8 <bf bf,>4 <g g,>8 <af af,>4 <af af,>8
  <c c,>4 <c c,>8 <df df,>4 <df df,>8 <c c,>4 <bf bf,>8 <af af,> <g g,> <f f,>
  <ef ef,>4 <af af,>8 <ef ef,>4 <af af,>8 <ef ef,>4 <af af,>8 <ef ef,>4 r8\fermata

  \bar "||"
  \key af \major

  <af ef' c'>4.\arpeggio  <ef' g df'> <af, ef' c'>\arpeggio <ef' g df'>
  <af, ef' c'>4.\arpeggio <f' af df>  <af, ef' c'>\arpeggio <ef' g bf>
  <af, ef' c'>4.\arpeggio <ef' g df'> <af, ef' c'>\arpeggio <ef' g df'>
  <af, ef' c'>4.\arpeggio <af' c f> << { <df ef>4.~<df ef>4 } \\ { af8 g f g4 ef8 } >>

  % Page 3

  <df af' df>4. <af ef' c'>4.\arpeggio << { <f' bf>4 } \\ { bf,8. c16 df8 } >> <c ef af>4.
  <df ef g bf>2. <c ef af ef'>4.\arpeggio <bf f' af df>4.\arpeggio
  << { <ef af c>2. <ef g bf>2. } \\ { r4 r8 ef,4. r4 r8 ef4. } >>
  << { af1 } \\ { \stemUp ef'4( f8) ef4( f8) ef4( f8) ef4( f8) } >>
  <af, ef'>4. <ef ef'>4. <f c'>4. <c c'>4.

  %\bar "||"
  \key f \major
}

lowerb = \relative c {

  <c f,>2. <c f,>
  \bar "||"
  <c f,>2. <c f,>
  <c f,>2. <c f,>
  <c f,>2. << { c4( d8) c4 f8 } \\ { f,4.( f4) s8 } >>

  <d'' f, bf,>4\arpeggio f,8 <d' f, bf,>4\arpeggio f,8
      <a c, f,>4\arpeggio c,8 <a' c, f,>4\arpeggio c,8
  <d' f, bf,>4\arpeggio f,8 <d' f, bf,>4\arpeggio f,8
      <f f,>4 <c c,>8 <f f,>4 <c c,> 8
  <f f,>4 <c c,>8 <f f,>4 <a, a,>8 <bf bf,>4 <g g,>8 <af af,>4 <af af,>8
  <c c,>4 <c c,>8 <df df,>4. \clef treble <bf' f'>4.( <c e>4.
  <df f>1.) \clef bass
  r4 r8 <df, df,>4. <c c,>4. <b b,>4.\fermata
  <c c,>4. <c c,>4. << \stemDown f,2. \\ { \stemUp c'4( d8) c4( d8) } >>
  
  <f, c'>4. <f c'>4. <f c'>2.

  \bar ".|"
}

lower = \relative c {
  \clef bass \key f \major
  \override Staff.TimeSignature #'style = #'()
  \time 12/8
  \partial 8

  r8
  <c f,>2. <c f,>
  <c f,>2. <c f,>

  \repeat volta 2 \lowera
  \lowerb

}

\score {
  <<
    \new Voice = "vocal"   \transpose f g \vocal
    \new Lyrics \lyricsto vocal \textA
    \new Lyrics \lyricsto vocal \textB
    \new PianoStaff <<
      \new Staff = "upper" \transpose f g \upper
      \new Staff = "lower" \transpose f g \lower
    >>
  >>
  \layout {
    \context { \RemoveEmptyStaffContext }
  }
}
