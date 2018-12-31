\version "2.16.0"
\include "english.ly"

\header {
  title = "Summertime / Can't Help Lovin Dat Man"
  instrument = "for Clarinet Quartet"
  composer = "Gershwin / Hammerstein"
  arranger = "Arr Roberts"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key b \minor
  \time 4/4
  \tempo "Swing" 4=88
}

scoreAClarinetI = \relative c' {
  \global
  \transposition bf
  % Music follows here.
  r8 d f e d b d e |
  fs2 r2 |
  r8 fs'' fs d b g e cs |
  a8 fs d b gs4 as4 |
  gs4 as gs as |
  R1 |
  r2 r4 fs''8 d \bar "||"
  fs1~ |
  fs4 e8 d e fs d4 |
  b2 fs2~ |
  fs2 r4 fs'8 d |
  %% bar 12
  e8 e8~ e2. |
  r4 d8  b d b d4 |
  cs1 |
  r2 r4 fs8 d |
  %% Bar 16
  fs1~ |
  fs4 e8 d e fs d4 |
  b2 fs2~ |
  fs2 r4 fs |
  a4 fs8 a b4 d4 |
  fs8 e8~e4~e4 d |
  b1( |
  b,1)  |
  b1 \bar "||" |
  % Switch to Fish Gotta Swim
  \key b \major
  R1 |
  R1 |
}

scoreAClarinetII = \relative c'' {
  \global
  \transposition bf
  % Music follows here.
  R1 |
  r8 fs fs b, d b4. |
  R1 |
  R1 |
  R1 |
  d2 e2 |
  d2 e2 \bar "||" |
  d2 e2 |
  d2 e2 |
  d2 e2 |
  d2 e2 |
  %% Bar 12
  b2 g2 |
  b2 g2 |
  r8 cs fs f e cs gs' g |
  fs1 |
  % Bar 16
  d2 e2 |
  d2 e2 |
  d2 e2 |
  d2 e2 |
  a,2 b2 |
  b2 e,2 |
  r4 a8 gs a b gs4
  fs1( |
  fs,1) \bar "||" |
  % Switch to Fish Gotta Swim
  \key b \major
  R1 |
  R1 |
 }

scoreAClarinetIII = \relative c' {
  \global
  \transposition bf
  % Music follows here.
  r8 d f e d b d e |
  fs2 r2 |
  R1*3
  gs4 gs' as, as' | 
  gs,4 gs' as, as' \bar "||" | 
  gs,4 gs' as, as' | 
  gs,4 gs' as, as' | 
  gs,4 gs' as, as' | 
  gs,4 gs' as, as' | 
  %% Nar 12
  g,4~ \tuplet 3/2 { g8 a bf } b4~ \tuplet 3/2 { b8 c cs } |
  d1 |
  as2 b2 |
  fs1 |
  gs4 gs' as, as' | 
  gs,4 gs' as, as' | 
  gs,4 gs' as, as' | 
  gs,4 gs' as, as' | 
  fs,2 fs2 |
  gs2 g2 |
  fs1 |
  r4 a,8 gs a b gs4
  b1 \bar "||" |
  % Switch to Fish Gotta Swim -- "Hey listen sister"
  \key b \major
  R1 |
  R1 |
  r8 fs' gs fs a fs8~fs4 |
  r8 gs as gs cx, ds~ds fs~ |
  fs4 r4 r8 ds8 fs ds~ |
  ds8 b ds b~b4 r4 |
  r8 b b b  b gs'~ gs4 |
  r8 b, cs as? cs g'~ g fs~ |
  fs1 |
  R1 |
  r8 fs, fs fs fs cs'~cs d~ |
  d8 cs~cs e~e d cs4 |
  b1 |
  b1 |
  % Chorus for Fish
}

scoreABassClarinet = \relative c' {
  \global
  \transposition bf
  % Music follows here.
  r8 d f e d b d e |
  fs2 r2 |
  fs,1~ |
  fs1~ |
  fs1 |
  fs'1 |
  fs1 \bar "||" |
  fs1 |
  fs1 |
  fs1 |
  fs1 |
  %% Bar 12
  e,4~ \tuplet 3/2 { e8 f fs } g4~ \tuplet 3/2 {g8 a bf} |
  b!1 |
  fs1 |
  r8 fs ds' d cs4 fs4 |
  %% Bar 16
  b,2 cs2 |
  b2 cs2 |
  b2 cs2 |
  b2 cs2 |
  d2 d2 |
  d2 a2 |
  b1~ |
  b1 |
  r4 a8 gs a b gs4 \bar "||" |
  \key b \major
  b4 r b r |
  b4 r b r |
  b4 b gs' gs |
  cs,4 cs fs fs |
  b,1 |
  b4 cs d ds |
  e4 r e r |
  e4 r e r |
  b1 |
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
