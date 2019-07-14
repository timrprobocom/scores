
\version "2.16.0"
\include "english.ly"

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

common = {
    \time 4/4
    \key f \major
    \tempo 4 = 132
    \set Score.markFormatter = #format-mark-box-letters
}

cresc = \markup { \italic "cresc." }
dim   = \markup { \italic "dim." }
rit   = \markup { \italic "rit." }
submf = \markup { \italic "subito mf" }

clar_i = \relative c'' {
    \common
    R1 |
    R1 |
    R1 |
    R1 |
    c8(\mf d f a)~a2 |
    r4  a8( g a g f4) |
    c8( d f a)~a2 |
    r4  a8( g a g f8)-. r8 |

    \bar "||" \mark \default
    c4 f e8 f g a |
    r4 f8 f e f e d |
    R1 |
    R1 |
    c4 f e8 f g a |
    r4 f8 f e f e d |
    R1 |
    R1 |

    c8( d f) a~a2 |
    r4  a8( g a g f4) |
    c8( d f) a~a2 |
    r4  a8( g bf a f8) g8~ |
    g8 a~a g~g4 r4 |
    r4 bf8 a bf( a) f g~ |
    g8 a~a c,~c4 r4 |
    r2 bf'4-> a-> |
    g8 c, c c c c c c |
    r2 bf'4-> a-> |
    g8 c, c c c c c c |
    r2 a'8( f) g( f)-. |

    % Chorus 1.

    \bar "||" \mark \default
    r4_\submf g8-. f-. g-. f-. r4 |
    r4 f8-. f-. g( a)-. g( f)-. |
    r4 g4 f4 r8 bf8~-> |
    bf8 bf bf bf a4 f4 |
    r4 g8-. f-. g-. f-. r4 |
    r4 f8-. f-. g( a)-. g( f)-. |
    r4 g4 f4 r8 bf8~-> |
    bf8 bf bf bf a4 f4 |

    \bar "||" \mark \default
    r4\f c'4. c8 c c~ |
    c8 g~g a~a bf4. |
    r4 a4. a8 a a~ |
    a8 e~e f~f g4. |
    r4 g4  f4 r8 bf8~ |
    bf8 bf8 a f g f g f |
    r4  g8 f g f r4 |
    r4 f8 f g a g( f) |
    r4 g4 f4 r8 bf8~ |
    bf8 bf8 a f g f g( f) |
    
    \bar "||" \mark \default
    f,8\mf c' f, c' f, c' f, cs' |
    f,8 cs' f, cs' f, cs' f, c' |
    f,8 c' f, c' f, c' f, cs' |
    f,8 cs' f, cs' f, cs' f,-> r8 |

    % Second verse

    \bar "||" \mark \default
    f4 c f a |
    f4 c f a |
    r4 f'8 f g( f) f f |
    r4 bf8 bf a( f) f f |
    f,4 c f a |
    f4 c f a |
    r4 f'8 f g( f) f f |
    r4 bf8 bf a( f) f f |

    f,8 c' f, c' f, c' f, cs' |
    f,8 cs' f, cs' f, cs' f, c' |
    f,8 c' f, c' f, c' f, cs' |
    f,8 cs' f, cs' f, cs' f, d' |

    d4 bf d f |
    d4 bf d f |
    c8 g c g c g c g |
    r2 d4-> c-> |
    g4 r4 c8 c c c |
    r2 d4-> c-> |
    g4 r4 c8 c c c |
    c4 r4 d e |

    % Chorus 2

    \bar "||" \mark \default
    r4_\submf g8-. f-. g-. f-. r4 |
    r4 f8-. f-. g( a) g( f) |
    r4 g4 f4 r4 |
    r2 a8-. f-. a-. f-. |
    r4 g8-. f-. g-. f-. r4 |
    r4 f8-. f-. g( a) g( f) |
    r4 g4 f4 r4 |
    r2 a8-. f-. a-. f-. |

    \bar "||" \mark \default
    f8 r8 f\f e f a c4 |
    g1 |
    d8 r8 d cs d f a4 |
    e1 |
    f2 r4 r8 g,8~  |
    g8 a bf b c g c g |
    f'8 f f f f f f f |
    f8 f f f f f f f |
    bf8 bf bf bf bf bf bf c->~ |
    c1 |

    r4 g'8-^\f f-^ g-^ f-^ r8 
    
    \bar "|."
}


