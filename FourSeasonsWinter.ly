
\version "2.16.0"
\include "english.ly"

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}


common = {
    \set Score.markFormatter = #format-mark-box-alphabet
    \time 4/4
    \key f \major
    \tempo 4 = 72
}

cresc = \markup { \italic "cresc." }
dim   = \markup { \italic "dim." }
rit   = \markup { \italic "rit." }

structure = {
    \mark Grave
    s1*4
    \mark \default
    s1*4
    \mark \default
    s1*5
    \mark \default
    s1*5
    \bar "|."
}


music = \parallelMusic #'(voiceA voiceB voiceC) {
    % Bar 1
    f8\p c'16 bf       a8 g16 f16   g8 c,8    r8 c8  |
    r16\p a-. c-. a-.  f_"sim" a c a      e g c g   e g c g |
    f8\p  f            f   f        c   c     c   c   |

    % Bar 2
    bf'16( a) g( f)  e8  bf'8  bf(\trill  a)    r8  a   |
    e16 g bf g       e g bf g  r a c a      r a c a |
    c8    c          c   c     f   f        f   f   |

    % Bar 3
    g8 a16 bf16   c8 d16 e16   f,8 g16 a16  bf8 c16 d16 |
    g16 bf c bf   c bf a g     a a bf a     bf a g f    |
    e8     e      e    e       d   d        d    d      |

    % Bar 4
    e,8 f16 g     a8 bf16 c16  d,8 e16 f    g8  a16 f16 |
    g16 g a g     a g f e      f f g f      g f e d     |
    c8    c       c   c        bf  bf       b   b       |


    % Bar 5 -- "A"
    e4            c,8  c              c   c         c   c        |
    r16 g c g     r16 c( b c)         g'4~          g16 c,( b c) |
    c8    c       e16-. g-. c-. g-.   e_"sim" g c g       e g c g      |

    % Bar 6
    f8    f        f   f         f   f       f   f        |
    a'4~           a16 c,( b c)  b'4~        b16 g( f g)  |
    r16 a c a      f a c a       g b d b     g b d b      |

    % Bar 7
    c8    c        c   c        g   g         g   g        |
    c8  c,         r   c'      c16( b) a( g)  f( e) d( c) |
    e,16 g c g     e g c g     r g c g        r g c g     |

    % Bar 8
    g8    g       g   g        c   c         c   c        |
    d4.\trill               c8     c4.                 r8     |
    r16 g b g     r g b g      r e g e       r e g e      |


    % Bar 9 -- page 2 -- "B"
    r16\p e-. g-. e-.   c_"sim" e g e   b d g d       b d g d    |
    c,8   c             c   c         g   g         g   g      |
    c'8\p g'16 f        e8 d16 c      d8 g,8        r8  g      |
    
    % Bar 10
    b16 d f d       b d f d    e g c g       e g c g    |
    g8    g         g   g      c   c         c   c      |
    f'16( e) d( c)  b8 f'8     f8(\trill  e8)    r8  c      |

    % Bar 11
    e16 g bf g       e g bf g  r a c a      r a c a  |
    c8    c          c   c     f   f        f   f    |
    bf'16( a) g( f)  e8 bf'    bf8(\trill  a8)  r8  a    |

    % Bar 12
    f16 bf f bf    g bf g bf   g c g c       a c a c     |
    bf,8   bf      bf   bf     c   c         c   c       |
    d,8 e16 f      g8 a16 bf   e,8 f16 g16   a8 bf16 c16 |

    % Bar 13 -- "C"
    a16 d a d      bf d bf d   r g, c g     r8 e'16 f |
    d8    d        d    d      c   c        r16 g'-. c-. g-. |
    f,8 g16 a      bf8 c16 d   e,4          c,8 c     |
   

    % Bar 14
    g16 e( d c)       a'( bf c a)  g8 c,8       r8 e16 f  |
    r16 e_"sim" g e   r f a f      r e g e      r e g e   |
    c8    c           c   c        c   c         c   c        |

    % Bar 15
    g16 e( d c)   a'( bf c a)  g8 c,8        r g'16 c   |
    r16 e g e     r f a f      r e g e       r e g e    |
    c8    c       c   c        c   c         c   c        |


    % Bar 16
    a8 g16 f      e8.\mordent f16  f2~\trill       |
    r16 a c a     r g c g          r a c a  r a c a |
    f8    f       c   c        f   f         f   f  |


    % Bar 17
    f1~ |
    r16 a c a    r a c a   r f a f    r f a f |
    f8  f        f   f     f   f      f   f   |


    % Bar 18
    f1  |
    a1  |
    f1  |
}

clar_i   = << \structure { \common \relative c'' \voiceA } >>
clar_ii  = << \structure { \common \relative c'' \voiceB } >>
clar_iii = << \structure { \common \relative c' \voiceC } >>


\bookpart {

    \header {
        title = "Four Seasons: Winter"
        composer = "Vivaldi"
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
        title = "Four Seasons: Winter"
        composer = "Vivaldi"
        piece = "Bb Clarinet 1"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 1" } \clar_i
    }
}

\bookpart {
    \header {
        title = "Four Seasons: Winter"
        composer = "Vivaldi"
        piece = "Bb Clarinet 2"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 2" } \clar_ii
    }
}

\bookpart {
    \header {
        title = "Four Seasons: Winter"
        composer = "Vivaldi"
        piece = "Bb Clarinet 3"
        tagline = ""
    }

    \score {
        \new Staff \with { instrumentName="Bb Clar 3" } \clar_iii
    }
}

