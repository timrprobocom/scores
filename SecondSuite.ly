
\version "2.16.0"
\include "english.ly"

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

common = {
    \time 4/4
    \key g \minor
    \tempo 4 = 72
}

cresc = \markup { \italic "cresc." }
dim   = \markup { \italic "dim." }
rit   = \markup { \italic "rit." }

solo = \relative c'' {
    \common
    r2 d2~ |
    d4 r4 d2 ~ |
    d4 r4 d2 ~ |
    d4 r4 d2 ~ |
    d4 r4 d2 ~ |
    d4 r4 d2 ~ |
    d4 r4 d2 ~ |
    d4 r4 d2( |
    e4) r4 c2( |
    d4) r4 r2 |
    r2 g,2 |
    a4( g4 f2) |
    f'2( e2) |
    e2( d4) r4 |
    R1 |
    R1 |
    R1 \bar "||" \mark \markup A
}



\header {
    title = "Second Suite in F"
    subtitle = "2. Song Without Words"
    piece = "Eb Clarinet Cues"
    tagline = ""
}



\score {
    \new Staff \with { instrumentName="Bb Clar" } \solo
}

