\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

global = {
  \key c \minor
  \time 4/4
  \tempo "Swing" 4=88
  \set Score.markFormatter = #format-mark-box-alphabet
}

scoreAClarinetI = \relative c' {
    \global
    \transposition c'
    % Music follows here.
    r8\mf ef( gf f ef) c( ef f |
    g2) r2 |
    r8 g''( g ef c af f d |
    bf8 g ef c a4) b4 |
    a4 b a b |
    R1 |
    r2 r4 g''8(\f ef \bar "||" |
    \mark \default
    g1)~ |
    g4 f8( ef) f( g) ef4 |
    c2 g2~ |
    g2 r4 g'8( ef) |
    %% car 12
    f8 f8~ f2. |
    r4 ef8( c) ef( c) ef4 |
    d1 |
    r2 r4 g8( ef) |
    %% Bar 16
    g1~ |
    g4 f8( ef) f( g) ef4 |
    c2 g2~ |
    g2 r4 g |
    bf4 g8( bf) c4 ef4 |
    g8( f8~f4~f4) ef |
    c1(\> |
    c,1) |
    c1\! \bar "||" |
    % Switch to Fish Gotta Swim, bar 25
    \mark \default
    \key c \major
    R1 |
    R1 |
    g4\mp g a a |
    a4 a b b |
    c4 b a g |
    g4 g c c |
    r8 c\mf c c c a'~ a4 |
    r8 c, d b c af'~ af g~ |
    g1 |
    r8 g,\mp a( g) bf( g8~g4) |
    f'1 |
    f1 |
    e1 |
    g4\< f e d\! \bar "||" |
    \mark \default
    g4\mf g a a |
    d,4 d f f |
    e4 e a a |
    a4 a af af |
    c4 b a g |
    gf2 g2 |
    e1 |
    f2 r2 |
    g'8\f g g c~c4 c |
    c8 g g g~g4 r4 |
    e8 e e a~a4 a |
    a8 d, d d~d4 r4 |
    g2 c,2 |
    af8 c d ef~ef4 d |
    c1\> |
    c,4\! d ef e \bar "||" |
        
    % Bridge bar 55
    \mark \default
    a4-.\mp a-. a-. a-. |
    c,4-. c-. c-. c-. | |
    c4-. c-. c-. c-. |
    fs4-. fs-. fs-. fs-. |
    bf2\<   bf4 bf4 |
    ds2  ds4 ds4\! |
    b1\f |
    g4 f e d \bar "||" |
    
    % Finale bar 63
    \mark \default
    \key c \minor
    g'8 g g c~c4 c |
    c8 g g g~g4 r4 |
    r8\mf a,8 a'4 r8 b,8 b'4 | 
    r8 a,8 a'4 r8 b,8 b'4 |
    bf,,2 c2 |
    c2 bf2 |
    gs'2( g |
    fs2 f |
    e2 ef) \fermata \breathe |
    ef1 \fermata \bar "|."
}


