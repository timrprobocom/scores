
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
    piece = "Bass Clarinet in Bb"
}

cresc = \markup { \italic "cresc." }
dim   = \markup { \italic "dim." }
rit   = \markup { \italic "rit." }
submf = \markup { \italic "subito mf" }

chorale_i = \relative c'' {
    \key g \major \time 4/4
    \repeat volta 2 {
        \partial 4 g4 |
        fs4 g e b |
        c8( d) e( fs) g4\fermata g4 |
        c4 b8( a) b( cs) d4 |
        g,4 a d,\fermata g |
        c,4 d e8(fs) g4 |
        d2 g4\fermata
    } r4 |
    fs2 g2\fermata |
    d2 g2\fermata |
    g8( a) b( g) d( e) fs( d) |
    g8( a) b( g) d'4 c8( b) |
    a4 e'8( d) c4( d) |
    g,2\fermata e8( g) b4 |
    c,8( e) g4 a4 b8( e,8) |
    cs4( d) g\fermata
    \bar "|."
}

chorale_ii = \relative c' {
    \key f \major \time 4/4
    \partial 4 f4 |
    f4 g a g8( f) |
    bf2\fermata  r4 b4 |
    c4 bf! a e |
    f4( c4) f\fermata  a |
    bf4 g c c, |
    f2\fermata r4 e |
    f4 d e f |
    a2 c,4\fermata e |
    f8( e) f( g) a4 g8( f) |
    bf,2\fermata r4 bf'8( a) |
    g4 f e d |
    c2\fermata  r4 a' |
    bf4 a g c, |
    d2\fermata r4 e |
    f8( e) d( c) bf4 c |
    f2.\fermata 
    \bar "|."
}

chorale_iii = \relative c'' {
    \key b \minor \time 4/4
    b4 as b b,\fermata |
    b'4 a d, d\fermata |
    d'8( cs) b( a) gs( as) b4 |
    e,4( fs) b2\fermata |
    b8( cs) ds( b) e( d) c( b) |
    a8( fs) b4 e, e\fermata |
    a8( b) cs( a) d( cs) b( a) |
    g( e) a4 d, d\fermata |
    g4 fs8( a) as4 b |
    es,4 fs4 b, b\fermata
    \bar "|."
}

chorale_iv = \relative c'' {
    \key bf \major \time 4/4
    \partial 4 bf4 |
    bf,8( c) d4 ef8( f) g( f) |
    e4 f c\fermata c'8( bf) |
    a8( bf) a( g) f( g) a( bf) |
    c4 c, f\fermata f4 |
    bf8( a) g( fs) g( f) ef( d) |
    c4 d8( ef) f4\fermata g4 |
    a4 bf f g8( f) |
    e4( f) bf\fermata
    \bar "|."
}

chorale_v = \relative c'' {
    \key g \minor \time 4/4
    g4 f ef d | c4 d g g\fermata |
    g4 f8( ef) d( c) bf4 | ef4 f bf2\fermata |
    ef4 d8( c) d4 ef4 | c4 d g2\fermata |
    g8( a) b( g) c( d) ef( c) | f8( g) a( f) bf4 bf4\fermata |
    ef,8( f) g( ef) c( d) ef( c) | f8( d) g4 c2\fermata |
    c4 bf a g | c d g2\fermata |
    g,8( a) bf( c) d( e) f( g) | a4 a, d d\fermata |
    g8( f) ef( d) c4 d8( ef) | f4 f bf bf\fermata |
    ef,8( f) ef( d) c( d) ef( c) | f( g) f( ef) d( ef) f( d) |
    g( fs) g( a) bf( a) bf( c) d4 d, g g\fermata 
    \bar "|."
}

chorale_vi = \relative c' {
    \key b \minor \time 4/4
    \repeat volta 2 {
        \partial 4 b4 | b as b gs | a2 a4\fermata 
        as4 | b8( a) g( f) ef4 f | b2.\fermata
    }
    b,4 | c4 d e8( fs) g4 | fs2.\fermata 
    fs4 | b4 cs d8( cs) b( a) | gs( fs) e4 a\fermata 
    g | fs4 e d cs8( b) | cs8( d e4) a\fermata 
    as4 | b8( a) g( fs) e4 fs4 | b2. \fermata
    \bar "|."
}

chorale_vii = \relative c'' {
    \key bf \major \time 4/4
    bf2 a4 b4 | cs2\fermata r4 
    a4 | d8( c16 bf) a8( g) f( ef) d( c) | bf2.\fermata
    f'4 | bf b c c, | f2\fermata
    bf2 | a4 af g2\fermata |
    r4 c,4 f4. g8 | a4 g8( f) bf2\fermata |
    r4 bf af8( g) f4 | c'4 c,4 f2\fermata |
    r4 f8( g) a( g) a( f) | bf( c) bf( a) g( a) bf( bf,) | f2 f2\fermata |
    r4 bf4 a af | g gf f e | f2 f2\fermata |
    r4 a4 bf8( d,) e( fs) | g2\fermata
    r4 a4 | bf4 f bf2\fermata
    \bar "|."
}

