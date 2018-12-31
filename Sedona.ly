
\version "2.16.0"
\include "english.ly"

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

common = {
    \time 4/4
    \key f \major
}

cresc = \markup { \italic "cresc." }
dim   = \markup { \italic "dim." }
rit   = \markup { \italic "rit." }

solo = \relative c' {
    \common
    \override Score.BarNumber #'break-visibility = ##(#t #t #t)
    \set Score.currentBarNumber = #122

    R1 |
    c4 g'8. e16 f8 d4 bf16( d |
    c4.)  c8 d( c) bf d |
    ef8 bf4 g'8 f4( e4 |
    f8) r8 r4 r2 |
    c4 g'8. e16 f8 d4 bf16( d |
    c4.)  c8 d e f16( g a bf |
    c4)  bf8 g8 a2 |
    %% 130
    R1 |
    f,4 c'8. a16  bf8 f'4 f8 |
    g4 f4 c8 f4 d8 |
    ef8 bf4 g'8 f4( e4 |
    f8) r8 r4 r2 |
    f4 c'8. a16  bf8 f'4 bf,8 |
    a4 f4 g8-> a8-> bf4-> 
    \bar "|."
}

\paper {
    ragged-bottom = ##t
}

\bookpart {
    \header {
        title = "Sedona [122]"
        composer = "Steven Reineke"
        piece = "Bb Clarinet 1"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 1" } \solo
    }
}
