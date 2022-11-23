%{
    Comments
%}
\version "2.14.2"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    #(set-default-paper-size "letter" )
    #(set-paper-size "letter" )
    ragged-last-bottom = ##t
}

\header {
    title = "Celtic Moods"
    composer = "Jonny Roberts"
}

soprano = \relative c' {
    \clef treble \key d \major
    \time 3/4
    \tempo 4 = 120
    \set Staff.midiInstrument = #"flute"

    fs2. | fs | a | e' | b | cs | d | cs |
    b | cs | d | cs | d2 e8 fs8 | a2 g8 fs8 | e2 d4 |
    d2. \bar "||"

    \key ef \major
    \transpose d ef  \relative c' {
      fs2. | fs | a | e' | b | cs | d | cs |
      b | cs | d | cs | d2 e8 fs8 | a2 g8 fs8 | e2 d4 |
      d2. 
    }
    \bar "|."
}

soplyrics = \lyricmode {
    Ah ah ah ah ah ah ah ah
    ah ah ah ah He holds me close when I'm lo -- ne -- ly
    Ah ah ah ah ah ah ah ah
    ah ah ah ah When win -- ter comes, I' -- ll say good bye.
}

alto = \relative c' {
    \clef treble \key d \major
    \time 3/4
    \tempo 4 = 120
    \set Staff.midiInstrument = #"clarinet"

    d2. | d | d | cs | d2 e8 fs8 | a2 fs4 | b2. | a |
    d,2. | fs | fs | a | fs | e | e | 
    f \bar "||"

    \key ef \major
    \transpose d ef \relative c' {
      d2. | d | d | cs | d2 e8 fs8 | a2 fs4 | b2. | a |
      d,2. | fs | fs | a | fs | e | e | 
      fs 
    }
    \bar "|."
}

altolyrics = \lyricmode {
    Ah ah ah ah Dre -- am -- ing we're to -- geth -- er
    ah ah ah ah ah ah ah ah
    Ah ah ah ah My lo -- ve he will find me 
    ah ah ah ah ah ah ah ah
}

tenor = \relative c' {
    \clef bass \key d \major
    \time 3/4
    \tempo 4 = 120
    \set Staff.midiInstrument = #"trombone"

    a2. | b | a | g | a | e | d' | e |
    b2 a8 g8 | fs2 a4 | d2 cs4 | b2 a4 | a2. | a | a |
    af \bar "||"

    \key ef \major
    \transpose d ef \relative c' {
      a2. | b | a | g | a | e | d' | e |
      b2 a8 g8 | fs2 a4 | d2 cs4 | b2 a4 | a2. | a | a |
      a 
    }
    \bar "|."
}

tenorlyrics = \lyricmode {
    Ah ah ah ah ah ah ah ah
    She leans to me and whis -- pers swe -- et ah ah ah ah
    Ah ah ah ah ah ah ah ah
    We'll share a kiss and me, I'll fly _ ah ah ah ah
}

bass = \relative c {
    \clef bass \key d \major
    \time 3/4
    \tempo 4 = 120
    \set Staff.midiInstrument = #"tuba"

    d2 e4 | fs2 e4 | d2 b4 | a2. | fs' | a, | b' | a |
    d, | cs | d | cs | d | a | cs2 a4 |
    bf2. \bar "||"

    \key ef \major
    \transpose d ef \relative c {
      d2 e4 | fs2 e4 | d2 b4 | a2. | fs' | a, | b' | a |
      d, | cs | d | cs | d | a | cs2 a4 |
      d2.
    }
    \bar "|."
}

basslyrics = \lyricmode {
    Dream -- ing of my true love fair ah ah ah ah
    ah ah ah ah ah ah ah ah ah
    When the sum -- mer's warm wind blows ah ah ah ah
    ah ah ah ah ah ah ah ah ah
}


\score {
    <<
        \new Voice = "soprano" <<
            \set Staff.instrumentName = #"Soprano"
            \soprano
        >>
        \new Lyrics \lyricsto soprano \soplyrics
        \new Voice = "alto" <<
            \set Staff.instrumentName = #"Alto"
            \alto
        >>
        \new Lyrics \lyricsto alto \altolyrics
        \new Voice = "tenor" <<
            \set Staff.instrumentName = #"Tenor"
            \tenor
        >>
        \new Lyrics \lyricsto tenor \tenorlyrics
        \new Voice = "bass" <<
            \set Staff.instrumentName = #"Bass"
            \bass
        >>
        \new Lyrics \lyricsto bass \basslyrics
        \new PianoStaff <<
            \new Staff << << \soprano \\ \alto >> >>
            \new Staff << << \tenor \\ \bass >> >>
        >>
    >>
        \midi { }
    \layout { }
}