clar_ii = \relative c'' {
    \common
    R1 |
    R1 |
    R1 |
    R1 |
    c8(\mf d c) f~f2 |
    r4 f8( e f e c4) |
    c8( d c) f~f2 |
    r4 f8( e f e c8)-. r8 |

    % Verse

    \bar "||" \mark \default
    c4 f e8 f e f |
    r4 c,4 a8 c e d |
    r4 d'8 d ef( d) d d |
    r4 f8 f f( c) c c |
    c4 f e8 f e f |
    r4 c4 a8 c e d |
    r4 d8 d ef( d) d d |
    r4 f8 f f( c) c c |

    c8( d f) a~a2 |
    r4  a4 a f4 |
    c8( d f) a~a2 |
    r4  a4 bf f |

    d8 f d f d f d f |
    d8 f d f d f d f |
    a4 a g8 e d c |
    r2 f4-> f4-> |
    e4 c4 c8 c c c |
    r2 f4-> f4-> |
    e4 c4 c8 c c c |
    c4 r d e |

    % Chorus 1

    \bar "||" \mark \default
    f8_\submf f f f f f f f |
    f8 f f f f f f f |
    bf,8 bf bf bf bf bf bf bf |
    bf8 bf bf bf bf bf bf bf |
    f'8 f f f f f f f |
    f8 f f f f f f f |
    bf,8 bf bf bf bf bf bf bf |
    bf8 bf bf bf bf bf bf bf |

    \bar "||" \mark \default
    f'8 r8 f2.->\f |
    e4 e e e |
    d8 r8 d2.-> |
    cs4 cs cs cs |
    d4 r4 r4 d4 |
    e1 |
    f4 r4 a8 g f e |
    d2. r4 |
    bf4-> r4 r4 bf4 |
    e1 |

    \bar "||" \mark \default
    c8(\mf d f a)~a2 |
    r4  a8( g a g f4) |
    c8( d f a)~a2 |
    r4  a8( g a g f8)-. r8 |

    \bar "||" \mark \default
    c4 f e8 f g a |
    r4 f8 f e f e d |
    R1 |
    R1 |
    c4 f e8 f g a |
    r4 f8 f e f e d |
    R1 |
    R1 |

    c8( d f) a~a2 |
    r4  a8( g a g f4) |
    c8( d f) a~a2 |
    r4  a8( g bf a f8) g8~ |
    g8 a~a g~g4 r4 |
    r4 bf8 a bf( a) f g~ |
    g8 a~a c,~c4 r4 |
    r2 bf'4-> a-> |
    g8 c, c c c c c c |
    r2 bf'4-> a-> |
    g8 c, c c c c c c |
    r2 a'8( f) g( f)-. |

    % Chorus 1.

    \bar "||" \mark \default
    r4_\submf g8-. f-. g-. f-. r4 |
    r4 f8-. f-. g( a)-. g( f)-. |
    r4 g4 f4 r8 bf8~-> |
    bf8 bf bf bf a4 f4 |
    r4 g8-. f-. g-. f-. r4 |
    r4 f8-. f-. g( a)-. g( f)-. |
    r4 g4 f4 r8 bf8~-> |
    bf8 bf bf bf a4 f4 |

    \bar "||" \mark \default
    r4\f c'4. c8 c c~ |
    c8 g~g a~a bf4. |
    r4 a4. a8 a a~ |
    a8 e~e f~f g4. |
    r4 g4  f4 r8 bf8~ |
    bf8 bf8 a f g f g f |
    r4  g8 f g f r4 |
    r4 f8 f g a g( f) |
    r4 g4 f4 r8 bf8~ |
    bf8 bf8 a f g4 f4 |
    
    r4 bf,8-^ a-^ bf-^ a-^ r4 
    \bar "|."
}


