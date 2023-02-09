%{
    Comments
%}
\version "2.16.0"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}



prefix = {
  \time 2/4
  \set Score.markFormatter = #format-mark-box-barnumbers
  \mark \markup { Moderato }
%%  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
}

subMp = \markup { sub \dynamic mp }
ten = \markup { \italic ten }


%
% Define the parts.
%

clarBass = {
  c4\p r4 | g4 r4 | c4 c4 | g8-. g8-. g8-. r8 | c4 r4 | g4 r4 | c4 c8-. f,-. |
  g4( c8) r8 | c8-.\f c-. c-. c-. |
  % Bar 10
  g-. g-. g-. g-. | c-. c-. c-. c-. | g-. g-. g-. r | c-. c-. c-. c-. | 
  g-. g-. g-. g-. | c-. c-. c-. g-. | c-. c-. c-. r | g4\p g16-. a-. b-. g-. |
  % Bar 18
  c4\cresc c16-. d-. e-. c-. | d4 d16-. e-. fs-. d-. | g4 r4 |
  c,8-.\f c-. c-. c-. | g-. g-. g-. g-. | c-. c-. c-. c-. | g'4( c,8) r8 |
  % Bar 25
  c16-.\mf r c-. r c-. r c-. r | b-. r b-. r b-. r b-. r |
  c-. r c-. r c-. r c-. r | g-. r g'-. r g,-. r r8 |
  % Bar 29
  c16-. r c-. r c-. r c-. r | b-.\cresc r b-. r b-. r b-. r |
  c-. r f-. r g-. r g,-. r | c8 g' c, r | g\f r g' r | c, r c' r |
  % Bar 35
  d,8 r d r | g, g' g, r | c16-.\mf r c-. r c-. r c-. r |
  f-. r f-. r f-. r f-. r | g-. r g-. r g,-. r g-. r | c8 g c r |
  % Bar 41
  c16-.\f d-. e-. f-. g-. a-. b-. c-. | b( c) d-. b-. g( a) g-. f-. |
  e-. g-. c-. b-. a-. g-. f-. e-. | d( g) b-. a-. g( f) e-. d-. |
  c-. d-. e-. f-. g-. a-. b-. c-. | 
  % Bar 46
  b( c) d-. b-. g( a) g-. f-. | e-. c'-. g-. e-. d-. g-. f-. d-. | 
  c-. c'-. g-. e-. c8 r8 | g'16( a) b-. c-. d( b) g-. b-. |
  c( d) e-. d-. c( b) a-. g-. |
  % Bar 51 - page 2
  fs16( g) a-. g-. fs( d) e-. fs-. | g( a b a g f e d) |
  c-. d-. e-. f-. g-. a-. b-. c-. | b( c) d-. b-. g( a) g-. f-. |
  e-. c'-. g-. e-. d-. g-. f-. d-. |
  % Bar 56
  c-. c'-. g-. e-. c8 r8 | c8\mf r c r | g r g r | c r c r | g r g r |
  c r c r | bf r bf r |
  % Bar 63
  ef8 r bf r | ef,-. ef-. ef-. r | g4 r4 | g8 r g r | g4 r | g4 r |
  c8 r c r | f, r f r | g r g r |
  % Bar 72
  c8-. c-. c-. r | c\mf r f, r | g16-. r g r g r g r | c8 r c8 r |
  g8-. g-. g-. r | c8 r c r |
  % Bar 78
  g16-. r g-. r g-. r g-. r | e8( f g) g | c-. c-. c-. r |
  g4\f r | c r | d d | g, r | c8\mf r c r |
  % Bar 86
  g16-. r g-. r g-. r g-. r | e8( f g) g | c-. c-. c-. r |
  g4\p g16-. a-. b-. g-. | c4\cresc c16-. d-. e-. c-. | d4 d16-. e-. fs-. d-. |
  % Bar 92
  g4 r | c,8\f r c r | g r g r | c r c-. g-. | c8 r c r | g r g r | c r c r |
  % Bar 99
  g r g r | c4 r8 g-. | c4 r8 g-. | c16-. c-. b-. c-. g-. c-. e,-. g-. | 
  c4 c4 | c2\fermata | \bar "|."
}




% Bass Clarinet

bassClar = \relative c' {
  \set Staff.instrumentName = #"Bass Clar "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \clef treble \key c \major
  \prefix
  \relative c' \clarBass
}



\header {
    title = "MODERATO dalla SONATA A QUATTRO n.3"
    composer = "Gioacchino ROSSINI"
    arranger = "Antonio Fraioli"
    tagline = ""
}




%
% Define the things that print.
%

\score {
  \new Staff \bassClar 
  \midi { 
    \context { 
      \Score tempoWholesPerMinute = #(ly:make-moment 160 8) 
    }
  }
  \layout { }
}

