
\version "2.16.0"
\include "english.ly"

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

common = {
    \time 2/4
    \key ef \major
}

cresc = \markup { \italic "cresc." }
dim   = \markup { \italic "dim." }
rit   = \markup { \italic "rit." }

solo = \relative c'' {
    \common
    \override Score.BarNumber #'break-visibility = ##(#t #t #t)
    \tempo 4 = 60

    R2 |
    R2 | 
    g2~\mf |
    g4 f8.( d16) |
    f8.-> ef16~ef16 d( c d |
    ef2) |
    g2~ |
    g16 bf8->\f( a16) g8( f8) |
    f4\mf~ f16 ef( g f) |

    % Bar 10 system 2

    ef2 |
    d2~ |
    d16 f8->( ef16 d8 c8) |
    c4~ c16 bf( d c) |
    bf4~ bf16 d( c bf) |
    a16(\< cs e g) bf-. a8-> c16~->\!\f |
    c16 bf\>( a g) f8. e16\! |
    g8->\mf f16-. e16~->e16 d( f8) \bar "||" |

    % Bar 18 system 3
    
    \key a \minor
    e8->\mp b16-. d16~d16 f( e8) |
    d8->-. c-. b->-. d-. |
    f8.-> e16->~e16 d( c d) |
    e16 e a c b( a) g( f) |
    e8-> c16-. a'~ a16 g( f8) |
    e8->-. g-. f->-. e-. |
    d8 c16 g'->~g f( e d) |
    c16 c f a g( f) e( d) |
    cs8-> a16-. e'->~e d( c8 ) |

    % Page 2 system 1 bar 27

    e8->-. d-. cs->-. c16( b) |
    bf8 a16 e'~-> e d( c bf) |
    a16 a b c b8 bf16( a16) |
    gs8.-.\< d'8. b8 |
    e,16( gs) b( d)\! e8\mf\> d\! |
    f8.--\mp  e16~->e d( c e) \bar "||" |

    b''2~\mf |
    b16 c8->( b16) d16( c\prall b a) |

    % Page 2 system 2 bar 35

    a8.-- g16~-> g fs( e fs) |
    g4 r16 e'16( b g) |
    fs2~ |
    \times 2/3 { fs8 cs( as } fs8. e16) |
    e4~ e16 d( fs e) |
    d8.( b16) cs16( d fs e) |
    d2 |
    r16 d( e a g f e f) |

    % Page 2 system 3 bar 43

    g8-. f16\prall e~e d-. e8-> |
    f4 r16 d( f a) |
    gs2 ~ |
    gs8 r8 r4 |
    R2 |
    R2 |
    R2 |
    R2 |

    % Page 3 system 1 bar 51

    b16(\f\< d fs) b d-. cs8-> e16~\!\ff |
    e16 d( bf a) g( a) bf( d) |
    e16(\> d a g) f( e d f)\! |
    e8->-.\mf e,,16 d''~d c-. b8->-. |
    a8->-. e16\ff e->~e e( c8) |
    d8->-. d-. f->-. d16-. e~ |
    e16 a8-> a16~->a a-. e8->-. |
    \times 2/3 { r8 f-- f-- } \times 2/3 { e-- e-- d-- } |

    % Page 3 system 2 bar 59

    c4 r16 e16-. e-. e-. |
    d8-.\< d16-. f~-> f e8-> e16~-> |
    e16 e8-> c'16~->\!\ff c b(\> a g) |
    f8-. f16-. e~-> e e( d8)\! |
    c4\p   r16 c-. c-. c-. |
    bf8-. bf16-. d~->d e8-> f16~-> |
    f16 f8-> a16~-> a a( f8 ) |
    g8-> r8 r4 |

    % Page 3 system 3 bar 67

    R2 |
    R2 |
    r16 c(\< e a) c( b) a( c)\! |
    b8-.\ff b16->\> a~->a g( fs8)\! |
    e8--\f r8 r4 |
    b'4.\f b32( a g fs) |
    e8 fs16-. g~->g b( g a) |

    % Page 4 system 1 bar 74

    b4 \times 4/6 { b16( a g fs b a) } |
    g16( fs) e b~b b32( ds e fs g a) |
    b4.\< b32( a g fs) |
    e16 b'8 e16~->\!\ff e d(\> c b) |
    a8-> a16-. g~->g e d8->\! |
    r16 e(\mf f g f e d c) |
    d16-> e,,-. d''-. f~->f f8-> e16~-> |

    % Page 4 system 2 bar 81

    e16 e8-> a16~->a a-. e8-> |
    \times 2/3 { r8 f-- f-- } \times 2/3 { e-- e-- d-- } |
    c16 c\< e a c( b) a( c)\! |
    b8->\f b16 a~-> a g( fs8) |
    e16\> g, b e g( fs) e( d)\!  \bar "||" |
    \key d \major 
    fs8-.\mp fs,,16-. fs'16~ fs e-. d8-. |
    cs8->-. b-. as->-. fs-. |
    b8-> d16-. fs->~fs d( d cs) |

    % Page 4 system 3 bar 89

    b4  b8( cs) |
    d8-. d16 d'~d c-. b8-. |
    a8-> g-. fs->-. d-. |
    g8-. b16-. d->~d d-. d,8-. |
    g8( b) a( g) |
    fs8-. b,16-. b'~->b a g8-. |
    fs8->-. e-. ds->-. b-. |
    e8-. g16-. b~->b b-. b,8-. |
    e4 b8( e8) |

    % Page 5 system 1 bar 98

    fs8.-.\< cs8.-> fs,8-.\! |
    as8\mf r8 fs'8-.\f fs,8-. |
    b8.-.\> fs'8.->-. b,8-.\! |
    cs''2~\mf |
    \times 2/3 { cs8 e( d } cs8. gs16) |
    b8.-> a16~-> a gs( fs gs) |
    a2 |
    a2~ |

    % Page 5 system 2 bar 106

    \times 2/3 { a8 e'( cs } \acciaccatura {a16 c16} a8 g8 ) |
    g4~ g16 fs( a g) |
    fs4\> e16( d cs b)\! |
    as8\mp cs16-. fs~->fs fs-. as,8-> |
    r8 cs-. e( cs) |
    r8 d16-. e~->e d( cs8) |
    b4 r16 b(\< cs d) |
    cs16( es gs) b d cs8->\! e!16~->\f |

    % Page 5 system 3 bar 114

    e16 d(\> cs b) a8-. gs-. |
    fs4\! fs8 gs8 |
    a2 |
    a2 |
    b8->-.b16 a~->a g( fs8) \bar "||" |
    \tempo "piu mosso" 4 = 72
    \key e \minor
    e8\mf r8 r4 |

    % Page 6 system 1 bar 120

    b'4.\f b32( a g fs) |
    e8-. fs16-. g~->g b( g a) |
    b4 \times 4/6 { b16( a g fs b a) } |
    g16( fs) e b~~b b32( ds e fs g a) |
    b4.\< b32( a g fs |
    e16) b'8->\! e16~->\ff e16 d(\> c b) |

    % Page 6 system 2 bar 126
 
    a8-> a16-. g->( f) e( d8)\! |
    e8\mf \times 2/3 { e16( f g) } \times 4/6 { a( g f) e( d c) } |
    d8-> d16-. f~->f f8-> e16~->  |
    e16 e8-> a16~->a a-. e8-> |
    \times 2/3 { r8 f-- f-- } \times 2/3 { e-- e-- d-- } |
    c16 c\< e a c( b) a( c)\! |
    b8->\f b16-. a16~->a g( fs8) |
    e8 r8 r4 |

    % Page 6 system 3 bar 134

    fs8--\p fs16-. e~--e d( cs8) \bar "||" |
    \key b \minor
    b8-. fs'16-.\f fs~->fs fs-. d32( e fs d) |
    e8->-. e32( fs g fs) g16( fs e) fs~-> |
    fs16 b8-> b16~->b b-. fs8->-. |
    \times 2/3 { r8 g-- g-- } \times 2/3 { fs-- fs-- e-- } |
    d4 r16 fs16 d32( e fs d) |
    e8-.\< e16-. g~->g fs8-> fs16~-> |

    % Page 7 system 1 bar 141

    fs16 fs8->\! d'16~\ff d cs(\> b a) |
    g8-. g16-. fs~->fs fs(\! e8)\p |
    d4-- d4\<\trill |
    c8-.\!\mf c16-. e~->e fs8-> g16~-> |
    g16 g8-> b16~->b b-. g8-> |
    a8-> r8 r4 |
    r16 g,(\< b e) g( fs) e( d)\! |
    c8\f r8 r4 |

    % Page 7 system 2 bar 149

    r16 fs8->\ff d'16~->d cs( b fs) |
    e8 r8 r4 |
    r32 d'( cs b  a g fs e) d( cs b as b cs d e) |
    fs8 r8 r4 |
    r16 fs( g fs) b( a) g( fs) |
    e8 r8 r4 |

    % Page 7 system 3 bar 155

    \times 4/6 { r16 fs,(gs) as( b cs) } \times 4/6 { d( e fs) g( a g) } |
    fs8 r8 r4 |
    \tempo "Poco meno mosso" 4 = 60
    r16 fs(\mf e d e fs cs' b) |
    e,8.\>( fs16 a g fs e)\! |
    fs8.--\p e16~--e d cs8-- |
    b2~ |
    b8 r8 b'8-. r8 

    \bar "|."
}

\paper {
    ragged-bottom = ##t
}

\bookpart {
    \header {
        title = "Danzon No 5"
        subtitle = "Portales de Madrugada"
        composer = "Arturo Marquez"
        piece = "Solo Bb Clarinet"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Solo Bb Clar" } \solo
    }
}