scoreAClarinetII = \relative c'' {
    \global
    \transposition c'
    % Music follows here.
    R1 |
    r8\mf g g( c,) ef( c4.) |
    R1 |
    R1 |
    R1 |
    ef2 f2 |
    ef2 f2 \bar "||" |
    \mark \default
    ef2 f2 |
    ef2 f2 |
    ef2 f2 |
    ef2 f2 |
    %% Bar 12
    c2 af2 |
    c2 af2 |
    r8\f d g( gf f) d a'( af |
    g1) |
    % Bar 16
    ef2\mf f2 |
    ef2 f2 |
    ef2 f2 |
    ef2 f2 |
    bf,2 c2 |
    c2 f2 |
    r4 bf8( a) bf( c) a4
    g1( |
    g,1) \bar "||" |
    % Switch to Fish Gotta Swim - bar 25
    \mark \default
    \key c \major
    R1 |
    R1 |
    e'4\mp e e e |
    fs4 fs d d |
    e4 e e e |
    c d ef e |
    f4 c c c |
    c4 c c c |
    r8 g a( g) bf( g~g4) |
    g4 g c c |
    d1 |
    d1 |
    r8 g a( g) bf( g~g4) |
    R1 \bar "||" |
    % Chorus for Can't Help bar 39
    \mark \default
    g'8\f g g c~c4 c |
    c8 g g g~g4 r4 |
    e8 e e a~a4 a |
    a8 d, d d~d4 r4 |
    g2 c,2 |
    af8 c d ef~ef4 d |
    c1 |
    R1 |
    e,4\mf e e e |
    f4 f g g |
    e4 e e e |
    f4 f4 f f |
    e2 a2 |
    c,4 c d d |
    r8 g a( g) bf( g~g4) |
    c,4 d ef e \bar "||" |
    
    % Bridge bar 55
    \mark \default
    f4-.\mp f-. f-. f-. |
    fs4-. fs-. fs-. fs-. |
    g4-. g-. g-. g-. |
    a4-. a-. a-. a-. |
    g2\<   g4 g |
    fs2  fs4 fs\! |
    f!1\f |
    g4 f e d \bar "||" |
    
    % Finale bar 63
    \mark \default
    \key c \minor
    a4\mf a' b, b' |
    a,4 a' b, b' |
    ef,2 f2 |
    ef2 f2 |
    g4 f ef c |
    ef4 c ef2 |
    f2( e |
    ef!2 d |
    df2 c)\fermata \breathe |
    c1 \fermata \bar "|."
}
 

scoreAClarinetIII = \relative c' {
    \global
    \transposition c'  
    % Music follows here.
    r8 ef(\mf gf f ef) c( ef f |
    g2) r2 |
    R1*3
    a4 a' b, b' | 
    a,4 a' b, b' \bar "||" | 
    \mark \default
    a,4 a' b, b' | 
    a,4 a' b, b' | 
    a,4 a' b, b' | 
    a,4 a' b, b' | 
    %% Bar 12
    af,4~( \tuplet 3/2 { af8 bf b } c4~ \tuplet 3/2 { c8 df d) } |
    ef1 |
    b2 c2 |
    g1 |
    r8  a8( a'4) r8 b,8( b'4) | 
    r8 a,8( a'4) r8 b,8( b'4) | 
    r8 a,8( a'4) r8 b,8( b'4) | 
    r8 a,8( a'4) r8 b,8( b'4) | 
    g,2 g2 |
    a2 af2 |
    g1 |
    r4 bf,8( a) bf( c) a4
    c1 \bar "||" |
    % Switch to Fish Gotta Swim -- "Hey listen sister"
    \mark \default
    \key c \major
    R1 |
    R1 |
    r8\mf g' a( g) bf g8~g4 |
    r8 a b( a) ds,( e~e) g~ |
    g4 r4 r8 e8( g e~ |
    e8) c( e c~c4) r4 |
    a'4\mp a a e16( f gf g) |
    af4 af af ef16( e f gf) |
    g4 g e e |
    c4-> b-> a-> af-> |
    
    r8\mf g' g g g d'~d ef~ |
    ef8 d~d f~f ef d4 |
    c1~ |
    c1 \bar "||" |
    % Chorus for Fish, bar 39
    \mark \default
    e,4 e e e |
    f4 f g g |
    e4 e e e |
    f4 f4 f f |
    e2 a2 |
    c,4 c d d |
    r8 g a( g) bf( g~g4) |
    r8 a b!( a) ef( e~e4) |
    g4 g a a |
    d,4 d f f |
    e4 e a a |
    a4 a af af |
    c4 b a g |
    gf2 g2 |
    e1 |
    R1 \bar "||" |
    
    % Bridge
    \mark \default
    d'4\mf d d d |
    ef8( c'8~) c2. |
    e,4 e e e |
    fs8( d'8~) d2. |
    g,4\< g g g |
    a a a a\! |
    d2\f r8 c b a |
    g2 r4 g8( ef)  \bar "||" |
    
    % Finale
    \mark \default
    \key c \minor
    g1~\f |
    g4 f8( ef) f( g) ef4 |
    c2 g2 |
    r2 r4 g4 |
    bf4 g8 bf c ef~ef4 |
    g8 f~f4 r4 ef |
    c1~ |
    c1~ |
    c1 \fermata \breathe
    r4^\markup { \italic "ad lib" } b16( c b a b2) \fermata \bar "|."
}


scoreABassClarinet = \relative c' {
    \global
    \transposition c
    % Music gfollows here.
    r8 ef(\mf gf f ef) c( ef f |
    g2) r2 |
    g,1~ |
    g1~ |
    g1 |
    g'1 |
    g1 \bar "||" |
    \mark \default
    g1 |
    g1 |
    g1 |
    g1 |
    %% Bar 12
    f,4~( \tuplet 3/2 { f8 gf g } af4~ \tuplet 3/2 {af8 bf b)} |
    c1 |
    g1 |
    r8 g e' ef d4 g,4 |
    %% Bar 16
    c2 d2 |
    c2 d2 |
    c2 d2 |
    c2 d2 |
    ef2 ef2 |
    ef2 bf2 |
    c1~ |
    c1 |
    r4 bf8( a) bf( c) a4 \bar "||" |
    \mark \default
    \key c \major
    c4 r c r |
    c4\> r c r\! |
    c4\mp c a' a |
    d,4 d g g |
    c,1 |
    c4 d ef e |
    f4 r f r |
    f4 r f r |
    c1~ |
    c1 |
    g1 |
    g1 |
    c1 |
    g'4\< f e d\! \bar "||" |
    % Chorus for Can't Stop, bar 39
    \mark \default
    c4\mf c a a |
    d4 d g, g |
    c4 c a a |
    f'4 f f2 |
    c4 c a a |
    af2 g2 |
    c4 c c c |
    d4 d g g |
    c,4 c a a |
    d4 d g, g |
    c4 c a a |
    f'4 f f2 |
    c4 c a a |
    af2 g2 |
    c4 c c c |
    c bf a g \bar "||" |
    % Bridge, bar 55
    
    \mark \default
    f4-.\mp f-. f-. f-. |
    a4-. a-. a-. a-. |
    e4-. e-. e-. e-. |
    d'4-. d-. d-. d-. |
    c4-.\< c-. c-. c-. |
    b4-. b-. b-. b-.\! |
    g1\f |
    g2 r2 \bar "||" |

    % Finale, bar 63
    \mark \default
    \key c \minor
    c2 d2 |
    c2 d2 |
    c2 d2 |
    c2 d2 |
    ef2 c2 |
    af2 c2 |
    d2( df2 |
    c2 b2 |
    bf!2 a2)\fermata \breathe |
    g1 \fermata \bar "|."
}


scoreAClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  midiInstrument = "clarinet"
} \scoreAClarinetI

scoreAClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  midiInstrument = "clarinet"
} \scoreAClarinetII

scoreAClarinetIIIPart = \new Staff \with {
  instrumentName = "Clarinet III"
  midiInstrument = "clarinet"
} \scoreAClarinetIII

scoreABassClarinetPart = \new Staff \with {
  instrumentName = "Bass clarinet"
  midiInstrument = "clarinet"
} \scoreABassClarinet

\bookpart { 
    \header {
      title = "Summertime / Can't Help Lovin Dat Man"
      instrument = "for Clarinet Quartet"
      composer = "Gershwin / Hammerstein"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    
    \score {
      <<
        \scoreAClarinetIPart
        \scoreAClarinetIIPart
        \scoreAClarinetIIIPart
        \scoreABassClarinetPart
      >>
      \layout { }
      \midi { }
    }
}

\paper {
    raggied-bottom = ##t
}

\bookpart {
   \header {
      title = "Summertime / Can't Help Lovin Dat Man"
      instrument = "Bb Clarinet 1"
      composer = "Gershwin / Hammerstein"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIPart }
}


\bookpart {
   \header {
      title = "Summertime / Can't Help Lovin Dat Man"
      instrument = "Bb Clarinet 2"
      composer = "Gershwin / Hammerstein"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIIPart }
}

\bookpart {
   \header {
      title = "Summertime / Can't Help Lovin Dat Man"
      instrument = "Bb Clarinet 3"
      composer = "Gershwin / Hammerstein"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIIIPart }
}

\bookpart {
   \header {
      title = "Summertime / Can't Help Lovin Dat Man"
      instrument = "Bass Clarinet"
      composer = "Gershwin / Hammerstein"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreABassClarinetPart }
}