clar_iii = \relative c' {
    \common
    f8 c' f, c' f, c' f, cs' |
    f,8 cs' f, cs' f, cs' f, c' |
    f,8 c' f, c' f, c' f, cs' |
    f,8 cs' f, cs' f, cs' f, c' |
    f,8 c' f, c' f, c' f, cs' |
    f,8 cs' f, cs' f, cs' f, c' |
    f,8 c' f, c' f, c' f, cs' |
    f,8 cs' f, cs' f, cs' f,-> r8 |

    % First verse

    \bar "||" \mark \default
    f4 c f a |
    f4 c f a |
    r4 f'8 f g( f) f f |
    r4 bf8 bf a( f) f f |
    f,4 c f a |
    f4 c f a |
    r4 f'8 f g( f) f f |
    r4 bf8 bf a( f) f f |

    f,8 c' f, c' f, c' f, cs' |
    f,8 cs' f, cs' f, cs' f, c' |
    f,8 c' f, c' f, c' f, cs' |
    f,8 cs' f, cs' f, cs' f, d' |

    d4 bf d f |
    d4 bf d f |
    c8 g c g c g c g |
    r2 d4-> c-> |
    g4 r4 c8 c c c |
    r2 d4-> c-> |
    g4 r4 c8 c c c |
    c4 r4 d e |

    % Chorus 1

    \bar "||" \mark \default
    r4_\submf g8-. f-. g-. f-. r4 |
    r4 f8-. f-. g( a) g( f) |
    r4 g4 f4 r4 |
    r2 a8-. f-. a-. f-. |
    r4 g8-. f-. g-. f-. r4 |
    r4 f8-. f-. g( a) g( f) |
    r4 g4 f4 r4 |
    r2 a8-. f-. a-. f-. |

    \bar "||" \mark \default
    f8 r8 f\f e f a c4 |
    g1 |
    d8 r8 d cs d f a4 |
    e1 |
    f2 r4 r8 g,8~  |
    g8 a bf b c g c g |
    f'8 f f f f f f f |
    f8 f f f f f f f |
    bf8 bf bf bf bf bf bf c->~ |
    c1 |

    \bar "||" \mark \default
    c8(\mf d c) f~f2 |
    r4 f8( e f e c4) |
    c8( d c) f~f2 |
    r4 f8( e f e c8)-. r8 |

    % Verse

    \bar "||" \mark \default
    c4 f e8 f e f |
    r4 c,4 a8 c e d |
    r4 d'8 d ef( d) d d |
    r4 f8 f f( c) c c |
    c4 f e8 f e f |
    r4 c4 a8 c e d |
    r4 d8 d ef( d) d d |
    r4 f8 f f( c) c c |

    c8( d f) a~a2 |
    r4  a4 a f4 |
    c8( d f) a~a2 |
    r4  a4 bf f |

    d8 f d f d f d f |
    d8 f d f d f d f |
    a4 a g8 e d c |
    r2 f4-> f4-> |
    e4 c4 c8 c c c |
    r2 f4-> f4-> |
    e4 c4 c8 c c c |
    c4 r d e |

    % Chorus 1

    \bar "||" \mark \default
    f8_\submf f f f f f f f |
    f8 f f f f f f f |
    bf,8 bf bf bf bf bf bf bf |
    bf8 bf bf bf bf bf bf bf |
    f'8 f f f f f f f |
    f8 f f f f f f f |
    bf,8 bf bf bf bf bf bf bf |
    bf8 bf bf bf bf bf bf bf |

    \bar "||" \mark \default
    f'8 r8 f2.->\f |
    e4 e e e |
    d8 r8 d2.-> |
    cs4 cs cs cs |
    d4 r4 r4 d4 |
    e1 |
    f4 r4 a8 g f e |
    d2. r4 |
    bf4-> r4 r4 bf4 |
    e1 |

    r4 c,8-^\f c-^ c-^ c-^ r4

    \bar "|."
}

