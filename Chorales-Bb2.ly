
\version "2.16.0"
\include "english.ly"

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

common = {
    \set Score.markFormatter = #format-mark-box-letters
}

\header {
    piece = "2nd Bb Clarinet"
}

cresc = \markup { \italic "cresc." }
dim   = \markup { \italic "dim." }
rit   = \markup { \italic "rit." }
submf = \markup { \italic "subito mf" }

chorale_i = \relative c' {
    \key g \major \time 4/4
    \repeat volta 2 {
        \partial 4 d4 |
        d8 d d d e4 g4 |
        g16 c b a g8( a) b4\fermata b4 |
        g8 a16 b c8 d16 c b8( a) a( d) |
        <d b>4 <cs a>4 a\fermata g |
        g4 fs g8( a) d,( g) |
        g4( fs) d\fermata
    } r4 |
    a'2 g2\fermata |
    g8( fs16 e) fs4 g2\fermata |
    g8( d) g( d) fs4 fs |
    g4 g fs g |
    a8( g16 fs) g4 e( fs) |
    d2\fermata b'4 b8( a) |
    g4 g g8( fs) g4 |
    g4( fs) d\fermata
    \bar "|."
}

chorale_ii = \relative c' {
    \key f \major \time 4/4
    \partial 4 f4 |
    f4 e8( f) f( g) a4 |
    bf2\fermata  r4 g8( f) |
    e8( d) e4 f g |
    f4( e4) c\fermata  f |
    f4 bf bf8( a) g4 |
    f2\fermata r4 g |
    g4 f g a |
    g2 e4\fermata g |
    f8( g) f4 f8( g) a4 |
    f2\fermata r4 bf4 |
    bf4 b c c8{ b} |
    c2\fermata  r4 c |
    bf4 c c8( bf) a( g) |
    f2\fermata r4 c |
    f4 f f e |
    c2.\fermata 
    \bar "|."
}

chorale_iii = \relative c' {
    \key b \minor \time 4/4
    fs4 fs fs fs\fermata |
    fs4 a a a\fermata |
    a4 d d8( cs) cs( b) |
    b4( as8 b) fs2\fermata |
    b4 b b c |
    c4 b8( a) a( fs) gs4\fermata |
    a4 a a b |
    b4 a8( g) g( e) fs4\fermata |
    g4 g fs fs |
    gs4 fs4( e) e( cs) ds4\fermata
    \bar "|."
}

chorale_iv = \relative c' {
    \key bf \major \time 4/4
    \partial 4 d8( ef) |
    f4 bf, ef d |
    c4 f e\fermata e |
    f4 g g8( e) f4 |
    f8( g) e4 c\fermata f4 |
    f8( g) a4 d,8( ef) f4 |
    g8( a) bf4 f\fermata d4 |
    f8( ef) d( e) f( ef) d4 |
    g4( f) f\fermata
    \bar "|."
}

chorale_v = \relative c'' {
    \key g \minor \time 4/4
    g4 g g8( fs) g4 |
    g8( a) fs( g) d4 d4\fermata |
    g4. a8 bf4 bf |
    bf8( g) a( bf) f2\fermata |
    g4 a fs g |
    g4 fs8( g) d2\fermata |
    g4 g g g |
    a8( bf) c( a) bf4 bf4\fermata |
    g4 g c c |
    c4 b g2\fermata |
    fs4 g g8( fs) g4 |
    g4 fs4 d2\fermata |
    bf'4 bf a a |
    a8( bf) a( g) fs4 fs\fermata |
    g4 g g8( a) bf4 |
    bf8( g) a( bf) f4 f4\fermata |
    g4 g c c |
    a4 a d d |
    bf8( a) bf( c) d4 c8( bf) |
    a4 a b b\fermata
    \bar "|."
}

chorale_vi = \relative c' {
    \key b \minor \time 4/4
    \repeat volta 2 {
        \partial 4 fs4 |
        fs4 fs fs e |
        a8( gs a gs) a4\fermata fs4 |
        fs4 b b as fs2.
    }
    b4 |
    b8( as) b4 b8( as) b( e,) |
    fs2.\fermata as4 |
    b4 a a b |
    b4( a8 gs) a4\fermata a |
    f4 g fs b |
    b8( a gs fs) e4\fermata fs |
    fs4 b b as |
    fs2. \fermata
    \bar "|."
}

chorale_vii = \relative c' {
    \key bf \major \time 4/4
    f2 f4 d |
    a'2\fermata r4 a |
    a4 c8( bf) a( g) a( f) |
    bf2.\fermata a4 |
    bf8( c) d4 c4 bf16( a bf8) |
    a2\fermata f2 |
    f4 f g2\fermata |
    r4 g8( a16 bf) a8( g) a( bf) |
    c4 a4 f2\fermata |
    r4 g4 af8( bf) c4 |
    c8( bf16 a) bf8( g) a2\fermata |
    r4 a8( bf) c( bf) c( a) |
    bf4 c bf bf |
    bf8( a bf g) a2\fermata |
    r4 g f gf |
    f4 ef f g |
    bf8( g e4) f2\fermata |
    r4 f f g8( ef) |
    a2 \fermata r4 c' |
    bf4 a f2\fermata
    \bar "|."
}

