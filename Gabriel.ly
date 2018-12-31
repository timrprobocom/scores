
\version "2.16.0"
\include "english.ly"

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

common = {
    \time 4/4
    \key d \major
    \tempo 4 = 72
}

cresc = \markup { \italic "cresc." }
dim   = \markup { \italic "dim." }
rit   = \markup { \italic "rit." }

solo = \relative c'' {
    \common
    R1 |
    R1 |
    \bar "||"
    a16(\mp b a g a4 ~ a4.) a8 |
    \times 2/3 { d8( e d cs d cs } b8) a a4~ |
    a4. a8(  d8 e16 d cs8 d16 cs) |
    b2~  b8 d8( cs b |
    a16 g a8)~ a4 ~ a4. a8 |
    fs'8(_\cresc e) e( d) d4. a8 |
    fs'16( e) e( d) d2 cs16(\< d cs d)\! |
    b2~\> b8\! b8(\< d g)\! |
    g8(_\cresc fs) fs2   d8( b') |
    b2~\f b4. a8 |
    a1~\> |
    a2 r2\! |

    \bar "||"
    a,16(\p_\cresc b a g a4 ~ a4.) a8 |
    \times 2/3 { d8(\< e d cs d cs } b8)\! a a4~ |
    a4. a8(  d8 e16 d cs8 d16 cs) |
    b2~  b8 d8( cs b |
    a16_\dim g a8)~ a4 ~ a4. a8 |
    fs'8(_\cresc e) e( d) d4. a8 |
    fs'16( e) e( d) d2 cs16(\< d cs d)\! |
    b2~\> b8\! b8(\< d g)\! |
    g8(_\cresc fs) fs2   d8( b') |
    b2~\f b4. a8 |
    a2~\> a8\! r8 g(\mf fs) |
    e2.( fs4) |
    fs2. r8 d8( |
    \time 2/4 
    g4 fs) |
    \time 4/4
    e2..\>_\rit d8\! |
    d1 \fermata 
    \bar "|."
}

clar_ii = \relative c'' {
    \common
    R1
    g4 fs e a |

    % theme

    \bar "||"
    d,2.(\p  cs4) |
    a2\< b4\!\p( cs8 d) |
    e2 a2 |
    g4.( fs8 g2) |
    g4.( fs8 e2) |
    fs2_\cresc fs2 |
    fs2 fs4 b4\< |
    b1\!\mf |
    a2 d4( cs) |
    b1 |
    a1~\> |
    a1\!

    % repeat

    \bar "||"
    d,4(\p_\cresc e8 fs g2) |
    a2\< b4.(\! a16 b) |
    cs4.( b16 cs) d4( a4) |
    g1~ |
    g2_\dim e2 |
    fs4._\cresc d16( e fs4.) d16( e |
    fs4.) d16(\! e fs4.) d16(\p e |
    fs4.) d16(\! e fs4) g4\< |
    a4. gs16( a b2~)\! |
    b8\f a( g fs e2) |
    a2.\> g8(\!\mf fs) |
    e1 |
    fs4. e8( d2) |
    \time 2/4
    g4( fs4) |
    \time 4/4
    e1\>_rit |
    d1\!\fermata 
    \bar "|."
}

clar_iii = \relative c'' {
    \common
    r2 a16( b a g a4) |
    a2 a,2 |

    % theme

    \bar "||"
    d2( e2) |
    a2\p\< a2 |
    a2\! a,2 |
    g1 |
    d'2( cs2 |
    d2)_\cresc d2 |
    d2 d4 d4\< |
    a'4(\!\mf g) fs4.( e8) |
    g8 d16( e16 fs2)  fs4 |
    a4 g2 fs4 |
    e1~\> |
    e1\! |

    % repeat

    \bar "||"
    d2.(\p_\cresc cs4) |
    d2\< d2\! |
    e2 d4( d'4) |
    b1 |
    a1\> | 
    a,2\!_\cresc d2 |
    d2 d4. d8\< |
    d2\!\> d4\! d4\< |
    d2\!_\cresc d4 d4 |
    d2\f cs2 |
    d2\> d2\! |
    d2\mf cs2 |
    cs2 b2~ |
    \time 2/4
    b2 |
    \time 4/4
    d2\>_rit cs2\! |
    a1\fermata

    \bar "|."
}

clar_bass = \relative c' {
    \common
    a16( b a g a2.) |
    d2 cs2 |

    % theme

    \bar "||"
    d2(\p e2) |
    fs2\< g2~\!\p |
    g2 fs2 |
    d1 |
    e2 a2 |
    d2_\cresc cs2 |
    b2 a2\< |
    g2\!\mf g2 |
    d4 cs b a |
    g1 |
    a1~\> |
    a1\~ |

    % repeat

    \bar "||"
    d2(\p e2) |
    fs2\< g2~\!\p |
    g2 fs2 |
    d1 |
    e2 a2 |
    d2_\cresc cs2 |
    b2 a2\< |
    g2\!\mf g2 |
    d4\< cs b a\! |
    g1\f |
    fs2\> g2\! |
    a2\mf a2 |
    as2  b4. a8 |
    \time 2/4
    g2 |
    \time 4/4
    a1_rit\> |
    d1\!\fermata

    \bar "|."
}

\bookpart {

    \header {
        title = "Gabriel's Oboe"
        composer = "Ennio Morricone"
        tagline = ""
    }

    \score {
%%        \new StaffGroup \transpose d' c' <<
        \new StaffGroup <<
            \new Staff {
                \set instrumentName="Bb Clar 1"
                \set Staff.midiInstrument = #"clarinet"
                \solo
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
        title = "Gabriel's Oboe"
        composer = "Ennio Morricone"
        piece = "Bb Clarinet 1"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 1" } \solo
    }
}

\bookpart {
    \header {
        title = "Gabriel's Oboe"
        composer = "Ennio Morricone"
        piece = "Bb Clarinet 2"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 2" } \clar_ii
    }
}

\bookpart {
    \header {
        title = "Gabriel's Oboe"
        composer = "Ennio Morricone"
        piece = "Bb Clarinet 3"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 3" } \clar_iii
    }
}

\bookpart {
    \header {
        title = "Gabriel's Oboe"
        composer = "Ennio Morricone"
        piece = "Bass Clarinet"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bass Clar" } \clar_bass
    }
}
