%{
    Comments
%}
\version "2.14.2"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

\header {
    title = "Brandenburg Concerto #3 Mvt 1"
    arranger = "Arr Tim Roberts"
    tagline = ""
}


\parallelMusic  #'(clarA clarB clarC clarBass) {
  % Pickup
  \partial 8 g'16 fs |
  \partial 8 g'16 fs |
  \partial 8 g8      |
  \partial 8 g8      |

  % Bar 1
  g8 d16 c   d8 g16 fs  g8  b,16 a b8 g'16 fs |
  g8 d16 c   d8 g16 fs  g8  b,16 a b8 g'16 fs |
  b8 d       b  g       b   d      b  g       |
  g8 g'      g  g,      g   g'     g  g,      |

  % Bar 2
  g8 g,16 a  b8 cs     d16( cs d) e  d fs d g |
  g8 g,16 a  b8 cs     d16( cs d) e  d fs d g |
  b8 d       g16 b a g fs8    d      r    b'  |
  g8 g'16 fs e8 a      d,  d'16 cs   d8   d,  |

  % Bar 3
  d16( cs d) e   d a' d, b'  d,( cs d) e  d c' d, d' |
  d16( cs d) e   d a' d, b'  d,( cs d) e  d c' d, d' |
  fs8     d      r    g      fs    d      r    a     |
  d8  d'16 cs    d8   d,     d d'16 cs    d8   fs,   |

  % Bar 4
  b8 a16 g  a8 g16 fs  g8 fs16 e   d g d g  |
  b8 a16 g  a8 g16 fs  g8 fs16 e   d g d g  |
  d8 c16 b  c8 b16 a   g8      g'  g   g,   |
  g8 e      c  d       e  d16 c    b8 a16 g |

  % Bar 5
  e8 d16 c  b g' b, g'  c,8 b16 a   g g' a, g' |
  e8 d16 c  b g' b, g'  c,8 b16 a   g g' a, g' |
  g8 g'     g    g,     g   g'      g    g,    |
  c8 b16 a  g8 g'16 fs  e8 d16 c    b8   cs    |

  % Bar 6
  b,16 g' cs, g'   d fs d g    d a' d, b'  d, c' d, d' |
  b,16 g' cs, g'   d fs d g    d a' d, b'  d, c' d, d' |
  g8      g'       fs   g      a    b      c     d     |
  d8      d        d    d16  e fs8  g      a     fs    |

  % Bar 7
  b8 a16 g   d8 fs   g fs16 e   d c b a  |
  b8 a16 g   d8 fs   g fs16 e   d c b a  |
  b8 a16 g   d8 fs   g fs16 e   d c b a  |
  g8 c       d  d,   g fs16 e   d c b a  |
  
  % Bar 8
  b8 a16 g  d'8 d   g,4       r8 g''16 fs |
  b8 a16 g  d'8 d   g,4       r8 g''16 fs |
  b8 a16 g  d'8 d   g,8 d'    g4          |
  b8 a16 g  d'8 d   g,4       r8    d'    | 

  % Bar 9 -- Page 2
  \mark \default g8 d16 c  d8 r8     r2 |
  \mark \default d8 b16 a  b8 r8     r2 |
  \mark \default r4        r8 d16 c  d8 b16 a   b8 r8 |
  \mark \default g4        r4        r4         r8 d'16 c |

  % Bar 10
  r8 d8      g16 b a g   fs a d, e       fs g a g |
  r8 d8      g16 b a g   fs4             r8   e8  |
  r8 g'16 a  b8 cs8      fs,8 d'16\p cs  d8 r8    |
  b16 c b a  g8 cs,8     d4              r8 a'8   |

  % Bar 11
  fs8 d'       r8 cs      d  a       d, e    |
  fs16 a c, e  fs g a g   fs8 d'     r8 cs   |
  r8 d16 cs    d8  r8     r8 d16 cs  d8 a\f  |
  d4           r8  a8     d,4        r8 a'8  |

  % Bar 12
  fs8 e16 d   e8 d16 cs   d8 cs16 b  a d a d   |
  d8 e,16 d   e8 d16 cs   d8 cs16 b  a d a d   |
  a8 g16 fs   g8 fs16 e   d8 d'      d d,      |
  d,8  b'     g  a        b a16 g    fs8 e16 d |

  % Bar 13
  b8 a16 g   fs d' fs, d'  g,8 fs16 e  d d' e, d' |
  b8 a16 g   fs d' fs, d'  g,8 fs16 e  d d' e, d' |
  d8 d'      d d,          d d'        d d,       |
  g8 fs16 e  d8 d'16  cs   b8 a16 g    fs8 gs     |

  % Bar 14
  fs,16 d' gs, d'  a cs a d   a e' a, fs'  a, g' a, a' |
  fs,16 d' gs, d'  a cs a d   a e' a, fs'  a, g' a, a' |
  d8    d'         cs  b      a   d,       cs   e      |
  a8    a,         a  a'16 b  cs8  d       e    cs     |

  % Bar 15
  fs8 e16 d   a8 cs   d4          r8 g16 fs |
  fs8 e16 d   a8 cs   d4          r8 d16 c  |
  d8 e16 fs   e8 a    fs4         r4        |
  d8   g,     a  a,   d d'16 c    b c b a   |

  % Bar 16
  g8 d16 c  d8 r8     r2                   |
  d8 b16 a  b8 r8     r2                   |
  r4        r8 d16 c  d8 b16 a   b8 r8     |
  g4        r4        r4         r8 g16 fs |

  % Bar 17
  r8 b16 cs  d8 e       a, d'16\p cs   d8  r8   |
  r8 b16 cs  d8 e       a, d'16\p cs   d8  r8   |
  r8 d8      g16 b a g  fs a d e       fs g a g |
  g8 g,16 a  b8  cs     d4             r8  a8   |

  % Bar 18
  r8 d16 cs  d8 r8     r8 d16 cs    d8 r8  |
  r8 a16 g   a8 r8     r8 a16 g     a8 r8  |
  fs8  d     r  cs     d a       d, d'16 cs |
  d4         r8 a8     d4        r8 a8      |

  % Bar 19
  r8  d,\f   fs   a      fs  d      fs  a       |
  r8  d,\f   fs   a      fs  d      fs  a       |
  d8 a16 g   a8  d16 cs  d8 fs16 e  fs8  d16 cs |
  d8  d'     d   d,    d   d'     d  d,   |

  % Bar 20
  fs8  a,    d16 fs e d  cs4          r8  cs8   |
  fs8  a,    d16 fs e d  cs16 e a, b  cs d e fs |
  d8 d,16 e  fs8  gs     a cs16\p b   a8  r8    |
  d8 d'16 cs b8   e8     a,4          r8  a8    |

  % Bar 21 -- page 3
  b4        r8 e8     d16 fs b, cs  d e fs g   |
  g4        r8 g8     fs4           r8  fs     |
  r8 d16 c  d8 r      r  d16 c      d8  r8     |
  e4        r8 e      b4            r8  b      |

  % Bar 22
  a8  a        a  g16 fs  g8   g      g  fs16 e  |
  fs8 fs       fs e16 fs  e8   e      e  d16  e  |
  r8 d16\f cs  d8 d       d cs16 b    cs8 d16 g, |
  fs'8 b16 a   b8 e,16 d  e8 a16 g    a8 d,16 cs |

  % Bar 23
  fs8 e16 d   a8 cs    d16( cs d) e  d fs d g    |
  d8  b       a  a     a4            r8 d16\p cs |
  d8 e16 fs   g8 g     fs(\p  fs     fs  g)      |
  d8  g       a  a,    d  d'16 cs    d8  r8      |

  % Bar 24
  d16( cs d) e  d a' d, b'  fs( e fs) g      fs a, g' b,  |
  d8  r         r  d16 cs   d8(  d           d  d)        |
  a8( a         a   b)      e,16(\f cs d) e  d fs d g     |
  r8  d16 cs    d8  r       r  d,16 cs       d8 r         |

  % Bar 25
  fs'16( e fs) g fs c? g' b, a\f g a b   a g' a, fs' |
  d8(  d         d   d)      d   d-|\f   d-|   a-|   |
  d16( cs) d e   d a' d, b'  c( b c) d   c b c a     |
  r8  d16 cs     d8  r       r  d'16 c   d8 d,       |

  % Bar 26
  g4             r8 g,16\p fs g8  r       r  g16 fs  |
  g16( fs g) a   g b g cs     g( fs g) a  g d' g, e' |
  b8\p(  b       b  c)        d(  d       d   e)     |
  g,8 g'16 fs    g8 r         r   g16 fs  g8  r      |

  % Bar 27
  g8(  g        g   g)       g(  g        g   g)     |
  b16( a b) c   b d, c' e,   b'( a b) c   b f c' e,  |
  d8   r        r   f16 e    f8 r         r   f16 e  |
  r8 g,16 fs    g8 r         r   g16 fs   g8  r      |

  % Bar 28
  g8 g-|\f      g-| d-|      c16 g' a b   c8  r      |
  d16( c d) e   d c' d, b'   c   g  a b   c8  r      |
  g,8  g\f      g    b       g16 b c d    e d e f    |
  r8  g'16 f    g8  g,       c4           r16 b c d  |

  % Bar 29
  \mark \default r8 c'16 b     c8  c        c b16 a      b8 b      |
  \mark \default r8 a'16 b     a8  a        a g16 a      g8 g      |
  \mark \default g8  g         g  f16 e     f8 f         f e16 d   |
  \mark \default e8 a16 g      a8 d,16 c    d8 g16 f     g8 c,16 b |

  % Bar 30
  bf8 a16 g    a g f e       d b g a      b c d e    |
  g8 f16 e     f8  a,        b  b         b16 a b c  |
  e8 e         e d16 c       b g b c      d e f g    |
  c8 f16 e     f4(           f16) g f e   d c b a    |

  % Bar 31
  f16( g32 f e f g16)  d8. c16  c( b c) d    c e d f   |
  d8     g,            g   g    g16( f g) a  g c b d   |
  a16 b c d            b8. c16  c4           c,4       |
  g8   c               g' g,    c4           r8 c'16 b |

  % Bar 32 page 4

  e16( d e) f  e g f a  g( f g) a   g a g f   |
  c16( b c) d  c e d f  e( d e) f   e f e d   |
  e8  g        e   c    e    g      e   c     |
  c8 g16 f     g8 c16 b c8 e,16 d   e8 c'16 b |

  % Bar 33
  e16 f e d  c e d c   b8 g8           r g,      |
  c16 d c b  c8  a     g  d            r g,      |
  g8 g16 g   g8  r     g16\f( fs g) a  g b a c   |
  c8 c,16 d  e8 fs     g g,            r g'16 fs |

  % Bar 34
  b8  d        b  g       b   d      b   g      |
  b8  d        b  g       b   d      b   g      |
  b16( a b) c  b d c e    d( c d) e  d e d c    |
  g8 d16 c     d8 g16 fs  g8 b,16 a  b8 g'16 fs |

  % Bar 35
  d'8 d16 d    d8 r      r d'16 cs     d8  r    |
  d'8 d16 d    d8 r      r a'16 g      a8  r    |
  b16( c b) a  g b a g   fs4           r8  e    |
  g8 g,16 a    b8 cs8    d16( cs d) e  d fs d g |

  % Bar 36
  r8 d16 cs    d8 r       r c16 b      c8 b16 a   |
  r8 a16 g     a8 r       r a16 g      a8 g16 fs  |
  fs8  r       r  g       a  r         r  fs      |
  d16( cs d) e d a' d, b' d,( cs d) e  d c' d, d' |

  % Bar 37
  d8 c16 b    c8 b16 a    b8 g       r   d     |
  g8 g        fs g16 a    g8 r       r   d     |
  d8 d        a' d,       g  d'      b   g     |
  b8 a16 g    a8 g16 fs   g8 b16 a   b8 d16 c  |

  % Bar 38
  b8 g        r4          r8 d''16 c  d8 g16 fs |
  b8 g        r4          r8 b'16 a   b8 d16 c  |
  r8 g16 fs   g8 b16 a    b8 r8       r4        |
  d8 r8       r4          r4          r8 g,8    |

  % Bar 39
  g8 d16 c    d8 r8       r4          r8 g16 fs  |
  d8 b16 a    b8 r8       r4          r8 g'16 fs |
  r4          r8 g16 fs   g8 b,16 a   b8 g'16 fs |
  g8 g,       g g'        g g,        g g'16 fs  |

  % Bar 40
  g8 g,16 a   b8 cs    d16( c d) e    d fs d g   |
  g8 g,16 a   b8 cs    a16( g a) b    a c  b d   |
  g8 g,16 a   b8 cs    d8 d'16( cs    d8) r8     |
  g8 g,16 a   b8 cs    d8 d           d d'16 cs  |

  % Bar 41
  d16( cs d) e  d a' d, b'   d,( cs d) e  d c' d, d' |
  a16( g a) b   a fs' b, g'  a,( g a) b   a g' fs a  |
  r8  d16 cs    d8 r         r  a'        fs   d     |
  d8  d,        d d16 cs     d8 d         d   fs     |

  % Bar 42
  b8 a16 g  a8 g16 fs    g8 fs16 e  d g d g   |
  b8 a16 g  a8 g16 fs    g8 fs16 e  d g d g   |
  g8 a16 b  c8 b16 a     g8 g,      g   g'    |
  g8 e      c  d         e d16 c    b8 a16 g  |

  % Bar 43
  e8 d16 c   b g' b, g'   c,8 b16 a g g' a, g' |
  e8 d16 c   b g' b, g'   c,8 b16 a g g' a, g' |
  g8 g,      g  g'        g   g,    g  e'      |
  c8 b16 a   g8 g'16 fs   e8 d16 c  b8 cs      |

  % Bar 44 - page 5
  b,16 g' cs, g'  d fs d g  d a' d, b'   d, c' d, d' |
  b,8 cs          d d,16 e  fs8  g       a  fs'      |
  d8  e           fs d16 e  fs8  g       a  a        |
  d8  d           d  d16 e  fs8  g       a  d,       |

  % Bar 45
  b8 a16 g      d8 fs      g fs16 e    d c b a   |
  g8   e        d  fs      g fs16 e    d c b a   |
  g8   a        a  a       g fs16 e    d c b a   |
  g8   c,       d  d       e4          r8  fs    |

  % Bar 46
  b8 a16 g      d'8 d,     g4         r16 g d e   |
  b8 a16 g      d'8 d,     g4         r4          |
  b8 a16 g      d'8 d,     g'8 fs16 e d c b a     |
  g8 c,         d   d      g   fs16 e d c b a     |

  % Bar 47
  \mark \default f16( e f) d'   b f d g,   f'( e f) d' b f d g,   |
  \mark \default d'16(\p c d8)  r4         d16( c d8)  r4         |
  \mark \default g8(  g         g   g)     g(  g       g  g)      |
  \mark \default g4             r4         g4          r4         |

  % Bar 48
  e'16( d e) c'  g e c g    e'16( d e) c'  g e c g |
  c16(\p b c8)   r4         c16( b c8)     r4      |
  g8(  g         g   g)     g(  g          g  g)   |
  g4             r4         g4             r4      |

  % Bar 49
  fs'16( e fs) c' a fs c a   fs'16( e fs) c' a fs c a |
  a16(\p g a8)    r4         a16( g a8)      r4       |
  g8(  g          g   g)     g(  g           g  g)    |
  g4              r4         g4              r4       |

  % Bar 50
  b16 d e fs    g a b cs  d8  d,       r4         |
  g16\f fs g a  b a g a   fs4          r16 d' a b |
  g8(   g       g)  a     a16 d' cs b  a g fs e   |
  g'8   fs      e   a     d, cs'16 b   a g fs e   |

  % Bar 51
  fs'16(\p e fs8)  r4         a16( g a8)   r4         |
  c16(\p b c) a'   fs ds c a  c( b c) a'   fs ds c a  |
  ds8(\p  ds       ds    ds)  fs(   fs     fs   fs)   |
  ds4\p            r4         fs,          r4         |

  % Bar 52
  ds,16( cs ds8)  r4          ds16( cs ds8)  r4         |
  b16( a b) a'    fs ds b fs  b( a b) a'     fs ds b fs |
  a8(   a         a     a)    a(    a        a    a)    |
  a4              r4          a'             r          |

  % Bar 53
  fs16( e fs8)    r4          fs16( e fs8)   r8 e16\f ds |
  a16( g a) fs'   ds b a fs   a16( g a) fs'  ds b a fs   |
  ds,8(   ds      ds    ds)   b(    b        b)   b\f    |
  ds,4            r4          b4             r4          |

  % Bar 54
  e8 b16 a        b8  r8      r2                         |
  g8 g16 fs       g8  r8      r2                         |
  b4              r8 g'16 fs  g8 e16 ds      e8  r8      |
  e4              r4          r4             r8  g16 fs  |

  % Bar 55
  r8 e,16 fs      g8 a        b ds16 cs      ds8 fs16 e  |
  r8 e16 fs       g8 a        b a16 g        a8  ds16 cs |
  r8 e,16 fs      g8 a        b4             r4          |
  e8 e,16 fs      g8 a        b16( as b) cs  b ds b e    |

  % Bar 56 - page 6
  fs8   r         r4          r8 ds,16 cs   ds8   b''   |
  ds8   r         r4          r8 ds,16 cs   ds8   b''   |
  r8    a16 g     a8 c16 b    c8 ds,16 cs   ds8   b'    |
  b16( as b) cs   b fs' b, g' b,( as b) cs  b a' b, b'  |

  % Bar 57 (that was fun)
  g8 fs16 e     fs8 e16 ds    c'8. b16   a g fs e  |
  g8 fs16 e     fs8 e16 ds    c'8. b16   a g fs e  |
  g8 fs16 e     fs8 e16 ds    c'8. b16   a g fs e  |
  g8 fs16 e     fs8 e16 ds    c'8. b16   a g fs e  |

  % Bar 58
  \mark \default b'8 a16 g    fs8 e16 ds    e8 e16\p ds  e8  r8    |
  \mark \default b'8 a16 g    fs8 e16 ds    e8 b16\p a   b8  r8    |
  \mark \default fs8 b8       a g16 fs      g b e, fs    g a b a   |
  \mark \default ds8  e       a,  b         e,4          r8  b'8   |

  % Bar 59
  r8 e16 ds    e8  r8        r8 e16 ds    e8  r8    |
  r8 b16 a     b8  r8        r8 b16 a     b8  r8    |
  g8 e'        r8  ds        e  b         e,  fs    |
  e4           r8  b'8       e4           r8  b     |

  % Bar 60
  r8 e16\f fs  g fs e d     cs e a, b   cs d e d    |
  r8 b16\f a   g8   gs      a4          r8  b8      |
  g8 e         b    e       a a16\p gs  a8  r8      |
  e,16 fs g fs e d cs b     a4          r8  e8      |

  % Bar 61
  cs8  a'      r8  gs       a   e       a,  b       |
  cs16 e a, b  cs d e d     cs8 a'      r   gs      |
  r8 a16 gs    a8  r8       r8  a16 gs  a8  r       |
  a4           r8  e'8      a4          r8  e8      |

  % Bar 62
  cs16 d e d   cs e a g     fs8 d'16\p cs  d8  r8      |
  a8   e       a,  cs       d   a'16\p g   a8  r8      |
  r8 a16\p b   cs8 e        a,4            r8 d16\p cs |
  a,16 b cs b  a g' fs e    d a' d, e     fs g a g    |

  % Bar 63
  r8 d16 cs    d8  r8       r8 d16 cs    d8 r8       |
  r8 a16 g     a8  r8       r8 a16 g     a8 r8       |
  d8 r8        r8  d16 cs   d8  r8       r8 d16 cs   |
  fs8 d'       r   a        d   a        d,  a       |

  % Bar 64
  r4           r8 d,\f     b16 d g, a    b c d c     |
  r4           r8 d,\f     b16 d g, a    b c d c     |
  d8 r8        r4          r4            r8  a,8\f   |
  d16 b' a g   fs e d c    d8 g16 fs     g8 d        |

  % Bar 65
  b8 g'16 fs   g8 r8       r4            r8 g16 fs    |
  b8 d16 c     d8 r8       r4            r8 b16 c     |
  b16 d g, a   b c d c     b8 g'16 fs    g8 r8        |
  g,4          r8 fs'8     g16 d g, a    b c d c      |

  % Bar 66
  g8 d16 c     d8 r8       r2                      |
  d8 b16 c     b8 r8       r2                      |
  r4           r8 b16 a    b8 g16 fs     g a b fs  |
  b16 d g, a   b c d c     b c d c       b a g fs  |

  % Bar 67
  cs'16(\p b cs8)  r4       cs16( b cs8)  r4     |
  e16(\p d e8)     r4       e16( d e8)    r4     |
  e8(\p  e         e  e)    e(  e         e  e)  |
  e4\p             r4       e             r      |

  % Bar 68 - page 7
  as16( gs as8)  r4       as16( gs as8)  r4     |
  cs,16( b cs8)  r4       cs16( b  cs8)  r4     |
  e'8( e         e e)     e( e           e e)   |
  e'4            r4       e4             r4     |

  % Bar 69
  cs16( b cs8)   r4       as16( gs as8)  r8 b16\f as |
  g''16( fs g8)  r4       cs,16( b cs8)  r8 fs16\f e |
  as,8(  as      as  as)  as(  as        as  as)     |
  as,4           r4       fs             r4          |

  % Bar 70
  b8 fs16 e      fs8 b16 as  b8 d,16 cs   d8 b'16 as |
  fs8 d16 cs     d8 fs16 e   fs8 b,16 as  b8 fs'16 e |
  b8\f d         b   fs      b  d         b   fs     |
  b8\f b'        b   b,      b  b'        b   b,     |

  % Bar 71
  b8  b,16 cs    d8 e      fs16( e fs) g  fs e d cs  |
  fs8 b,16 cs    d8 e      fs16( e fs) g  fs e d cs  |
  b8 d16 cs      b8 a16 g  fs8 e16 d      cs8 as'8   |
  b8 b'16 a      g8 fs16 e d8 cs16 b      as8 fs     |

  % Bar 72
  d16 e d e     e8. d32 e   fs8 b16 as    b8 fs16 e |
  d16 e d e     e8. d32 e   fs8 b16 as    b8 fs16 e |
  b8 b,         b b'        b  b,         b  b'     |
  b8 b'16 a     g8 fs16 e   d cs d e      d e d cs  |

  % Bar 73
  d8 cs16 b    cs8 b16 as   g'8. fs16   e d cs b  |
  d8 cs16 b    cs8 b16 as   g'8. fs16   e d cs b  |
  d8 cs16 b    cs8 b16 as   g'8. fs16   e d cs b  |
  b8  g'       e fs         g8.  fs16   e d cs b  |

  % Bar 74
  fs'8. g16    cs,8. b16    b4          r4        |
  fs8  b8      b8   as8     b4          r4        |
  b8  b        fs   fs      fs4         r4        |
  d8  e        fs   fs,     b8 b'16 as  b8 d16 cs |

  % Bar 75
  r2                        r8  d16 cs  d8 fs16 e  |
  r2                        r8  b16 as  b8 d16 cs  |
  r8 fs16 e   fs8 b16 as    b8  r8      r4         |
  d8 r8       r4            r4          r8 b,16 cs |

  % Bar 76
  fs8 fs      fs e16 d      e8 e        e d16 cs    |
  b8  d       d  cs16 d     cs8 cs      cs b16 cs   |
  r8 b16 cs   b8  b         b a16 gs    a8 b16 e,   |
  d8 g16 fs   g8 cs,16 b    cs8 fs16 e  fs8 b,16 as |

  % Bar 77
  d8.  cs16   cs8. b16      b4          r4          |
  b8.  cs16   as8.\trill b16 b4         r8 g16 fs   |
  b8   g'     cs,  fs       d4          r4          |
  b8   e      fs   fs,      b   c       b   a       |

  % Bar 78
  \mark \default g4          b4            d4          r8  d8      |
  \mark \default g8 d16 c    d8 g16 fs     g8 b,16 a   b8 g'16 fs  |
  \mark \default g8 fs       g  a          b   c       b  a        |
  \mark \default g4          r4            r2                      |

  % Bar 79
  b8 d8       g16 b a g    fs( g a) g   fs e d cs   |
  g8 g,16 a   b8 cs        d4           r4          |
  g8 fs       e  a         d    d,      fs   a      |
  R1                                                |

  % Bar 80 -- page 8
  d8 a16 g    a8 d16 cs   d8 fs,16 e  fs8 d'16 cs |
  d4          fs          a           r8 a8       |
  d4          r4          r2 |
  d'8  cs     d   e       fs   g      fs  e       |

  % Bar 81
  d8 d,16 e   fs8 gs      a4          r8  cs8     |
  fs8  a      d16 fs e d  cs( b e) d  cs b a g    |
  R1 |
  d8  cs      b   e       a,4         r8  a8      |

  % Bar 82
  d16( cs d) e   d fs cs e  d( e fs) e  d c b a   |
  fs16( e fs) g  fs a e g   fs4         r8  fs    |
  R1 |
  d8  d          fs   a     d4          r8  d,8   |

  % Bar 83
  b16( a b) cs   b d a c   b( c d) c  b a g fs   |
  g16( fs g) a   g b fs e  g( a b) a  g fs e ds  |
  r2                       r8 g16 fs  g8  r8     |
  g8  g,         b  d      g4         r8  b,8    |

  % Bar 84
  g16( fs g) a   g b fs a  g a b a      g fs e d |
  e16( ds e) fs  e g ds fs e( fs g) fs  e d c b  |
  r2                       r8 e16 ds    e8  r8   |
  e8  e,         g   b     e4           r8  g,8  |

  % Bar 85
  e16 g fs a   g b a g   fs g a b  c d c d     |
  c b a c      b d c b   a b c d   e fs g a    |
  r2                     r4        r8 g16\f fs |
  c8   d       g,  c     d   c     b    a      |

  % Bar 86
  b16 g' fs e  d c b a    g e d c    b a g a   |
  d,4          r8 g16 a   b c d e    d c b a   |
  g8 d16 c     d8 g16 fs  g8 b,16 a  b8 g16 fs |
  g8 g'        g g,       g g'       g g,      |

  % Bar 87
  \mark \default b16 c b a    g8 g''      fs16 d fs d   fs d fs d   |
  \mark \default g8  b        e16 g fs e  d a d a       d a d a     |
  \mark \default g8 g,16 a    b8 cs       d16 c' d, c'  d, c' d, c' |
  \mark \default g8 g'16 fs   e8 a        d   c         b    a      |

  % Bar 88
  f16 d f d      f d f d      e c e c        e c e c       |
  d16 b d b      d b d b      c g c g        c g c g       |
  d,16 b' d, b'  d, b' d, b'  e, bf' e, bf'  e, bf' e, bf' |
  g8  f          e   d        c'  bf         a    g        |

  % Bar 89
  e16 cs e cs    e cs e cs    b ds b ds    b ds b ds  |
  cs16 as cs as  cs as cs as  fs b fs b    fs b fs b  |
  fs as fs as    fs as fs as  fs a fs a    fs a fs a  |
  fs8 e          d cs         b' a         g fs       |

  % Bar 90
  d16 b d b     d b d b      c a c a      c a c a    |
  b16 gs b gs   b gs b gs    a e a e      a e a e    |
  e16 gs e gs   e gs e gs    e a e a      e a e a    |
  e8  d         c  b         a'  g        f   e      |

  % Bar 91
  bf16( a bf) f' d bf f s  bf( a bf) f'   d bf f d  |
  f16( e f8)     r4        f16( e f8)     r4        |
  d8(\p  d       d  d)     d(  d          d   d)    |
  d4             r4        r2                       |

  % Bar 92 -- page 9
  c'16( b c) fs  c a fs ds   c'( b c) fs   c a fs ds |
  a16( g a8)     r4          a16( g a8)    r4        |
  ds8(   ds      ds   ds)    ds(   ds      ds   ds)  |
  ds4            r4          r2                      |

  % Bar 93
  d'16( c d) gs  d b gs e    d'( c d) gs   d b gs e  |
  b16( a b8)     r4          b16( a b8)    r4        |
  e8(    e       e   e)      e8(    e      e   e)    |
  e,4            r4          r2                      |

  % Bar 94
  c'16( b c) a'  fs c a ds,  c'( b c) a'   fs c a ds, |
  fs'16( e fs8)  r4          fs16( e f8)   r4         |
  ds8(   ds      ds   ds)    ds(   ds      ds   ds)   |
  e4             r4          r2                       |

  % Bar 95
  b'16( a b) a'  f d b e,    b'( a b) a'   f d b e,  |
  e16( f e8)     r4          e16( fs e8)   r4        |
  e8(    e       e   e)      e8(    e      e   e)    |
  e4             r4          r2                      |

  % Bar 96
  b'16( a b) gs' d b gs e   b'( a b) gs'   d b e, gs' |
  gs16( fs gs8)  r4         gs16( fs gs8)  r4         |
  e8(    e       e   e)     e8(    e       e   e)     |
  e4             r4         r2                       |

  % Bar 97
  \mark \default a8 f16 e       f8 r8        r4       r8 c'8   |
  \mark \default a8 r8          r8 c,16\f b  c8 r8    r8 f8    |
  \mark \default e8 a16\f gs    a8 r8        r4       r8 a8    |
  \mark \default a8  r8         r4           r4       r8 a'8   |

  % Bar 98
  b8 e,16 d     e8 r8        r4       r8 b'8    |
  f8 r8         r8 b,16 a    b8 r8    r8 e8     |
  b8 g?16 fs    g8 r8        r4       r8 g8     |
  g,8 r8        r4           r4       r8 g'8    |

  % Bar 99
  a8 d,16 cs    d8 r8        r4       r8 a'8    |
  e8 r8         r8 a,16 gs   a8 r8    r8 d8     |
  a8 f16 e      f8 r8        r4       r8 a8     |
  f,8 r8        r4           r4       r8 f'?8   |

  % Bar 100
  gs8 d16 c?    d8 b16 a    b8 gs16 fs  gs8  e'  |
  d8  b16 a     b8 gs16 fs  gs8 d16 c   d8   b'  |
  e8  gs16 a    gs8 b16 c   b8 d16 e    d8   g,  |
  e,8  e'       e  e,       e  e'       e  d     |

  % Bar 101
  a,8.  b16     b8.  a16    a4             r8  a,8    |
  e8    a,      gs8. a16    a4             r8  a,8    |
  a8   f        b,   b      a'16( gs a) b  a c b d    |
  c8   d        e    e,     a4             r8 a'16 gs |

  % Bar 102
  c8  e        c    a      c    e       c    a    |
  c8  e        c    a      c    e       c    a    |
  c16( b c) d  c e d f     e( d e) f    e f e d   |
  a8 e16 d     e8  a16 gs  a8  c,16 b   c8 a'16 g |

  % Bar 103 -- Page 10
  e'8 e16 e    e8   r      e'16( ds e) fs  e g fs a  |
  e'8 e16 e    e8   r      b'16( a b) c    b e ds fs |
  c16 d c b    a c b a     g8   e8         r  e      |
  a8 a,16 b    cs8 ds      e    e,         r  e'16 d |

  % Bar 104
  g16( fs g) a   g b a c   b( a b) c    b c b a   |
  e16( ds e) fs  e g fs a  g( fs g) a   g a g fs  |
  g8  b          g   e     g     e      g   b     |
  e8 b16 a       b8 e16 ds e8 g,16 fs   g8 e'16 d |

  % Bar 105
  g16 a g fs   e g fs e    ds8  b       r g'16 fs |
  e16 f e ds   e8  c       b    fs      r g'16 fs |
  b8 b16 b     b8  r       r b,16 a     b c b a   |
  e8 e,16 fs   g8  a       b16 a b c    b c b a   |

  % Bar 106
  \mark \default g8 d?16 c     d8 g16 fs    g8 b,16 a    b8 g'16 fs |
  \mark \default g8 d?16 c     d8 g16 fs    g8 b,16 a    b8 g'16 fs |
  \mark \default g16( fs g) a  g b a c      b a b c      b d c e    |
  \mark \default g4            r8  d'8      g16( fs g) a g b a c    |

  % Bar 107
  g8 g,16 a     b8 cs        d  d,        r4         |
  g8 g,16 a     b8 cs        d  d,        r16 d' a b |
  d16 e d c     b g' fs e    d d' cs b    a b a g    |
  b16 c b a     g b a g      fs b a g     fs g fs e  |

  % Bar 108
  fs'16(\p e fs8)  r4          fs16( e fs8)   r4        |
  c16( b c) a'     fs c a d,   c'16( b c) a'  fs c a d, |
  a8(\p a          a    a)     a(    a        a    a)   |
  d4               r4          d4             r4        |

  % Bar 109
  f16(\f e f) d'   b f d g,    f'( e f) d'    b f d g,  |
  b'16 a b8        r4          b16( a b8)     r4        |
  b8(  b           b  b)       b(    b        b   b)    |
  g,4              r4          g4             r4        |

  % Bar 110
  e'16(\p f e8)    r4          e16( f e8)     r4        |
  b16( a b8)       r4          b16( a b8)     r4        |
  b8(  b           b  b)       b(    b        b   b)    |
  gs4              r4          gs4            r4        |

  % Bar 111
  e8(\pp  e        e  e)       e(    e        e   e)    |
  a8(\pp  a        a  a)       a(    a        a   a)    |
  g16(\f fs g) e'  cs g e a,   g'( fs g) e'   cs g e a, |
  a4               r4          a4             r4        |

  % Bar 112
  a8(   a          a  a)       a(    a        a   a)    |
  c8(   c          c  c)       c(    c        c   c)    |
  a'16(\p g a8)    r4          a16( g a8)     r4        |
  fs4              r4          fs4            r4        |

  % Bar 113
  af8(  af         af  af)     af(   af       af  af)   |
  d8(   d          d  d)       d(    d        d   d)    |
  d16( c d8)       r4          d16( c d8)     r4        |
  f4               r4          f4             r4        |

  % Bar 114 -- page 11
  \mark \default g16( fs g8)      r4            g16( fs g8)     r4           |
  \mark \default e16( d  e8)      r4            e16( d  e8)     r4           |
  \mark \default r4               bf16( c bf8)  r4              bf16( c bf8) |
  \mark \default cs'16( d cs) bf'  g e cs g     cs( d cs) bf'   g e cs g     |

  % Bar 115
  g16( fs g8)      r4            g16( fs g8)    r4           |
  d16( c  d8)      r4            d16( c  d8)    r4           |
  r4               bf16( c bf8)  r4             bf16( c bf8) |
  d'16( ef d) bf'  g d bf g      d'( ef d) bf'  g d bf g     |

  % Bar 116
  g16( fs g8)      r4            g16( fs f8)    r4           |
  e16( ds e8)      r4            e16( ds e8)    r4           |
  r4               bf16( c bf8)  r4             bf16( c bf8) |
  d'16( ef d) cs'  bf g e cs     d( ef d) cs'   bf g e cs    |

  % Bar 117
  g16( fs g8)      r4            g16( fs f8)    r4           |
  d16( c  d8)      r4            d16( c  d8)    r4           |
  r4               bf16( c bf8)  r4             bf16( c bf8) |
  d16( ef d) d'    bf g d bf     d( ef d) d'    bf g d bf    |

  % Bar 118
  fs16( g fs8)     r4            fs16( g fs8)   r4           |
  c16( b c8)       r4            c16( b c8)     r4           |
  r4               a16( bf a8)   r4             a16( bf a8)  |
  d16( ef d) ef'   c a f d       d16( ef d) ef'  c a f d    |

  % Bar 119
  g8\f ef16 d      ef8 r8        r4             r8 bf'8      |
  bf8\f r8         r8 bf16 a     bf8 r8         r8 ef8       |
  bf8\f g16 f      g8 r8         r4             r8 g8        |
  g,8 r8           r4            r8 g16 fs      g8 g'8       |

  % Bar 120
  a8 d,16 cs       d8 r8         r4             r8 a'8       |
  ef8 r8           r8 a,16 g     a8  r8         r8 d8        |
  a8 f16 e         f8 r8         r4             r8 f8        |
  f8 r8            r4            r8 f,16 e      f8 f'8       |

  % Bar 121
  g8 c,?16 b       c8 r8         r4             r8 g'8       |
  d8  r8           r8 g,16 fs    g8  r8         r8 c8        |
  g8 ef16 d        ef8 r8        r4             r8 g8        |
  ef8 r8           r4            r8 ef16 d      ef8 ef8      |

  % Bar 122
  f8 a16 g       a8 r8       r8 c16 bf    c8 r8    |
  c8 f16 g       f8 r8       r8 a16 g     f8 r8    |
  a16 fs d e     fs g a bf   c4           r8 a8    |
  d4             r8 d'8      d,4          r8 d'8   |

  % Bar 123
  r8 ef16 d      ef8 r8     r8 d16 c      d8 r8      |
  r8 c'16 bf     a8  r8     r8 bf16 c     bf8 r8     |
  fs4            r8  a8     d,4           r8 c'16 bf |
  c,4            r8  c8     bf16 d g, a   bf c d e   |

  % Bar 124 -- page 12
  r8 c16 bf      c8  r8     r8 a16 g      fs8 d      |
  r8 a16 g       a8  r8     r8 ef16 d     c8  d      |
  c8  r8         r8 a16 g   fs8 r8        r8  d,8    |
  fs16 a d, e    fs g a bf  c a fs g      a b c d    |

  % Bar 125
  ef8. d16       c bf a g   d'8 c16 bf    a8 g16 fs  |
  ef8. d16       c bf a g   d'8 c16 bf    a8 g16 fs  |
  ef8. d16       c bf a g   d'8 c16 bf    a8 g16 fs  |
  ef8. d16       c bf a g   fs8  g        d' d,      |

  % Bar 126 -- recapitulation!
  \mark \default g8 d16 c   d8 g16 fs  g8  b,16 a b8 g'16 fs |
  \mark \default g8 d16 c   d8 g16 fs  g8  b,16 a b8 g'16 fs |
  \mark \default b8 d       b  g       b   d      b  g       |
  \mark \default g,8 g'     g  g,      g   g'     g  g,      |

  % Bar 127
  g8 g,16 a  b8 cs     d16( cs d) e  d fs d g |
  g8 g,16 a  b8 cs     d16( cs d) e  d fs d g |
  b8 d       g16 b a g fs8    d      r    b'  |
  g8 g'16 fs e8 a      d,  d'16 cs   d8   d,  |

  % Bar 128
  d16( cs d) e   d a' d, b'  d,( cs d) e  d c' d, d' |
  d16( cs d) e   d a' d, b'  d,( cs d) e  d c' d, d' |
  fs8     d      r    g      fs    d      r    a     |
  d8  d'16 cs    d8   d,     d d'16 cs    d8   fs,   |

  % Bar 129
  b8 a16 g  a8 g16 fs  g8 fs16 e   d g d g  |
  b8 a16 g  a8 g16 fs  g8 fs16 e   d g d g  |
  d8 c16 b  c8 b16 a   g8      g'  g   g,   |
  g8 e      c  d       e  d16 c    b8 a16 g |

  % Bar 130
  e8 d16 c  b g' b, g'  c,8 b16 a   g g' a, g' |
  e8 d16 c  b g' b, g'  c,8 b16 a   g g' a, g' |
  g8 g'     g    g,     g   g'      g    g,    |
  c8 b16 a  g8 g'16 fs  e8 d16 c    b8   cs    |

  % Bar 131
  b,16 g' cs, g'   d fs d g    d a' d, b'  d, c' d, d' |
  b,16 g' cs, g'   d fs d g    d a' d, b'  d, c' d, d' |
  g8      g'       fs   g      a    b      c     d     |
  d8      d        d    d16  e fs8  g      a     fs    |

  % Bar 132 -- downhill to end
  b8 a16 g   d8 fs8    g8  r8     r4       |
  b8 a16 g   d8 fs8    g8  r8     r4       |
  b8 a16 g   d8 fs8    g8  r8     r4       |
  g8 c       d  d,     g g16 fs   g8 b16 a |

  % Bar 133
  r2                    r8 b16 a   b8 d16 c |
  r2                    r8 g16 fs  g8 b16 a |
  r8 d16 c   d8 g16 fs  g8 r8      r4       |
  b8 r8      r4         r2                  |

  % Bar 134
  d8 g16 fs  g8 b16 a   b8 a16 g   fs e d c |
  b8 d16 c   d8 g16 fs  g4         r8   d8  |
  r4         r8 d8      g8 fs16 e  d c b a  |
  R1                                        |

  % Bar 135
  b16 d c b   a g fs e  d g fs e  d c b a   |
  g8  fs16 e  d c b a   g8 fs16 e d c b a   |
  g16 b c d   e fs g a  b g fs e  d c b a   |
  r4          r8  d,8   g8 fs16 e d c b a   |

  % Bar 136
  b8 a16 g    d'8 d8    g,2\fermata    \bar "|." |
  b8 a16 g    d'8 d8    g,2\fermata    \bar "|." |
  b8 a16 g    d'8 d,8   g2 \fermata    \bar "|." |
  b8 a16 g    d'8 d8    g2 \fermata    \bar "|." |
}