chorale_viii = \relative c'' {
    \repeat volta 2 {
        \key f \major \time 4/4
        \partial 4 f4 | f e f a,| bf c8( d) ef4\fermata
        e4 | f4. e8 d( e) f( g) | e( c g4 c4)\fermata
    } 
    f8( e) | d4 c g'8( a) bf( g) | a( f) g4 c,\fermata
    f8( g) | a( bf) c4 c8( bf) a( g) | fs4 g d\fermata
    d'8( c) | bf( a) g4 a8( b) c( c,) | c8( b c4) f\fermata
    \bar "|."
}

chorale_ix = \relative c'' {
    \key c \major \time 4/4
    \partial 4 a4 | d8( c) b4 d8( g) f4 | e2.\fermata
    d4 | c b a d | e2.\fermata
    e4 | a g8( f) e( d) c4 | f4( g) gs\fermata
    e4 | a b c8( b) a( gs) | f4 g c,\fermata
    c'4 | b c gs a8( g) | fs4( d) g\fermata
    f4 | c, d8( e) f4 e8( d) | e2 a4\fermata
    \bar "|."
}

chorale_x = \relative c'' {
    \repeat volta 2 {
        \key g \major \time 4/4
        g8( fs) e( g) fs( e) d( fs) | e( d) c( d) g2\fermata |
        c8( b) a( c) b( a) g( b) | c( a) d,4 g2 \fermata
    }
    fs8( e) d( fs) g2\fermata |
    gs8( fs) e( gs) a2\fermata |
    fs8( e) d( fs) g( a) b( d) | g( e) a4 d,2\fermata |
    a8( b) c( a) b( c) d( b) | c( a) d,4 g2\fermata
    \bar "|."
}

chorale_xi = \relative c'' {
    \key a \minor \time 4/4
    \repeat volta 2 {
        a8( b) c4 gs4 a8( g) | f( e) d4 e a\fermata |
        a8( g) f( e) d( e) f4 | b4 a e2\fermata |
    }
    e4 a8( g) fs4 g8( f) | e( d) c4 d g\fermata |
    e4 d c c'8( b) | a8( g) f4 g c,\fermata |
    c8( d) e( f) g4 gs | a8( b) f4 e2\fermata |
    a8( b) c4 gs a | c, e a2\fermata
    \bar "|."
}

chorale_xii = \relative c'' {
    \key g \major \time 3/4
    \repeat volta 2 {
        g4 e d | g4.( a8 b4) | g4 a a, | d2\fermata
        g4 | c,2 g4 | d'2. | e4 d2 | g2.\fermata
    }
    d4 d b | a2 c4 | e2 e4 | a,2.\fermata |
    e'4 e e | a4.( b8 c4) | a4 b b, | e2\fermata
    d4 | g2 g4 | c,2 g'4 | d4 d\fermata
    b4 | c4. d8 e4 | d4 d2 | g2.\fermata
    \bar "|."
}

chorale_xiii = \relative c'' {
    \key bf \major \time 4/4
    \partial 4 bf8( a) | g4 a bf\fermata
    a4 | bf8( d,) f4 bf4\fermata
    fs4 | g8( c,) d4 g4\fermata
    g4 | a8( g) a( bf) c( c,) d4 | g( a) bf\fermata
    bf4 | ef c fs, g | c,8( d ef4) d2\fermata | 
    b2 c4 c8( d) | ef4 c g\fermata
    \bar "|."
}

chorale_xiv = \relative c' {
    \key c \major \time 3/4
    \partial 4 c4 | a'2 e4 | f( d) c | g2. | c2\fermata
    c'4 | a( g) fs | g2 e4 | a2. | g2\fermata
    e4 | a( b) c | b( g) c | g2. | g2\fermata
    e4 | a( b) c | b( g) c | g2. | c2\fermata
    \bar "|."
}

chorale_xv = \relative c' {
    \repeat volta 2 {
        \key d \major \time 4/4
        \partial 4 d4 |
        fs g d8( e) fs( g) | a4 a4 d,\fermata
        d4 | a' e8( fs) g( a) b4 | fs8( e) d( b) fs'2( | b,2.)
    }
    b'8( a) | gs4 fs8( e) a( e a gf | fs cs) fs( e) d( b) e4 | a4\fermata
    d,4 d'8( cs) b( as) | b4 fs8( e) d( cs b4 | fs'4)\fermata
    fs4 fs es | fs b8( a) gs4 a | d,4 \fermata
    b'4 e,8( fs) g4 | cs,8( d e4 as,8 fs') d( b) | fs'2( b4)\fermata
    \bar "|."
}

chorale_xvi = \relative c' {
    \key f \major \time 4/4
    \repeat volta 2 {
        f2 f | f4( a) c( bf) | a( g) f( e) | f( d) g2 | c,1\fermata |
        r2 c'4( bf) | a( bf) a( g) | f2 f'2 | e4( d) c( b) | c2( g2) | c1\fermata |
        r2 f,4( ef) | d( e) f2 | bf4( c) d2 | g,2 c,2 | f1\fermata |
    }
    r2 e | f g | a4( bf) c( c,) | d1\fermata |
    r2 a'2 | e4( d) c2 | f4( d) bf( c) | f1\fermata |
    r2 c'4( bf) | a2 g2 | f1\fermata |
    r2 e'2 | b cs | d\fermata 
    d2 | a4( bf) c2 | d2\fermata
    f,4( g) | a( g) a( f) | bf,( c) d2 | g2 c,2 | f1\fermata
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
