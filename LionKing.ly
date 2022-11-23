%{
    Comments
%}
\version "2.10.33"
\include "english.ly"

#(set-default-paper-size "letter" )
\once \override Score.SeparationItem #'padding = #1

\paper {
    ragged-last-bottom = ##t
}

\header {
    title = "Lion King Chant -- Nants Ingonyama"
    composer = "Lebo Morake"
    copyright = "ingonyama=IN-GWAIN-YA-MA, thi=TI"
}

solo = \relative c' {
  \set Staff.instrumentName="Solo"
    \clef treble \key af \major
    \override Staff.TimeSignature #'style = #'()
    \time 3/4
    ef2( ef8.) ef16
    f8 ef8( ef4.) ef16 ef
    \time 2/4
    ef8 af,16 af af4
    \time 4/4
    r1
    r1

    \time 3/4
    ef'2( ef8.) ef16
    f8 ef8( ef8) ef16 ef gf4(
    \time 2/4
    gf8) ef16 ef16 ef4
    \time 4/4
    r1
    r8 af,16 af16 af4 r2
    r1
    r1
    \bar "||"

}

chorus = \relative c' {
  \set Staff.instrumentName="Chorus"
    \clef bass \key af \major
    \override Staff.TimeSignature #'style = #'()
    \time 3/4
    r2.
    r2.
    \time 2/4
    r4 r8 <af ef c>16 <af ef c>16
    \time 4/4
    <af f df>2 <bf g ef>8 <bf g ef>4 <af ef c>8(
    <af ef c>1)

    \time 3/4
    r2.
    r2.
    \time 2/4
    r4 r8 <af ef c>16 <af ef c>16
    \time 4/4
    <af f df>2 <bf g ef>8 <bf g ef>4 <af ef c>8(
    <af ef c>2) <c af f>8 <bf g ef>4 <f df af>8(
    <f df af>2) <c' af f>8 <bf g ef>4 <af ef c>8(
    <af ef c>1)
    \bar "||"

    r8 <af ef c>16 <af ef c>16 
     <af ef c>8 <af ef c>16 <af ef c>16(
     <af ef c>16) <af ef c>16 <af ef c>16 <af ef c>16
     <af ef c>8 <af ef c>8

    r8 <af ef c>16 <af ef c>16 
     <af ef c>8 <af ef c>16 <af ef c>16(
     <af ef c>16) <af ef c>16 <af ef c>16 <af ef c>16
     <af ef c>8 <af ef c>8

    r8 <af ef c>16 <af ef c>16 
     <af ef c>8 <af ef c>16 <af ef c>16(
     <af ef c>16) <af ef c>16 <af ef c>16 <af ef c>16
     <af ef c>8 <af ef c>8
}

under = \relative c' {
  \set Staff.instrumentName="Low solo"
  \clef bass \key af \major
    \override Staff.TimeSignature #'style = #'()
    \time 3/4
    r2.
    r2.
    \time 2/4
    r2
    \time 4/4
    r2. r8 af8
    ef4 c'8 bf4 af4.

    \time 3/4
    r2.
    r2.
    \time 2/4
    r2
    \time 4/4
    r1
    r1
    r1
    r1
    \bar "||"
  }
  

solowords = \lyricmode {
  Nants in -- goy -- na -- ma ba -- gi -- thi Ba -- ba
  Nants in -- goy -- na -- ma ba -- gi -- thi Ba -- ba
  Hi ba -- ba
}

choruswords = \lyricmode {
  Si -- thi uhmm ingoy -- na -- ma
  Si -- thi uhmm ingoy -- na -- ma
  Ingoy -- na -- ma
  Ingoy -- na -- ma

  In -- goy -- na -- ma nen -- gw'en -- am -- a -- ba -- la
  In -- goy -- na -- ma nen -- gw'en -- am -- a -- ba -- la
  In -- goy -- na -- ma nen -- gw'en -- am -- a -- ba -- la
}

underwords = \lyricmode {
  Ma uhmm ingoy -- na -- ma
  Uhmm ingoy -- na -- ma
}

\score {
  \new ChoirStaff <<
    \new Voice = "solo" \solo
    \new Lyrics \lyricsto solo \solowords
    \new Voice = "chorus" \chorus
    \new Lyrics \lyricsto chorus \choruswords
    \new Voice = "under" \under
    \new Lyrics \lyricsto under \underwords
  >>
}

%{

%}
