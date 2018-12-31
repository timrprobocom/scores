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

piu = \markup { \italic "piu mosso" }
rit = \markup { \italic rit. }
mpmf = \markup { \italic mp-mf  }

prefix = {
  \time 4/4
  \key d \major
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
  \override Staff.TimeSignature #'style = #'()
}

notation = {
    \prefix
}

melody_a = \relative c'' {
    \prefix
    \set Staff.vocalName = \markup A
    \set Staff.shortVocalName = \markup A
    a4. fs8 a4. fs8 |
    a8 b8 a2 d,8 e |
    fs8 fs fs fs~fs d e4 |
    d2. r4 |
}

melody_b = \relative c' {
    \prefix
    \set Staff.vocalName = \markup B
    \set Staff.shortVocalName = \markup B
    fs2. e8 fs8 |
    g2. fs8 g8 |
    a8 a a a~a a g4 |
    fs2 r4 d8 e8 |
}

melody_c = \relative c'' {
    \prefix
    \set Staff.vocalName = \markup C
    \set Staff.shortVocalName = \markup C
    d2. cs8 d |
    b2. d8 d8 |
    cs8 cs cs cs~cs cs b4 |
    a2. r4 |
}


rh_a = \relative c' {
    <a d fs>4 a8 <a d fs>8~ <a d fs>8 a8 <d fs a>4 |
    <b d g>4  b8 <b d g>8~ <b d g>8 b8 <d g b>4 |
    <cs e a>4 cs8 <cs e a>8~ <cs e a>8 <cs e a>8 <b d g>4 |
    <a d fs>4 a8 <a d fs>8~ <a d fs>8 a8 <a d fs>4 |
}

lh_a = \relative c, {
    <d d'>2 d'4. d8 |
    g,2 g4. g8 |
    a2 a4. a8 |
    <d, d'>2 d'4. d8 |
}

rh_b = \relative c' {
    <a d fs>4 r4 r4 <a d fs> 4 |
    <b d g>4  r4 r4 <d g b>4 |
    <cs e a>4 r4 r4 <b d g>4 |
    <a d fs>4 r4 r2 |
}

lh_b = \relative c, {
    d4 r r d |
    g4 r r g |
    a4 r r g |
    d4 r r2 |
}


righthand = \relative c' {
    \prefix
    \repeat volta 2 \rh_a

    <a d fs>4 a8 <a d fs>8~ <a d fs>8 a8 <d fs a>4 |
    <b d g>4  b8 <b d g>8~ <b d g>8 b8 <d g b>4 |
    <e a cs>4 e8 <e a cs>8~ <e a cs>8 <g b d>8 <a cs e>4 |
    <fs a d fs>4 
    <d fs a d>8-.
    <d fs a d>8-.
    <d fs a d>4->
    r4 
    \bar "|."
}


lefthand = \relative c, {
    \override MultiMeasureRest #'expand-limit = #1

    \prefix
    \clef bass
    \repeat volta 2 \lh_a

    <d d'>2 d'4. d8 |
    g,2 g4 g4 |
    a2 a4 a4 |
    <d d'>4-> 
    <d d'>8-. 
    <d d'>8-. 
    <d d'>4-> 
    r4 
    \bar "|."
}

\header {
    title = "Bahana"
    composer = "Congolese Folk Song"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  <<
  \new ChoirStaff <<
    \new Staff \melody_a
    \new Staff \melody_b
    \new Staff \melody_c
  >>
  \new PianoStaff <<
    \new Staff = "upper" \transpose c' c'  \righthand
    \new Staff = "lower" \transpose c' c'  \lefthand
  >>
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner
          #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
%  \midi {}
}
\markup {
    \column {
        \line { A B C }
        \line { ABC ABC }
        \line { C C C C tag }
    }
}

