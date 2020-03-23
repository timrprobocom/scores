\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

global = {
  \time 6/8
  \tempo "Adagio" 4.=120
  \set Score.markFormatter = #format-mark-box-alphabet
}

common = {
    \time 6/8
    \tempo "Allegro vivace" 4.=150
    \key c \major
    \override MultiMeasureRest #'expand-limit = 1
    \set Score.skipBars = ##t
    \set Score.markFormatter = #format-mark-box-alphabet
    \compressFullBarRests
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
}

notation = {
% Bar 1
    s2.*16
    \mark \default
% Bar 17
    s2.*27
    \mark \default
% Bar 44
    s2.*29
    \mark \default
% Bar 73
    s2.*16
    \mark \default
% Bar 89
    s2.*12
    \mark \default
% Bar 101
    s2.*20
    \mark \default
% Bar 121
    s2.*16
    \mark \default
% Bar 137
    s2.*21 \bar "|."
% Bar 158
}

\parallelMusic #'(clari clarii clariii clarb)
{
    \acciaccatura { g16 a b } c4.\f ~ c8 d b |
    \grace { s16 s s }e4.\f ~ e8 f d |
    \grace { s16 s s }g4.\f ~ g8 a f |
    \grace { s16 s s }c4.\f ~ c8 c c  |

    c8 d b c d b |
    e8 f d e f d |
    g  a f g a f |
    c c c c c c |

    c4 r8 \acciaccatura { ds8( } e4) r8 |
    e4 r8 \acciaccatura { ds8( } e4) r8 |
    g4 r8 \acciaccatura { ds8( } e4) r8 |
    c4 r8 \acciaccatura { ds8( } e4) r8 |

    e,4 r8 r4. |
    e,4.~ e8 fs8 gs8 |
    e,4 r8 r4. |
    e,4 r8 r4. |
    
    r4.  c4.\p |
    a8 b c  d\p d16( c b a) |
    r4.  fs'4.\p |
    r4.  d'4.\p |

    b8 r c b d'16( c b a) |
    g8 r fs g r fs |
    g8 d'16( c b a ) g8 r c |
    g8 r d g r d |

    g4 r8 g4. |
    g4 r8 d4. |
    b4 r8 b4. |
    g4 r8 g4. |

    r2. |
    r2. |
    r2. |
    r2. |

% Bar 9.

    \acciaccatura { a16 b cs } d4.\f ~ d8 e cs |
    \grace { s16 s s }f4.\f ~ f8 g e |
    \grace { s16 s s }a4.\f ~ a8 b g |
    \grace { s16 s s }d4.\f ~ d8 d d  |

    d8 e cs d e cs |
    f8 g e f g e |
    a8 b g a b g |
    d d d d d d |

    d4 r8 \acciaccatura { gs,8( } a4) r8 |
    f4 r8 \acciaccatura { gs8( } a4) r8 |
    a4 r8 \acciaccatura { gs8( } a4) r8 |
    d4 r8 \acciaccatura { gs8( } a4) r8 |

    a,4 r8 r4. |
    a,4.~ a8 b cs8 |
    a,4 r8 r4. |
    a,4 r8 r4. |
    
    r4.  b4.\p |
    d8 e f  g\p g16( f e d) |
    r4.  f'4.\p |
    r4.  g4.\p |

    c8 r b c g'16( f e d) |
    c8 r f  e r f  |
    g8 g16( f e d ) c8 r b' |
    c8 r g c r g' |

    c4 r8 e4. |
    e4 r8 c4. |
    c4 r8 g4. |
    c4 r8 c,4. |

    r2. \bar "||" |
    r2. \bar "||" |
    r2. \bar "||" |
    r2. \bar "||" |

% Bar 17.
    
    R2. |
    c'8(\p b c) g-. g-. g-. |
    e8-.\p e-. e-. e-. e-. e-. |
    c'8-.\p c-. c-. c-. c-. c-. |

    R2. |
    c16( d c b c8) g-. g-. g-.|
    e8-. e-. e-. e-. e-. e-. |
    c8-. c-. c-. c-. c-. c-. |

    R2. |
    c8( g) e'-.  c8( g) e'-. |
    e8-. e-. e-. e-. e-. e-. |
    c8-. c-. c-. g-. c-. c-. |

    r4.  c8\f e c |
    c8( g) e'-.  c8( g) e'-. |
    e8-. e-. e-. e-. e-. e-. |
    e,8-. c'-. c-. c,-. c'-. c-. |


    d4 g,8~g8 r4 |
    d8( c d) g,-. g-. g-. |
    f8-. f-. f-. f-. f-. f-. |
    g8-. g-. g-. g-. g-. g-. |

    f8-.\p f-. f-. f-. f-. f-. |
    d'16( e d c d8) g,-. g-. g-.|
    R2. |
    g8-. g-. g-. g-. g-. g-. |

    f8-. f-. f-. f-. f-. f-. |
    d'8( g,) f'-.  d8( g,) f'-. |
    R2. |
    g8-. g-. g-. d-. g-. g-. |

    f8-. f-. f-. f-. f-. f-. |
    d8( g,) f'-.  d8( g,) f'-. |
    r4. g,8\f b g  |
    b,8-. g'-. g-. g,-. g'-. g-. |

% Bar 25.

    e8-. e-. e-. e-. e-. e-. |
    e8( d e) g,-. g-. g-. |
    c4. r4. |
    c,8-. c'-. c-. c-. c-. c-. |

    R2. |
    e'16( f e d e8) g,-. g-. g-.|
    e8-. e-. e-. e-. e-. e-. |
    c8-. c-. c-. c-. c-. c-. |

    R2. |
    e'8( g,) g'-.  e8( g,) g'-. |
    e8-. e-. e-. e-. e-. e-. |
    c8-. c-. c-. g-. c-. c-. |

    r4.  c'8\f e c |
    e8( g,) g'-.  e8( g,) g'-. |
    e8-. e-. e-. e-. e-. e-. |
    e,8-. c'-. c-. c,-. c'-. c-. |


    d4 g,8~g8 r4 |
    f8( e f) g,-. g-. g-. |
    f8-. f-. f-. f-. f-. f-. |
    g8-. g-. g-. g-. g-. g-. |

    f8-.\p f-. f-. f-. f-. f-. |
    f'16( g f e f8) g,-. g-. g-.|
    R2. |
    g8-. g-. g-. g-. g-. g-. |

    f8-. f-. f-. f-. f-. f-. |
    f'8( g,) g'-.  f8( g,) g'-. |
    R2. |
    g8-. g-. g-. d-. g-. g-. |

    f8-. f-. f-. f-. f-. f-. |
    f8( g,) g'-.  f8( g,) g'-. |
    r4. g8\f b g  |
    b,8-. g'-. g-. g,-. g'-. g-. |

% Bar 33

    c'8( b c) g-. g-. g-. |
    e8-. c8-. e8-. e8-. c8-. e8-. |
    c4 r8 r4. |
    c8-. g8-. c8-. c8-. g8-. c8-. |

    d'8( cs d) g,-. g-. g-. |
    d8-. b8-. d8-. d8-. b8-. d8-. |
    R2. |
    b8-. g8-. b8-. b8-. g8-. b8-. |

    c8( b c) g-. g-. g-. |
    e8-. c8-. e8-. e8-. c8-. e8-. |
    R2. |
    c8-. g8-. c8-. c8-. g8-. c8-. |

    d'8( cs d) g-. g-. g-. |
    d8-. b8-. d8-. d8-. b8-. d8-. |
    R2. |
    b8-. g8-. b8-. b8-. g8-. b8-. |

    c8-.\f b-. c-. d-. e-. d-. |
    e-. c-. e-. f-. d-. f-. |
    e-. d-. e-. f-. g-. f-. |
    c,8-. g-. c-. b-. g-. b-. |

    c8-. b-. c-. d-. e-. d-. |
    e-. c-. e-. f-. d-. f-. |
    e-. d-. e-. f-. g-. f-. |
    c8-. g-. c-. b-. g-. b-. |

    c8-. b-. c-. d-. e-. d-. |
    e-. c-. e-. f-. d-. f-. |
    e-. d-. e-. f-. g-. f-. |
    c8-. g-. c-. b-. g-. b-. |

    c8-. b-. c-. d-. e-. d-. |
    e-. c-. e-. f-. d-. f-. |
    e-. d-. e-. f-. g-. f-. |
    c8-. g-. c-. b-. g-. b-. |

% Bar 41

    c8-. c,-. e-. g-. e-. g-. |
    c8-. c-. e-. g-. e-. g-. |
    c8-. c,-. e-. g-. e-. g-. |
    c8-. c -. e-. g-. e-. g-. |

    c4 r8 \acciaccatura { g16( a b } c4)\ff r8 |
    c4 r8 \acciaccatura { g,16( a b } c4)\ff r8 |
    c4 r8 \acciaccatura { g16( a b } c4)\ff r8 |
    c4 r8 \acciaccatura { g,16( a b } c4)\ff r8 |

    \acciaccatura { g16( a b } c4)\ff r8 r4. \bar "||" |
    \acciaccatura { g16( a b } c4)\ff r8 r4. \bar "||" |
    \acciaccatura { g16( a b } c4)\ff r8 r4. \bar "||" |
    \acciaccatura { g16( a b } c4)\ff r8 r4. \bar "||" |

% Bar 44

    e,,4.\p ~ e8 f d |
    g4.\p ~ g8 a f |
    c4.\p ~ c8 d b |
    c4.\p ~ c8 c c  |

    e8 f d e f d |
    g  a f g a f |
    c8 d b c d b |
    c c c c c c |

    e4 r8 \acciaccatura { d's8( } e4) r8 |
    g4 r8 \acciaccatura { ds8( } e4) r8 |
    c4 r8 \acciaccatura { ds8( } e4) r8 |
    c4 r8 \acciaccatura { ds8( } e4) r8 |

    e,4.~ e8 fs8 gs8 |
    e,4 r8 r4. |
    e,4 r8 r4. |
    e,4 r8 r4. |
    
    a8 b c  d\p d16( c b a) |
    r4.  fs'4.\p |
    r4.  c4.\p |
    r4.  d'4.\p |

    g8 d d' g, d d' |
    g8 d'16( c b a ) g8 r c |
    b8 r c b d'16( c b a) |
    g8 r d g r d |

    g,4 r8 d4. |
    b4 r8 b4. |
    g4 r8 g4. |
    g4 r8 g4. |

    r2. |
    r2. |
    r2. |
    r2. |

% Bar 52.

    f4.\f ~ f8 g e |
    a4.\f ~ a8 b g |
    d'4.\f ~ d8 e cs |
    d4.\f ~ d8 d d  |

    f8 g e f g e |
    a8 b g a b g |
    d8 e cs d e cs |
    d d d d d d |

    f4 r8 \acciaccatura { gs8( } a4) r8 |
    a4 r8 \acciaccatura { gs8( } a4) r8 |
    d4 r8 \acciaccatura { gs8( } a4) r8 |
    d4 r8 \acciaccatura { gs8( } a4) r8 |

    a,4.~ a8 b cs8 |
    a,4 r8 r4. |
    a,4 r8 r4. |
    a,4 r8 r4. |
    
    d8 e f  g\p g16( f e d) |
    r4.  f'4.\p |
    r4.  b4.\p |
    r4.  g4.\p |

    c8 g b  c g b  |
    g8 g16( f e d ) c8 r b' |
    c8 r b c g'16( f e d) |
    c8 r g c r g' |

    c4 r8 g4. |
    e4 r8 c4. |
    c4 r8 e4. |
    c4 r8 c,4. |

% Bar 59.

    R2. |
    R2. |
    r8 g, a b c d |
    R2. |

    c'4.~ c8 b c |
    c8 g g g g g |
    e4.~ e8 d e |
    R2. |

    d4.~ d8 e d |
    b8 g a b c d |
    f4.~ f8 g f |
    d'4.\f d8 e d |

    e,4.~ e8 d e |
    c4. ~ c8 b c |
    e8 g, g g g g |
    c4( g8) g4 r8 |

    f4.~ f8 g f |
    d4. ~ d8 e d |
    r8 g a b c d |
    d'4. d8 e d |
    
    e8 g g e' d e |
    c8 g g g g g |
    e4. c8 b c |
    c4. g4. |

    f4.~ f8 g f |
    b8 g g g g g |
    d4.~ d8 e d |
    d'4. d8 e d |

    e4 r8 r4. |
    c,4 r8 r4. |
    c4 r8 r4. |
    c4 r8 c a fs |

    c2.~ |
    fs2.~ |
    d,2.~ |
    d2.~ |

    c4 r8 r4. |
    fs4 r8 r4. |
    d4 r8 r4. |
    d4 r8 d'8 c a |

% Bar 69

    b8\p r r a r r |
    g8\p f f d r r |
    g8\p r r fs r r |
    g4 r8 d'8 c a |

    b4 r8 c4\mf r8 |
    g4 r8 fs4\mf r8 |
    g4 r8 d'8\mf c a |
    g4 r8 d4\mf r8 |

    b4 r8 c4 r8 |
    g4 r8 fs4 r8 |
    g4 r8 d'8 c a |
    g4 r8 d4 r8 |

    b4 r8 r4. \bar "||" |
    g4 r8 r4. \bar "||" |
    g4 r8 r4. \bar "||" |
    g4 r8 r4. \bar "||" |

% Bar 73 -- back to main theme

    \grace { g'16 a b } c4.\f ~ c8 d b |
    \grace { s16 s s } e'4.\f ~ e8 f d |
    \grace { s16 s s } g8\f g g g g g |
    \grace { s16 s s } c4.\f ~ c8 d b  |

    c8 d b c d b |
    e8 f d e f d |
    g g g g g g |
    c d b c d b |

    c4 r8 \acciaccatura { ds8( } e4) r8 |
    e4 r8 \acciaccatura { ds8( } e4) r8 |
    g4 r8 \acciaccatura { ds8( } e4) r8 |
    c4 r8 \acciaccatura { ds8( } e4) r8 |

    e,4 r8 r4. |
    e,4.~ e8 fs8 gs8 |
    e,4 r8 r4. |
    e,4 r8 r4. |
    
    r4.  c4.\p |
    a8 b c  d\p d16( c b a) |
    r4.  fs'4.\p |
    r4.  d'4.\p |

    b8 r c b d'16( c b a) |
    g8 d d' g, d d' |
    g8 d'16( c b a ) g8 r c |
    g8 r d g r d |

    g4 r8 g4. |
    g4 r8 d4. |
    b4 r8 b4. |
    g4 r8 g,4. |

    r2. |
    r2. |
    r2. |
    r2. |

% Bar 81.

    \grace { a16 b cs } d4.\f ~ d8 e cs |
    \grace { s16 s s }f4.\f ~ f8 g e |
    \grace { s16 s s }a4.\f ~ a8 b g |
    \grace { s16 s s }d4.\f ~ d8 d d  |

    d8 e cs d e cs |
    f8 g e f g e |
    d d d d d d |
    d8 e cs d e cs |

    d4 r8 \acciaccatura { gs,8( } a4) r8 |
    f4 r8 \acciaccatura { gs8( } a4) r8 |
    d4 r8 \acciaccatura { gs8( } a4) r8 |
    d4 r8 \acciaccatura { gs8( } a4) r8 |

    a,4 r8 r4. |
    a,4.~ a8 b cs8 |
    a,4 r8 r4. |
    a,4 r8 r4. |
    
    r4.  b4.\p |
    d8 e f  g\p g16( f e d) |
    r4.  f'4.\p |
    r4.  g4.\p |

    c8 r b c g'16( f e d) |
    c8 g b  c g b  |
    g8 g16( f e d ) c8 r b' |
    c8 r g c r g' |

    c4 r8 e4. |
    c4 r8 c4. |
    e4 r8 g4. |
    c4 r8 c,4. |

    R2. \bar "||" |
    R2. \bar "||" |
    R2. \bar "||" |
    c4( b8) c4( d8) \bar "||" |

% Bar 89

    g,8\mf c e g r r |
    g8\mf e g c r r |
    e8\mf c e g r r |
    e4. e8 f e |

    g,8 b d g r r |
    f,8 d f b r r |
    d,8 b d g r r |
    d4. d8 e d |

    c,8 e g c r r |
    g8 e g c r r |
    e8 c e g r r |
    c4 r8 r4. |

    R2. |
    R2. |
    R2. |
    c8 b c d c d |

    g,8\mf c e g r r |
    g8\mf e g c r r |
    e8\mf c e g r r |
    e4. e8 f e |

    g,8 b d g r r |
    f,8 d f b r r |
    d8 b d g r r |
    d4. d8 e d |

    c8 g c b g b |
    e8 d e f g f |
    c8 b c d e d |
    c4. d'8 e d |

    c8 g c b g b |
    e8 d e f g f |
    c8 b c d e d |
    c4. d8 e d |

    c8 g c b g b |
    e8 d e f g f |
    c8 b c d e d |
    c8 b c d e d |

    c8 g c b g b |
    e8 d e f g f |
    c8 b c d e d |
    c8 b c d e d |

    c4 r8 c,4 r8 |
    c4 r8 \grace { g16 a b } c4 r8 |
    c4 r8 \grace { g16 a b } c4 r8 |
    c4 r8 c,4 r8 |

    c4 r8 r4. \bar "||" |
    \grace { g16 a b } c4 r8 r4. \bar "||" |
    \grace { g16 a b } c4 r8 r4. \bar "||" |
    c4 r8 r4. \bar "||" |

% Bar 101

    \grace { d,16 e fs } g2.->\f |
    \grace { d16 e fs } g2.->\f |
    \grace { d16 e fs } g2.->\f |
    \grace { d16 e fs } g2.->\f |

    d'4.~d4 b8 |
    d4.~d4 b8 |
    d4.~d4 b8 |
    d4.~d4 b8 |

    \grace { c16 d } e2.->\f |
    \grace { c16 d } e2.->\f |
    \grace { c16 d } e2.->\f |
    \grace { c16 d } e2.->\f |

    c4.~c8 r r |
    c4.~c8 r r |
    c4.~c8 c\p a |
    c4.~c8 r r |

    a2.\p |
    c2.\p |
    fs8 e d a' g fs |
    d2.\p |

    fs2. |
    a2. |
    c'8 b a e' d c |
    d2. |

% Bar 107

    R2. |
    b8 d d d d d |
    g4 r8  d'8 d d |
    g8 b b b b b |

    R2. |
    b8 d d d d d |
    \acciaccatura { e16( fs16) } g4 r8 b,8 b b |
    g8 b b b b b |

    R2. |
    b8 d d d d d |
    \acciaccatura { b16( c16) } d4 r8 g,8 g g |
    g8 b b b b b |

    R2. |
    a8 d d d d d |
    a4.~a8 b a |
    d,8 fs fs fs fs fs |


    r4 r8 d8\mf d d |
    b8 d d d d d |
    g4 r8  d'8 d d |
    g8 b b b b b |

    d4( b8) b b b |
    b8 d d d d d |
    \acciaccatura { e16( fs16) } g4 r8 b,8 b b |
    g8 b b b b b |

    b4( g8) g g g |
    b8 d d d d d |
    \acciaccatura { b16( c16) } d4 r8 g,8 g g |
    g8 b b b b b |

    a8 a a a b a |
    a8 d d d d d |
    a4.~a8 b a |
    d,8 fs fs fs fs fs |


    g4 r8 d'8 d d |
    b8 d d d d d |
    g4 r8  d''8 d d |
    g8 b b b b b |

    d4( b8) b b b |
    b8 d d d d d |
    \acciaccatura { e16( fs16) } g4 r8 b,8 b b |
    g8 b b b b b |

    \grace s8 b4( g8) g g g |
    \grace s8 b8 d d d d d |
    \acciaccatura { b16( c16) } d4 r8 g,8 g g |
    \grace s8 g8 b b b b b |

    a8 a a a b a  |
    a8 d d d d d |
    a4.~a8 b a |
    d,8 fs fs fs fs fs |
    
    g4 r8 a-. g-. f-. |
    d4 r8 f,-. e-. d-. |
    g4 r8 a,-. g-. f-. |
    g4 r8 f-. e-. d-. |
    
    g4 r8 a-. g-. f-. \bar "||" |
    c4 r8 f-. e-. d-. \bar "||" |
    e4 r8 r4. \bar "||" |
    c4 r8 d-. c-. b-. \bar "||" |

% Bar 121

    e8\p e' e r e e |
    c8\p c' c r c c |
    r4 r8 c'\p b c |
    c4\p r8 c4 r8 |

    r8 e e r e e |
    r8 c c r c c |
    g8 fs g c b c |
    c4 r8 c4 r8 |

    r8 e e r e e |
    r8 c c r c c |
    g8 fs g c b c |
    c4 r8 c4 r8 |

    r8 e e r e e |
    r8 c c r c c |
    g8 fs g c b c |
    c4 r8 c4 r8 |

    r8 a a r a a |
    r8 c c r c c |
    a8 gs a c b c |
    f4 r8 f4 r8 |

    r8 a a r a a |
    r8 c c r c c |
    f8 e d c b a |
    f4 r8 f4 r8 |

    r8 d d r d d |
    r8 b b r b b |
    g8 b a g b a |
    g4 r8 g4 r8 |

    r8 d d r d d |
    r8 b b r b b |
    g8 b a g a b |
    g4 r8 g4 r8 |


    e,8 e e r e e |
    c8 c c r c c |
    c4 r8 c b c |
    c,4 r8 c4 r8 |

    r8 e e r e e |
    r8 c c r c c |
    g8 fs g c b c |
    c4 r8 c4 r8 |

    r8 e e r e e |
    r8 c c r c c |
    g8 fs g c b c |
    c4 r8 c4 r8 |

    r8 e e r e e |
    r8 c c r c c |
    g8 fs g c b c |
    c4 r8 c4 r8 |

    r8 a a r a a |
    r8 c c r c c |
    a8 gs a c b c |
    f,4 r8 f4 r8 |

    r8 a a r a a |
    r8 c c r c c |
    f8 e d c b a |
    f4 r8 f4 r8 |

    r8 d d r d d |
    r8 b b r b b |
    g8 b a g b a |
    g4 r8 g4 r8 |

    r8 d d r d d \bar "||" |
    r8 b b r b b \bar "||" |
    g8 b a g a b \bar "||" |
    g4 r8 g4 r8 \bar "||" |

% Bar 137

    c2.\f |
    c8\f g g c g g |
    e8\f c c e c c |
    c8\f e e c e e |

    c4( d16 c) b4( c8) |
    a8 e e a e e |
    c8 a a c a a |
    a,8 c c a c c |

    d4. f4. |
    a8 f f a f f |
    d8 d d d d d |
    f,8 a a f a a |

    b,8 d c b c d |
    b8 g g b g g |
    d8 d d d d d |
    g8 b b g b b |

    e4. c4. |
    c8 g g c g g |
    e8 c c e c c |
    c8 e e c e e |
 
    c8 e d \acciaccatura { d8( } c8) b c |
    a8 e e a e e |
    c8 a a c a a |
    a,8 c c a c c |

    d4. f4. |
    a8 f f a f f |
    d8 d d d d d |
    f,8 a a f a a |

    b,8 d c b c d |
    b8 g g b g g |
    d8 d d d d d |
    g8 b b g b b |

% Bar 141

    e8 f e d e d |
    g8 a g f g f |
    e4 r8 d4 r8 |
    c4 r8 f4 r8 |

    c8 d c b c b |
    e8 f e d e d |
    c4 r8 b4 r8 |
    g4 r8 g,4 r8 |

    e8 f e d e d |
    g8 a g f g f |
    e4 r8 d4 r8 |
    c4 r8 f4 r8 |

    c8 d c b c b |
    e8 f e d e d |
    c4 r8 b4 r8 |
    g4 r8 g,4 r8 |

    c4 r8 f4 r8 |
    g4 r8 a4 r8 |
    e4 r8 d4 r8 |
    c4 r8 f4 r8 |

    g4 r8 b4 r8 |
    c4 r8 b4 r8 |
    e4 r8 d4 r8 |
    g4 r8 g,4 r8 |

% Bar 147

    c8 b c d e d |
    e8 d e f g f |
    e8 g g d g g |
    c8 g' g g, g' g |

    c8 b c d e d |
    e8 d e f g f |
    e8 g g d g g |
    c,8 g' g g, g' g |

    c8 b c d e d |
    e8 d e f g f |
    e8 g g d g g |
    c,8 g' g g, g' g |

    c8 b c d e d |
    e8 d e f g f |
    e8 g g d g g |
    c,8 g' g g, g' g |

    c4 r8 r4 e8 |
    e4 r8 r4 g8 |
    g4 r8 r4 c8 |
    c,4 r8 r4 c'8 |

    e4 r8 r4 c,8 |
    g4 r8 r4 c,8 |
    c4 r8 r4 c,8 |
    c4 r8 r4 c,8 |

    c2. |
    c2. |
    c2. |
    c2. |
}




xtitle = "Largo al Factotum"
xcomposer = "Rossini"
xarranger = "arr Roberts"

%% Boilerplate.

scoreAClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  midiInstrument = "clarinet"
} << \notation { \common  \relative c''' \clari } >>

scoreAClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  midiInstrument = "clarinet"
} << \notation { \common  \relative c'' \clarii } >>

scoreAClarinetIIIPart = \new Staff \with {
  instrumentName = "Clarinet III"
  midiInstrument = "clarinet"
} << \notation { \common  \relative c'' \clariii } >>

scoreABassClarinetPart = \new Staff \with {
  instrumentName = "Bass clarinet"
  midiInstrument = "clarinet"
} << \notation { \common  \relative c' \clarb } >>


\bookpart { 
    \header {
      title = \xtitle
      instrument = "for Clarinet Quartet"
      composer = \xcomposer
      arranger = \xarranger
      tagline = ##f
    }
    
    \score {
      <<
        \scoreAClarinetIPart
        \scoreAClarinetIIPart
        \scoreAClarinetIIIPart
        \scoreABassClarinetPart
      >>
      \layout { }
      \midi { }
    }
}

\paper {
    raggied-bottom = ##t
}

\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bb Clarinet 1"
      tagline = ##f
    }
    \score { \scoreAClarinetIPart }
}


\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bb Clarinet 2"
      tagline = ##f
    }
    \score { \scoreAClarinetIIPart }
}

\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bb Clarinet 3"
      tagline = ##f
    }
    \score { \scoreAClarinetIIIPart }
}

\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bass Clarinet"
      tagline = ##f
    }
    \score { \scoreABassClarinetPart }
}
