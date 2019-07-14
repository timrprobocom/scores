\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

global = {
  \key a \minor
  \time 4/4
  \tempo "Tango" 4=120
  \set Score.markFormatter = #format-mark-box-alphabet
}

scoreAClarinetI = \relative c' {
    \global

    r8 e8->(\mf f) e-. f(-> e) c'( a) |
    r8 e8->( f) e-. c'( a) e(-> f) |

    r8 ds8->( e) ds-. e(-> ds) b'( fs) |
    r8 ds8->( e) ds-. b'( fs) ds(-> e) |

    r8 d8->( e) d-. e(-> d) b'( f!) |
    r8 d8->( e) d-. b'( f) d(-> e) |

    r8 c8->( d) c-. d(-> c) a'( e) |
    r8 c8->( d) c-. a'( e) c(-> d) |
    r8 c8->( d) c-. d(-> c) a'( e) |
    r8 c8->( d) c-. a'( e) c(-> d) |

    r8 c8->( d) c-. d(-> c) a'( ef) |
    r8 c8->( d) c-. a'( ef) c(-> d) |

    r8 b8->( c) b-. c(-> b) gs'( d) |
    r8 b8->( c) b-. gs'( d) b(-> c) |
    r8 b8->( c) b-. c(-> b) a'( ef) |
    r8 b8->( c) b-. gs'( d) b(-> c) \bar "||" |

    %% Box A measure 17

    \mark \default

    c1\pp |
    c1 |
    b1 |
    b1 |
    bf1 |
    bf1 |
    e1 |
    e1 |
    e1 |
    e1 |
    ds1 |
    ds1 |
    d1 |
    d1 |
    d1 |
    d2 r2 \bar "||" |

    %% Box B measure 33

    \mark \default
    e'1~ |
    e4. e8( d c b a) |
    b1~ |
    b2~ b4. c8-> |
    d16( ef d c) d2.~ |
    d4. e,8( c' b a gs) |
    a1~ |
    a2~ a8 e( a b) |
    c1~ |
    c4. e,8( c' b c a) |
    b1~ |
    b2~ \times 2/3 { b4 b4-> b4-> } |
    b16(-> c b a b4)~ b2 |
    \acciaccatura { b16( c) } b4( a4~a4. a8) |
    \times 4/5 { b16 a gs fs f } e2. |
    e1 \bar "||" |

    %% Box C measure 49
    \mark \default

    bf'1 |
    a1 |
    a,4( df2) d4-. |
    e4( f) gs( a8) r8 |
    r4 r8 g4. gs4~ |
    gs2 g4 r4 |
    r4 b4( d c) |
    b2. r4 \bar "||" |

    %% Box D measure 57
    \mark \default

    c1 |
    c2.( e,4) |
    ds1->~ |
    ds1 |
    b'1-> |
    b2.( d,4) |
    c1-> |
    a'8\fp\< g f e d c b a \! \bar "||" |

    %% Box E measure 65
    \mark \default

    r8 e'8->(\mf f) e-. f(-> e) c'( a) |
    r8 e8->( f) e-. c'( a) e(-> f) |

    r8 ds8->( e) ds-. e(-> ds) b'( fs) |
    r8 ds8->( e) ds-. b'( fs) ds(-> e) |

    r8 d8->( e) d-. e(-> d) b'( f!) |
    r8 d8->( e) d-. b'( f) d(-> e) |

    r8 c8->( d) c-. d(-> c) a'( e) |
    r8 c8->( d) c-. a'( e) c(-> d) |
    r8 c8->( d) c-. d(-> c) a'( e) |
    r8 c8->( d) c-. a'( e) c(-> d) |

    r8 c8->( d) c-. d(-> c) a'( ef) |
    r8 c8->( d) c-. a'( ef) c(-> d) |

    r8 b8->( c) b-. c(-> b) gs'( d) |
    r8 b8->( c) b-. gs'( d) b(-> c) |
    r8 b8->( c) b-. c(-> b) a'( ef) |
    r8 b8->( c) b-. gs'( d) b(-> c) \bar "||" |

    %% Box F measure 81
    \mark \default

    a4->\p r8 a'4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 a4 r8 a8 r8 |
    a4-> r8 gs4 r8 gs8 r8 |

    a,8 b c d e f g a-> \bar "|."
}


scoreAClarinetII = \relative c' {
    \global

    r8 c8(->\mf c) c(->  c4) r4 |
    r8 c8(->\mf c) c(->  c4) r4 |
    r8 b8(->\mf b) b(->  b4) r4 |
    r8 b8(->\mf b) b(->  b4) r4 |
    r8 bf8(->\mf bf) bf(->  bf4) r4 |
    r8 bf8(->\mf bf) bf(->  bf4) r4 |
    r8 e8(->\mf e) e(->  e4) r4 |
    r8 e8(->\mf e) e(->  e4) r4 |
    r8 e8(->\mf e) e(->  e4) r4 |
    r8 e8(->\mf e) e(->  e4) r4 |
    r8 ds8(->\mf ds) ds(->  ds4) r4 |
    r8 ds8(->\mf ds) ds(->  ds4) r4 |
    r8 d8(->\mf d) d(->  d4) r4 |
    r8 d8(->\mf d) d(->  d4) r4 |
    r8 d8(->\mf d) d(->  d4) r4 |
    r8 d8(->\mf d) d(->  d4) r4 \bar "||" |

    %% Box A measure 17

    \mark \default

    r8 e8->(\pp f) e-. f(-> e) c'( a) |
    r8 e8->( f) e-. c'( a) e(-> f) |

    r8 ds8->( e) ds-. e(-> ds) b'( fs) |
    r8 ds8->( e) ds-. b'( fs) ds(-> e) |

    r8 d8->( e) d-. e(-> d) b'( f!) |
    r8 d8->( e) d-. b'( f) d(-> e) |

    r8 c8->( d) c-. d(-> c) a'( e) |
    r8 c8->( d) c-. a'( e) c(-> d) |
    r8 c8->( d) c-. d(-> c) a'( e) |
    r8 c8->( d) c-. a'( e) c(-> d) |

    r8 c8->( d) c-. d(-> c) a'( ef) |
    r8 c8->( d) c-. a'( ef) c(-> d) |

    r8 b8->( c) b-. c(-> b) gs'( d) |
    r8 b8->( c) b-. gs'( d) b(-> c) |
    r8 b8->( c) b-. c(-> b) a'( ef) |
    r8 b8->(\< c) b-. gs'( d) b(-> c)\! \bar "||" |

    %% Box B measure 33
    \mark \default
    c'1~\f |
    c4. c8( b a gs fs) |
    gs1~ |
    gs2~ gs4. a8-> |
    b16( c b a b2.)~ |
    b4. e,8(\> e d c b)\! |
    c1~ |
    c2~\> c8 a( c d)\! |
    e1~ |
    e4. g,8( e' d e c) |
    ds1~ |
    ds2~ \times 2/3 { ds4 ds-> ds-> } |
    d16(\f e d c d4~) d2 |
    \acciaccatura { d16( ds) } d4( c4~c4. c8) |
    \times 4/5 { d16 c b a gs } gs2. |
    b2 r8 d8( ds16 e f fs) \bar "||" |

    %% Box C measure 49
    \mark \default

    g2.~ g8 bf,16( a |
    gs8 a) e'8-. g( f) e r d16( e) |
    f1~ |
    f2~ f8 cs( d e) |
    f16( e f4.~) f4. fs16( g |
    af8 g) bf d g f e d |
    e1~\< |
    e1\! \bar "||" |

    %% Box D measure 57
    \mark \default
    
    a,4.\mp e8~e4 a4-. |
    a4. e8~e4 e4-. |
    fs4. b8~b4 fs4-. |
    fs4. a8~a4 fs4-. |
    a4. d,8~d4 a'4-. |
    a4. d,8~d4 d4-. |
    e4. a8~a4 e4-. |
    a8\< e' e e e e e e\! \bar "||" |

    %% Box E measure 65
    \mark \default

    r8 c,8~\mf c c~c4 r4 |
    r8 c8~ c c~c4 r4 |
    r8 b8~ b b~b4 r4 |
    r8 b8~ b b~b4 r4 |
    r8 bf8~ bf bf~bf4 r4 |
    r8 bf8~ bf bf~bf4 r4 |
    r8 e8~ e e~e4 r4 |
    r8 e8~ e e~e4 r4 |
    r8 e8~ e e~e4 r4 |
    r8 e8~ e e~e4 r4 |
    r8 ds8~ ds ds~ds4 r4 |
    r8 ds8~ ds ds~ds4 r4 |
    r8 d8~ d d~d4 r4 |
    r8 d8~ d d~d4 r4 |
    r8 d8~ d d~d4 r4 |
    r8 d8~ d d~d4 r4 |

    %% Box F measure 81
    \mark \default

    e4-> r8 c'4 r8 c8 r8 |
    c4 r8 c4 r8 c8 r8 |
    b4 r8 b4 r8 b8 r8 |
    b4 r8 b4 r8 b8 r8 |
    b4 r8 b4 r8 b8 r8 |
    d4 r8 d4 r8 d8 r8 |
    c4 r8 c4 r8 c8 r8 |
    c4 r8 c4 r8 c8 r8 |
    c4 r8 c4 r8 c8 r8 |
    c4 r8 c4 r8 c8 r8 |
    b4 r8 b4 r8 b8 r8 |
    b4 r8 b4 r8 b8 r8 |
    d4 r8 d4 r8 d8 r8 |
    d4 r8 d4 r8 d8 r8 |
    d4 r8 d4 r8 d8 r8 |
    d4 r8 b4 r8 b8 r8 |

    a8 a a a  a a a a-> \bar "|."
}

scoreAClarinetIII = \relative c'' {
    \global

    a4.\mp a8~->a4 a4-. |
    a4. e8~->e4 a4-. |
    a4. ef8~->ef4 a4-. |
    a4. ef8~->ef4 a4-. |
    a4. d,8~->d4 a'4-. |
    a4. d,8~->d4 a'4-. |
    a4. c8~->c4 a4-. |
    a4. c8~->c4 a4-. |
    g4. e'8~->e4 g,4-. |
    g4. e'8~->e4 g,4-. |
    fs4. ds'8~->ds4 fs,4-. |
    fs4. ds'8~->ds4 fs,4-. |
    f4. d'8~->d4 f,4-. |
    f4. d'8~->d4 f,4-. |
    e4. b'8~->b4 e,4-. |
    r4 r8 e8(\mf f e c' b \bar "||" |

    %% Box A measure 17
    \mark \default
    e1)~ |
    e4. e,8( d' c b a |
    b1)~ |
    b1 |
    d1~ |
    d4. e,8( c' b a gs |
    a1)~ |
    a2 r8 e( a b) |
    c1~ |
    c4. e,8( c b c a |
    b1~) |
    b1 |
    b16( as16 b2..)~ |
    b2~ b8 c( b a  |
    b1)~ |
    b1 \bar "||" |

    %% Box B measure 33
    \mark \default

    r8 e8->(\mf f) e-. f(-> e) c'( a) |
    r8 e8->( f) e-. c'( a) e(-> f) |

    r8 ds8->( e) ds-. e(-> ds) b'( fs) |
    r8 ds8->( e) ds-. b'( fs) ds(-> e) |

    r8 d8->( e) d-. e(-> d) b'( f!) |
    r8 d8->( e) d-. b'( f) d(-> e) |

    r8 c8->( d) c-. d(-> c) a'( e) |
    r8 c8->( d) c-. a'( e) c(-> d) |
    r8 c8->( d) c-. d(-> c) a'( e) |
    r8 c8->( d) c-. a'( e) c(-> d) |

    r8 c8->( d) c-. d(-> c) a'( ef) |
    r8 c8->( d) c-. a'( ef) c(-> d) |

    r8 b8->( c) b-. c(-> b) gs'( d) |
    r8 b8->( c) b-. gs'( d) b(-> c) |
    r8 b8->( c) b-. c(-> b) a'( ef) |
    r8 b8->( c) b-. gs'( d) b(-> c) \bar "||" |

    %% Box C measure 49
    \mark \default

    d4.\p d'8~d4 gs,16( a as b |
    cs4.) cs4 g8 f e |
    d4. a'8~a4 d,4-. |
    a'4. a8~a4 d4 |
    f,4. f4. b16( c d ds |
    e4.) e4 d8 c b |
    c4. d8~d4 e4 |
    d4. gs,8~gs4 b4 \bar "||" |

    %% Box D measure 57
    \mark \default

    e8( a b) e,( a) b e,( a) |
    d8 e,( a) e' d16 c b4 a8-. |
    b1~ |
    b1 |
    d,8( f a) d,( f) b d,( f) |
    c'8( d, gs) d-. c16 b a4 g8-. |
    a1 |
    a'8 g f e d c b a \bar "||" |

    %% Box E measure 65
    \mark \default

    r8 e'8->(\mf f) e-. f(-> e) c'( a) |
    r8 e8->( f) e-. c'( a) e(-> f) |

    r8 ds8->( e) ds-. e(-> ds) b'( fs) |
    r8 ds8->( e) ds-. b'( fs) ds(-> e) |

    r8 d8->( e) d-. e(-> d) b'( f!) |
    r8 d8->( e) d-. b'( f) d(-> e) |

    r8 c8->( d) c-. d(-> c) a'( e) |
    r8 c8->( d) c-. a'( e) c(-> d) |
    r8 c8->( d) c-. d(-> c) a'( e) |
    r8 c8->( d) c-. a'( e) c(-> d) |

    r8 c8->( d) c-. d(-> c) a'( ef) |
    r8 c8->( d) c-. a'( ef) c(-> d) |

    r8 b8->( c) b-. c(-> b) gs'( d) |
    r8 b8->( c) b-. gs'( d) b(-> c) |
    r8 b8->( c) b-. c(-> b) a'( ef) |
    r8 b8->( c) b-. gs'( d) b(-> c) \bar "||" |

    %% Box F measure 81
    \mark \default

    c4-> r8 e4 r8 e8 r8 |
    e4 r8 e4 r8 e8 r8 |
    fs4 r8 fs4 r8 fs8 r8 |
    fs4 r8 fs4 r8 fs8 r8 |
    f4 r8 f4 r8 f8 r8 |
    f4 r8 f4 r8 f8 r8 |
    e4 r8 e4 r8 e8 r8 |
    e4 r8 e4 r8 e8 r8 |
    e4 r8 e4 r8 e8 r8 |
    e4 r8 e4 r8 e8 r8 |
    ds4 r8 ds4 r8 ds8 r8 |
    ds4 r8 ds4 r8 ds8 r8 |
    d4 r8 d4 r8 d8 r8 |
    d4 r8 d4 r8 d8 r8 |
    e4 r8 e4 r8 e8 r8 |
    e4 r8 d4 r8 d8 r8 |
    a8 a a a a a a a-> \bar "|."
}