clar_bass = \relative c' {
    \common
    f8 r f r f r f r |
    f8 r f r f r f r |
    f8 r f r f r f r |
    f8 r f r f r f r |
    f8 r f r f r f r |
    f8 r f r f r f r |
    f8 r f r f r f r |
    f8 r f r f r c4-> |

    % First verse.

    \bar "||" \mark \default
    f4 c f a  |
    f4 c f a  |
    bf,4 c bf f' |
    bf4 a g f |

    f4 f f f  |
    f4 f f f  |
    bf,4 c bf f' |
    bf4 a g f |

    f8 r f r f r f r |
    f8 r f r f r f r |
    f8 r f r f r f r |
    f8 r f r d r d r |
    bf4 bf bf bf |
    bf4 bf bf bf |
    c4 c c c |
    c4 r4 bf4-> a-> |

    g4 c e g |
    c g bf,4-> a-> |
    g4 c e g |
    c4 bf a g |

    % Chorus 1

    \bar "||"  \mark \default
    f8_\submf r f, r f r f r |
    f8 r f r f r f r |
    bf8 r bf r bf r bf r |
    bf8 r bf r bf r bf r |
    f8 r f r f r f r |
    f8 r f r f r f r |
    bf8 r bf r bf r bf r |
    bf8 r bf r bf r bf r |

    \bar "||" \mark \default
    f'4 f2.->\f |
    c4 c c c |
    d4-> d2. |
    a4 a a a |
    bf2 bf |
    c1 |
    f,8 r f r f r f r |
    f r f r f r f r |
    bf8 r bf r bf r bf r |
    c1 |

    \bar "||" \mark \default
    f8\mf r f r f r f r |
    f8 r f r f r f r |
    f8 r f r f r f r |
    f8 r f r f r c4-> |

    % Second verse.

    \bar "||" \mark \default
    f4 c f a  |
    f4 c f a  |
    bf,4 c bf f' |
    bf4 a g f |
    f4 f f f  |
    f4 f f f  |
    bf,4 c bf f' |
    bf4 a g f |

    f8 r f r f r f r |
    f8 r f r f r f r |
    f8 r f r f r f r |
    f8 r f r d r d r |
    bf4 bf bf bf |
    bf4 bf bf bf |
    c4 c c c |
    c4 r4 bf4-> a-> |

    g4 c e g |
    c g bf,4-> a-> |
    g4 c e g |
    c4 bf a g |

    % Chorus 2

    \bar "||"  \mark \default
    f8_\submf r f, r f r f r |
    f8 r f r f r f r |
    bf8 r bf r bf r bf r |
    bf8 r bf r bf r bf r |
    f8 r f r f r f r |
    f8 r f r f r f r |
    bf8 r bf r bf r bf r |
    bf8 r bf r bf r bf r |

    \bar "||" \mark \default
    f'4 f2.->\f |
    c4 c c c |
    d4-> d2. |
    a4 a a a |
    bf2 bf |
    c1 |
    f,8 r f r f r f r |
    f r f r f r f r |
    bf8 r bf r bf r bf r |
    c1 |
    
    r4 f,8-^\f f-^ f-^ f-^ r4

    \bar "|."
}

\bookpart {

    \header {
        title = "Mamma Mia!"
        composer = "ABBA"
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
        title = "Mamma Mia!"
        composer = "ABBA"
        piece = "Bb Clarinet 1"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 1" } \clar_i
    }
}

\bookpart {
    \header {
        title = "Mamma Mia!"
        composer = "ABBA"
        piece = "Bb Clarinet 2"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 2" } \clar_ii
    }
}

\bookpart {
    \header {
        title = "Mamma Mia!"
        composer = "ABBA"
        piece = "Bb Clarinet 3"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 3" } \clar_iii
    }
}

\bookpart {
    \header {
        title = "Mamma Mia!"
        composer = "ABBA"
        piece = "Bass Clarinet"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bass Clar" } \clar_bass
    }
}
