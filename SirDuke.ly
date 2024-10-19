\version "2.18.1"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    #(set-default-paper-size "letter" )
    #(set-paper-size "letter" )
    ragged-last-bottom = ##t
}

\header {
    title = "Sir Duke"
    composer = "Stevie Wonder"
    arranger = "Arr T Roberts"
    tagline = #f
}

common = {
    \numericTimeSignature 
    \override Score.BarNumber #'break-visibility = #all-visible
    \override Score.BarNumber #'self-alignment-X = #0
    \override Score.BarNumber #'self-alignment-Y = #1
    \override MultiMeasureRest #'expand-limit = #1
    \set Score.markFormatter = #format-mark-box-letters
    \key f \major
    \time 4/4
    \tempo 4 = 120
}


spacing = {
    s1*8 \bar "||" \mark \default
    s1*12 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    \bar "|."
}


introN = {
    f4 a c8. f16 r4 |
    d,8 d f16 e f r a16 gs a d16 r4 |
    df,8 df f f af16 g af8 df8. c16 |
    R1 |

    f,4 a c8. f16 r4 |
    d,8 d f16 e f r a16 gs a d16 r4 |
    df,8 df f f af16 g af8 df8. c16 |
    R1 |
}

introW = \lyricmode {
    Doo doo doo dat
    Doot doot did -- dle -- it did -- dle -- it dat 
    Doot doot doot doot did -- dle -- it doo dat

    Doo doo doo dat
    Doot doot did -- dle -- it did -- dle -- it dat 
    Doot doot doot doot did -- dle -- it doo dat
}


breakN = {
    f8 r8   r16 f a g   r g d' c  r8 c,16 d |
    f8 g16 af   a c d f  r g af a r4 |
    d8. a16   r8 c8~c8 g8~g8 a8 |
    g16 f d c  g' f d f~f4 r4 |

    a8 g16 f   g f d f  d c d8   r16 c a c |
    a16 g a g   f g f d~d8 c8  r4 |
    c16 d f g  a c d f   r d f8 r16 d8 c16 |
    d8 r16 c8 a16 c8 r8 c16 c r4 |
}

breakW = \lyricmode {
    Doot dah dee doot dah dee doot  do bah
    Doot do bah doo -- dle -- ee doot ba dah doot 
    doo dah doo dah de doo -- dle -- ee -- dle -- doo -- dle -- ee doo
    doot dee -- dle -- oo -- dle -- ee -- dle -- oo -- dle -- ee
       ba dee da doo -- dle -- ee -- dle -- doo -- dle -- ee -- doo bah
    doo -- dle -- ee -- dle doo -- dle -- ee doo ba doo  doo ba doo doo ba doo
    wab -- bat
}






soprano = \relative c' {
    \clef treble 
    \common
    \set Staff.midiInstrument = #"flute"

    \introN

    \bar "||"

    r8 a16 r r a r r a2 |
    r8 a16 r r a r r a2 |
    r8 af16 r r af r r af2 |
    R1 |

    r8 a16 r r a r r a2 |
    r8 a16 r r a r r a2 |
    r8 af16 r r af r r af2 |
    R1 |

    R1 |
    R1 |
    R1 |
    R1 |

    \bar "||"

    \breakN

    \bar "|."
}

soplyrics = \lyricmode {
    \introW

    Doot doot bah
    Doot doot bah
    Doot doot bah

    Doot doot bah
    Doot doot bah
    Doot doot bah

    \breakW
}

alto = \relative c' {
    \clef treble 
    \common
    \set Staff.midiInstrument = #"clarinet"

    \introN

    \bar "||"

    r8 f,16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    R1 |

    r8 f16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    R1 |

    R1 |
    R1 |
    R1 |
    R1 |

    \bar "||"

    \breakN

    \bar "|."
}

altolyrics = \lyricmode {
    \introW

    Doot doot bah
    Doot doot bah
    Doot doot bah

    Doot doot bah
    Doot doot bah
    Doot doot bah

    \breakW
}

tenor = \relative c {
    \clef bass
    \common
    \set Staff.midiInstrument = #"trombone"

    \introN

    \bar "||"

    r4 a8 c d c a f |
    f8 g4 f8 r c d f |
    af8 g f df f af4 g8~ |
    g2 r2 |

    r4 a8 c d c a f |
    f8 g4 f8 r c d f |
    af8 g f df f af4 g8~ |
    g2 r4 r8 f16 f |

    f8 f e e ef ef16 d16~d8 d |
    ef ef e e16 f16 r4 r16 f f f | 
    f8 f16 f16 e8 e16 ef16 r ef d8 r8 d16 d |
    ef8  e f8 gf16 g16 r4 r4 |

    \bar "||"

    \breakN

    \bar "|."
}


tenorlyrics = \lyricmode {
    \introW

    Mu -- sic is a world with --
    in it -- self  it is a 
    lang -- uage we all un -- der --
    stand

    With an e -- qual op -- por --
    tun -- i -- ty for all to
    sing and dance and clap their
    hands

    Just be -- cause a rec -- ord has a groove don't
    make it in the groove
    And you can tell right a -- way at let -- ter 'A' when the
    Peo -- ple start to move

    \breakW
}

bass = \relative c,  {
    \clef bass
    \common
    \set Staff.midiInstrument = #"tuba"

    %%% \introN

    f4 a c8. f16 r4 |
    d,8 d f16 e f r a16 gs a d16 r4 |
    df,8 df f f af16 g af8 df8. c16 |
    R1 |

    f,4 a c8. f16 r4 |
    d,8 d f16 e f r a16 gs a d16 r4 |
    df,8 df f f af16 g af8 df8. c16 |
    r8 c8 c8 r16 c16 r c bf8 a8 g8 |

    \bar "||"

    f8 r c' r f r c cs |
    d8 r a r d r a r |
    df8 r af r df r af r |
    r8 c8 c8 r16 c16 r c bf8 a8 g8 |

    f8 r c' r f r c cs |
    d8 r a r d r a r |
    df8 r af r df r af r |
    R1 |

    R1 |
    R1 |
    R1 |
    R1 |

    \bar "||"

    \breakN

    \bar "|."
}

basslyrics = \lyricmode {
    \introW

    bop bop bop ba doo bop bop

    doot doot doot doo bee
    doot doot doot doot
    doot doot doot doot
    bop bop bop ba doo bop bop

    doot doot doot doo bee
    doot doot doot doot
    doot doot doot doot
    %% bop bop bop ba doo bop bop

    \breakW
}


\score {
    <<
        \new Voice = "soprano" <<
            \set Staff.instrumentName = #"Soprano"
            \spacing
            \soprano
        >>
        \new Lyrics \lyricsto soprano \soplyrics

        \new Voice = "alto" <<
            \set Staff.instrumentName = #"Alto"
            \spacing
            \alto
        >>
        \new Lyrics \lyricsto alto \altolyrics

        \new Voice = "tenor" <<
            \set Staff.instrumentName = #"Tenor"
            \spacing
            \tenor
        >>
        \new Lyrics \lyricsto tenor \tenorlyrics

        \new Voice = "bass" <<
            \set Staff.instrumentName = #"Bass"
            \spacing
            \bass
        >>
        \new Lyrics \lyricsto bass \basslyrics
    >>
        \midi { }
    \layout { }
}