chorale_viii = \relative c'' {
    \repeat volta 2 {
        \key f \major \time 4/4
        \partial 4 a4 |
        g8( a) bf4 a8( bf) c4 |
        c8( bf) af4 g\fermata g |
        f4 c f g |
        g4.( f8 ef4)\fermata
    } f8( g) |
    a8( b) c4 b8( a) g4 |
    c8( a) b4 g4\fermata a8( bf) |
    c8( bf) a( g) fs( g) fs( g) |
    a4 a8( g) g( fs)\fermata fs4 |
    g8( f) ef( d) f4 ef4 |
    f4( c) c\fermata
    \bar "|."
}

chorale_ix = \relative c' {
    \key c \major \time 4/4
    \partial 4 e4 |
    f4 fs8( gs) a4 a4 |
    gs2.\fermata gs4 |
    a4 a8( gs) a4 a4 |
    gs2.\fermata gs4 |
    a4 b c c |
    c4( b8 a) b4\fermata gs4 |
    a4 g8( f) g4 a |
    a4( g8 f) e4\fermata g4 |
    g4 g8( a) b4 a |
    a8( g a fs) g4\fermata g8( f) |
    e4 fs8( gs) a4 a4 |
    a4( gs) e\fermata
    \bar "|."
}

chorale_x = \relative c'' {
    \repeat volta 2 {
        \key g \major \time 4/4
        g4 g a8( g) fs4 |
        g4 g8( fs) g2\fermata |
        g4 a g g |
        g4( fs) d2\fermata
    }
    a8( g) fs( a) g2\fermata |
    b8( a) gs( b) a2\fermata |
    a2 a g fs |
    e2 fs2\fermata |
    g4 g fs fs |
    g4( fs) a2\fermata
    \bar "|."
}

chorale_xi = \relative c'' {
    \key a \minor \time 4/4
    \repeat volta 2 {
        a8( gs) a4 b a |
        a4 a gs e\fermata |
        e4 f f8( e) e( d) |
        d4 e gs2\fermata
    }
    gs2 a a g |
    g4 g fs d\fermata  |
    c4 f g g |
    f8( g) a4 g8( f) e4\fermata |
    g4 g4 g8( f) e4 |
    e4 a4 gs2\fermata |
    a8( gs) a4 b a |
    a4 gs e2\fermata
    \bar "|."
}

chorale_xii = \relative c' {
    \key g \major \time 3/4
    \repeat volta 2 {
        d4 e fs | g2. | g4 fs e | fs2\fermata g4 |
        e2 d4 | d2. | b4 d2 | d2. \fermata |
    }
    d4 fs d | e2 e4 | e2 d4 | c2.\fermata |
    e4 gs gs | a2. | fs4 fs fs | g2\fermata a4 |
    b2 g4 | g2 g4 | fs4 fs\fermata g4 |
    g4. fs8 g4 | g4 g( fs) | d2.\fermata
    \bar "|."
}

chorale_xiii = \relative c' {
    \key bf \major \time 4/4
    \partial 4 f4 |
    g4 f f\fermata f |
    f8( bf) a4 f\fermata a4 |
    g8( a) fs4 d\fermata g |
    g4 f e d |
    d8( g f4) f\fermata bf4 |
    g4 g a g |
    g8( fs g4) a2\fermata |
    d8( ef f4) f4 ef8( d |
    c8 d) ef d4 \fermata
    \bar "|."
}

chorale_xiv = \relative c' {
    \key c \major \time 3/4
    \partial 4 e4 | e4( f) g | f2 g4 | g2( f4) | e2\fermata 
    g4 | a2 a4 | g4( a g) | g4( fs8 e fs4) | g2\fermata 
    g4 | a2 a4 | g2 g4 | g4( b a) | g2\fermata
    g4 | f4( g) g | g4( a8 b) c4 | c4( b8 a b4) | g2\fermata
    \bar "|."
}

chorale_xv = \relative c' {
    \repeat volta 2 {
        \key d \major \time 4/4
        \partial 4 d4 |
        fs8( e) d( e) fs( g) a4 |
        a4 a a\fermata a |
        a4 g8( a) b2( |
        as4) b b( as | fs2.)
    }
    fs4 |
    e8( fs) gs4 a4.( b8 |
    a4) fs fs e |
    e4\fermata fs gs g |
    fs8( gs) as4 b4.( es,8 |
    fs4)\fermata cs fs gs |
    fs4 fs b a |
    a4\fermata b4 b8( a) a( g) |
    g4.( fs8~fs4 ) fs4 |
    b4( as fs)\fermata
    \bar "|."
}

chorale_xvi = \relative c' {
    \key f \major \time 4/4
    \repeat volta 2 {
        c2 f | a g | a g | a( g) | e1\fermata |
        r2 g2 | c2. b4 | a4( b) c2 | c2 d | d4( c2 b4) | g1\fermata |
        r2 a | bf a | f f | f e | c1\fermata
    }
    r2 g' | a2. g4 | c,4( d) e2 | d1\fermata |
    r2 e4( f) | g2 g2 | g4( f2) e4 | c1\fermata |
    r2 e2 | f2. e4 | f1\fermata
    r2 a2 | a4( g) g( a) | a2\fermata
    a4( b) | c2. b4 | a2\fermata
    a4( b) | c4( b) c( a) | b2 f | f e | c1\fermata
    \bar "|."
    \cadenzaOn
    \stopStaff
    \once \override TextScript.extra-offset = #'( 0 . -3.0 )
    \once \override TextScript.word-space = #1.5
    s1^\markup { \bold "D.C." }
    \startStaff
    \cadenzaOff
}


\include "Chorales-common.ly"
