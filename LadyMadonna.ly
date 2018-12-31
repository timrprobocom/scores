%{
    Comments
%}
\version "2.16.0"
\include "english.ly"

#(set-default-paper-size "letter" )
% #(set-global-staff-size 24)

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}



prefix = {
  \time 4/4
  \set Score.markFormatter = #format-mark-box-barnumbers
  \mark \markup { B\flat Tenor Sax }
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
  \override Staff.TimeSignature #'style = #'()
}

subMp = \markup { sub \dynamic mp }
ten = \markup { \italic ten }


%
% Define the parts.
%

dashPlus = "trill"

music = \relative c' {
  \prefix
  \clef treble
  \key b \major
  
  % Bar 1, 5, 9
  \repeat unfold 3 {
    b8-. b-. d( ds) e-. e-. g16( gs16 b8) |
    b,8-. b-. d( ds) e-. e-. g16( gs16 b8) |
    b,8-. b-. d( ds) e-. e-. fs-. fs-. | 
    g g a a b-. b-. b-. b-. |
  }
  % Bar 13
  \mark \default 
  e4 d cs d |
  e4 a,2. |
  d4 cs b cs |
  d8( b) cs4 d fs |
  % Bar 17
  e4 d cs d |
  e4 cs8 a8~a2 |
  fs'2 e4( cs4) |
  fs,1 |
  % Bar 21, 25
  \mark \default 
  \repeat unfold 2 {
    b,8-. b-. d( ds) e-. e-. g16( gs16 b8) |
    b,8-. b-. d( ds) e-. e-. g16( gs16 b8) |
    b,8-. b-. d( ds) e-. e-. fs-. fs-. | 
    g g a a b-. b-. b-. b-. |
  }

  % Bar 29
  \mark \default
  e4 d cs d |
  e8( a,) a2. |
  d2 b4( cs) |
  b4 cs d fs |
  % Bar 33
  e4 d cs d |
  e8( a,) a2. |
  fs'2 e4( cs) |
  fs,1 |

  % Bar 37
  \mark \default
  b,8-. b-. d( ds) e-. e-. g16( gs16 b8) |
  b,8-. b-. d( ds) e-. e-. g16( gs16 b8) |
  b,8-. b-. d( ds) e-. e-. fs-. fs-. | 
  \bar "||"
  \time 2/4
  g8-. g-. a-. a-. |
  \bar "||"
  \time 4/4
  % Bar 41
  b8 b4 b8 cs8 cs4 cs8 |
  d4-> cs8-. b~-> b2 |
  b8 b4 b8 cs8 cs4 cs8 |
  d4-> cs8-. b~-> b2 |
  b8 b4 b8 cs8 cs4 cs8 |
  d4-> cs8-. b~-> b4 r4 |
  b,8^rit b4 b8 cs8 cs4 cs8 |
  d4-> cs8-. b8~-> b2\fermata 
  \bar "|."
}


\header {
    title = "Lady Madonna"
    composer = "Lennon/McCartney"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  \new Staff \transpose f f  \music 
  \layout { 
    \context {
      \Score
      \override SpacingSpanner
          #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
%  \midi {}
}

