
\version "2.16.0"
\include "english.ly"

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

common = {
    \time 4/4
    \key d \major
    \tempo 4 = 60
    \mark "Gently, smoothly, rubato"
}

legato = \markup { \italic "legato." }
cresc = \markup { \italic "cresc." }
dim   = \markup { \italic "dim." }
rit   = \markup { \italic "rit." }

clar_i = \relative c' {
    \common
    R1 |
    R1 |

    \mark \default
    fs8\p_\legato a4 fs8~fs8 a4 fs8 |
    \time 2/4
    fs8( a8) fs8( a8) |
    \time 4/4
    a4.-> b8 g4.( fs8) |
    e8(\< fs) fs( g) g( a) a( b)\! |
    d4.-> cs16( b) cs4. d8 \breathe |

    d2.->\p cs8 b8 |
    cs8-> a4.~ a2 |
    b8(-> d8) g, fs e4. d8 |

    d1~ |
    d1~ |
    d1\fermata |
    
    \mark \default
    a4--(\p  a-- a-- a--) |

    a4--( a-- a-- a--) |
    \time 2/4
    a4--( a--) |
    \time 4/4
    d4--( d-- d-- d--) |
    d4--(\< d-- d-- d--)\! |
    d4--( d-- d-- d--) \breathe |

    b4--( b-- b-- b--) |
    a4--( a-- a-- a--) |
    b4--( b-- b-- b--) \breathe |

    d'8--( fs4-- d4-- fs8-- d8-- fs-- |
    fs4. e16 d e8 e4-> e8~ |
    e16 e d cs d e d cs d2)\fermata |

    \bar "|."
}

clar_ii = \relative c' {
    \common
    fs4--(\p fs-- fs-- fs--) |
    fs4--( fs-- fs-- fs--) |

    \mark \default
    fs4--( fs-- fs-- fs--) |
    \time 2/4
    fs4--( fs--) |
    \time 4/4
    g4--( g-- g-- g--) |
    g4--(\< g-- g-- g--)\! |
    g4--( g-- g-- g--) \breathe |

    g4--(\p g-- g-- g--) |
    fs4--( fs-- fs-- fs--) |
    g4--( g-- a-- a--) \breathe |

    fs'8--( a4-- fs-- a8-- fs-- a-- |
    a4. g16 fs g8 g4-> g8~ |
    g16 g fs e fs g fs e fs2)\fermata |

    \mark \default
    R1 |
    fs,8\p_\legato a4 fs8~fs8 a4 fs8 |
    \time 2/4
    fs8( a8) fs8( a8) |
    \time 4/4
    a4.-> b8 g4.( fs8) |
    e8(\< fs) fs( g) g( a) a( b)\! |
    d4.-> cs16( b) cs4. d8 \breathe |

    d2.->\p cs8 b8 |
    cs8-> a4.~ a2 |
    b8(-> d8) g, fs e4. d8 |

    d1~ |
    d1~ |
    d1~ |
   

    \bar "|."
}


clar_iii = \relative c' {
    \common
    a4--(\p a-- a-- a--) |
    a4--(    a-- a-- a--) |

    \mark \default
    a4--( a-- a-- a--) |
    \time 2/4
    a4--( a--) |
    \time 4/4
    d4--( d-- d-- d--) |
    d4--(\< d-- d-- d--)\! |
    d4--( d-- d-- d--) \breathe |

    b4--(\p b-- b-- b--) |
    a4--( a-- a-- a--) |
    b4--( b-- b-- b--) \breathe |

    d'8--( fs4-- d4-- fs8-- d8-- fs-- |
    fs4. e16 d e8 e4-> e8~ |
    e16 e d cs d e d cs d2)\fermata |

    \mark \default
    fs,4--( fs-- fs-- fs--) |
    fs4--( fs-- fs-- fs--) |
    \time 2/4
    fs4--( fs--) |
    \time 4/4
    g4--( g-- g-- g--) |
    g4--(\< g-- g-- g--)\! |
    g4--( g-- g-- g--) \breathe |

    g4--(\p g-- g-- g--) |
    fs4--( fs-- fs-- fs--) |
    g4--( g-- a-- a--) \breathe |

    fs'8--( a4-- fs-- a8-- fs-- a-- |
    a4. g16 fs g8 g4-> g8~ |
    g16 g fs e fs g fs e fs2)\fermata |
    \bar "|."
}

clar_bass = \relative c' {
    \common
    d4--(\pp d-- d-- d--) |
    d4--( d-- d-- d--) |

    \mark \default
    d4--( d-- d-- d--) |
    \time 2/4
    d4--( d--) |
    \time 4/4
    a4--( a-- a-- a--) |
    a4--(\< a-- a-- a--)\! |
    a1-> \breathe |

    g1\p |
    d'4--( d-- d-- d--) |
    e4--( e4--) a,2 \breathe |

    d4-- d4( cs c |
    b2. bf4~ |
    bf4 a2.)\fermata |

    \mark \default
    d4--( d-- d-- d--) |
    d4--( d-- d-- d--) |
    \time 2/4
    d4--( d--) |
    \time 4/4
    a4--( a-- a-- a--) |
    a4--(\< a-- a-- a--)\! |
    a1-> \breathe |

    g1\p |
    d'4--( d-- d-- d--) |
    e4--( e4--) a,2 \breathe |

    d4-- d4( cs c |
    b2. bf4~ |
    bf4 d2.)\fermata |
    \bar "|."
}

\bookpart {

    \header {
        title = "In Trutina - Carmina Burana"
        composer = "Carl Orff"
        tagline = ""
    }

    \score {
        \new StaffGroup <<
            \new Staff {
                \set instrumentName="Bb Clar 1"
                \set Staff.midiInstrument = #"clarinet"
                \clar_i
            }
            \new Staff  {
                \set instrumentName="Bb Clar 2"
                \set Staff.midiInstrument = #"clarinet"
                \clar_ii
            }
            \new Staff {
                \set instrumentName="Bb Clar 3"
                \set Staff.midiInstrument = #"clarinet"
                \clar_iii
            }
            \new Staff {
                \set instrumentName="Bass Clar"
                \set Staff.midiInstrument = #"baritone sax"
                \clar_bass
            }
            >>

        \layout { }

        \midi {}
    }
}

\paper {
    ragged-bottom = ##t
}

\bookpart {
    \header {
        title = "In Trutina - Carmina Burana"
        composer = "Carl Orff"
        piece = "Bb Clarinet 1"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 1" } \clar_i
    }
}

\bookpart {
    \header {
        title = "In Trutina - Carmina Burana"
        composer = "Carl Orff"
        piece = "Bb Clarinet 2"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 2" } \clar_ii
    }
}

\bookpart {
    \header {
        title = "In Trutina - Carmina Burana"
        composer = "Carl Orff"
        piece = "Bb Clarinet 3"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 3" } \clar_iii
    }
}

\bookpart {
    \header {
        title = "In Trutina - Carmina Burana"
        composer = "Carl Orff"
        piece = "Bass Clarinet"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bass Clar" } \clar_bass
    }
}