scoreABassClarinet = \relative c' {
    \global

    a4.\mp a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |

    g4. g8~->g4 g4-. |
    g4. g8~->g4 g4-. |
    fs4. fs8~->fs4 fs4-. |
    fs4. fs8~->fs4 fs4-. |
    f4. f8~->f4 f4-. |
    f4. f8~->f4 f4-. |
    e4. e8~->e4 e4-. |
    e4. e8~->e4 e4-. |

    %% Box A measure 17
    \mark \default

    a4.\mp a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |

    g4. g8~->g4 g4-. |
    g4. g8~->g4 g4-. |
    fs4. fs8~->fs4 fs4-. |
    fs4. fs8~->fs4 fs4-. |
    f4. f8~->f4 f4-. |
    f4. f8~->f4 f4-. |
    e4. e8~->e4 e4-. |
    e4.\< e8~->e4 e4-.\! \bar "||" |

    %% Box B measure 33
    \mark \default

    a4.\mf a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |
    a4. a8~->a4 a4-. |

    g4. g8~->g4 g4-. |
    g4. g8~->g4 g4-. |
    fs4. fs8~->fs4 fs4-. |
    fs4. fs8~->fs4 fs4-. |
    f4. f8~->f4 f4-. |
    f4. f8~->f4 f4-. |
    e4. e8~->e4 e4-. |
    e4. e8~->e4 e4-. \bar "||" |

    %% Box C, measure 49
    \mark \default

    bf'4.\p e,8~e4 f4 |
    g4. bf8~bf4 r4 |
    a4( e2) f4-. |
    cs'4( d) e( f8) r8 |
    f4. c8~c4 r4 |
    b4. f8~f4 r4 |
    r4 d'4~\< d2 |
    f4(\< d4) gs,4. r8\! \bar "||" |

    %% Box D, measure 57
    \mark \default

    c'1-> |
    c2.(\< e,4)\~ |
    ds1~ |
    ds1 |
    b'1 |
    b2.(\< d,4) |
    c1->\! |
    a8 a a a a a a a \bar "||" |

    %% Box E, measure 65
    \mark \default

    a4. a8~->a4 a4 |
    a4. e8~->e4 a4 |
    a4. ef8~->ef4 a4 |
    a4. ef8~->ef4 a4 |
    a4. d8~->d4 a4 |
    a4. d8~->d4 a4 |
    a4. c8~->c4 a4 |
    a4. c8~->c4 a4 |
    g4. e'8~->e4 g,4 |
    g4. e'8~->e4 g,4 |
    fs4. ds'8~->ds4 fs,4 |
    fs4. ds'8~->ds4 fs,4 |
    f4. d'8~->d4 f,4 |
    f4. d'8~->d4 f,4 |
    e4. b'8~->b4 e,4 |
    R1 \bar "||" |

    %% Box F, meashre 81
    \mark \default

    e'1~\mf |
    e4. e,8( d' c b a |
    b1)~ |
    b1 |
    d1~ |
    d4. e,8( c' b a gs) |
    a1~ |
    a2 r8\< e( a b)\! |
    c2.\f gs'8 b |
    \times 2/3 { a4 e d } c8\< d e g!\! |
    \times 2/3 { b4 b ds,~ } ds2 |
    ds1 |
    b'16(\f c b a b4~) b2~ |
    b2~ b8 c\f b a |
    b8 a4 gs8~gs f4  e8~ |
    e8 d4 c8~c8 b4 r8 |

    a' g f e d c b a-> \bar "|."
}

scoreAClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  midiInstrument = "violin"
} \scoreAClarinetI

scoreAClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  midiInstrument = "flute"
} \scoreAClarinetII

scoreAClarinetIIIPart = \new Staff \with {
  instrumentName = "Clarinet III"
  midiInstrument = "clarinet"
} \scoreAClarinetIII

scoreABassClarinetPart = \new Staff \with {
  instrumentName = "Bass Clar"
  midiInstrument = "saxophone"
} \scoreABassClarinet

\bookpart { 
    \header {
      title = "Libertango"
      instrument = "for Clarinet Quartet"
      composer = "Astor Piazolla"
      arranger = "Arr Roberts"
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
      title = "Libertango"
      instrument = "Bb Clarinet 1"
      composer = "Astor Piazolla"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIPart }
}


\bookpart {
   \header {
      title = "Libertango"
      instrument = "Bb Clarinet 2"
      composer = "Astor Piazolla"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIIPart }
}

\bookpart {
   \header {
      title = "Libertango"
      instrument = "Bb Clarinet 3"
      composer = "Astor Piazolla"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIIIPart }
}

\bookpart {
   \header {
      title = "Libertango"
      instrument = "Bass Clarinet"
      composer = "Astor Piazolla"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreABassClarinetPart }
}