prefix = {
  \time 4/4
  \tempo Allegro
  \clef treble \key g \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.markFormatter = #format-mark-box-barnumbers
}

subMp = \markup { sub \dynamic mp }


%
% Define the parts.
%

% Clarinet I

clarI = {
  \set Staff.instrumentName = #"Bb Clar I "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c' \clarA
}

% Clarinet II

clarII = {
  \set Staff.instrumentName = #"Bb Clar II "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c' \clarB
}

% Clarinet III

clarIII = {
  \set Staff.instrumentName = #"Bb Clar III "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c' \clarC
}

% Bass Clarinet

bassClar = {
  \set Staff.instrumentName = #"Bass Clar "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c' \clarBass
}


%
% Put them all together.
%

parts = {
  <<
     \tag #'clr1  \new Staff  \transpose c  c  \clarI
     \tag #'clr2  \new Staff  \transpose c  c  \clarII
     \tag #'clr3  \new Staff  \transpose c  c  \clarIII
     \tag #'bass  \new Staff  \transpose c  c  \bassClar
  >>
}


%
% Define the things that print.
%

\score {
  % Do I need << >> around this line?
  \context StaffGroup = "quartet" \parts 
  \midi { 
    \context { 
      \Score tempoWholesPerMinute = #(ly:make-moment 160 8) 
    }
  }
  \layout { }
}

\bookpart { \score { \keepWithTag #'clr1 \parts } }
\bookpart { \score { \keepWithTag #'clr2 \parts } }
\bookpart { \score { \keepWithTag #'clr3 \parts } }
\bookpart { \score { \keepWithTag #'bass \parts } }
