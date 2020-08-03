\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { sub \dynamic mp }
rall = \markup { \italic rall. }

\parallelMusic  #'(clarA clarB clarC clarBass) {

    \time 3/2 \partial 2  g4(\p g'4~ |
    \time 3/2 \partial 2  g4(\p g'4  |
    \time 3/2 \partial 2  g4(\p g'4  |
    \time 3/2 \partial 2  g2~\p     |

    g1)    g,4( g'4 |
    f2 e2) g,4( g'4 |
    f2 e2) g,4( g'4 |
    g1     g2~    |

    a'1)   g,,4( g'4~ |
    g1 )   g,4 ( g'4 |
    a'1)   g,,4( g'4 |
    g1     g2~    |

    g1   )  g,4 g'4 |
    f2 e2)  g,4 g'4~ |
    f2 e2)  g,4 g'4 |
    g1      g2~    |

    \time 2/2 a'4 b4~b2 |
    \time 2/2 g4  a4~a2~ |
    \time 2/2 a4  b4~b2~ |
    \time 2/2 g4 r4 r4  b4~ |

    r4 b,,4\mp e b' \bar "||" |
    a1             \bar "||" |
    b1             \bar "||" |
    b1             \bar "||" |

    % Bar 6 candide

    \mark \default \key e \major
    a2.    gs4 |
    \mark \default \key e \major
    fs2(\p e2 | 
    \mark \default \key e \major
    b,1~\p |
    \mark \default \key e \major
    e,1~\p |

    \time 3/2 
    \times 2/3 { b4( a gs) } fs2. e4 |
    \time 3/2 
    d1.) |
    \time 3/2 
    b1. |
    \time 3/2 
    e1. |

    a2.  gs4 e b |
    b1. |
    cs1  b2 |
    e1.~ |

    a'8( gs e4) r4 b e b' |
    cs4( b4)~ b1 |
    a4( gs4)~ gs1 |
    e1. |

    \time 2/2
    a2.    gs4 |
    \time 2/2
    fs'2( e2 | 
    \time 2/2
    b1~ |
    \time 2/2
    e1~ |

    \time 3/2 
    \times 2/3 { b4( a gs) } fs2. e4 |
    \time 3/2 
    d1.) |
    \time 3/2 
    b1. |
    \time 3/2 
    e1. |

    cs'2.  b4 gs e |
    b2( fs'2 gs2) |
    cs2( ds2 e2) |
    e1.~ |

    cs'8( b gs2.) r4 e4\mf |
    a4( gs4~ gs1) |
    fs4( e4~ e1) |
    e2 e4( e'4 ds2) |

    e'2.  ds4 b e, |
    gs2 as2 b2 |
    e1 ds2 |
    cs1.~ |

    \times 2/3 { e'4( ds) cs } b2 r4 gs4\p |
    gs4 as4 b2 gs2 |
    e2 ds1 |
    cs2 e1 |

    \times 2/3 { cs4( as) gs } fs2 cs2 |
    cs,1.( |
    as1.( |
    fs1. |

    fs2. b,4 e b' |
    fs1) r2 |
    ds1) r2 |
    r2 b,1-- |

% Bar 18

    \time 2/2
    a2.    gs4 |
    \time 2/2
    fs2( e2) | 
    \time 2/2
    b1 |
    \time 2/2
    e,1~ |

    \time 3/2 
    \times 2/3 { b4( a gs) } fs2. e4 |
    \time 3/2 
    fs1( gs2) |
    \time 3/2 
    a1( b2) |
    \time 3/2 
    e1. |

    a4\< e' d2 cs2\~ |
    a1(\< cs2)\! |
    cs2\< d2 e2\! |
    e1.\< |

    e2.\f e4 ds cs |
    cs1.\mf |
    gs1.\mf |
    cs'1.\!\mf |

    b2 b1 |
    as2 b2\f a2 |
    ds2 b2\f b'2 |
    gs1 fs2\f |

% Bar 23 bridge to Cunegonde.

    b1.~ |
    a2( gs2) b,4 b'4 |
    b1 b,4 b'4~ |
    e1. |

    b1.\dim |
    cs1->\dim b,4 b'4 |
    b1\dim b,4 b'4 |
    r2 b'1~->\dim |

    R1. |
    b1  b,4 b'4 |
    a2 gs2 b,4 b'4 |
    b1.~ |

    b2 cs1\! \bar "||" |
    cs4 ds4~ ds1\! \bar "||" |
    b2 cs1\! \bar "||" |
    b2 r4\!  ef4(\mf^lead af4 ef'4) \bar "||" |

% Bar 27, Cunegonde.

    \mark \default \time 2/2 \key af \major
    ef,1 |
    \mark \default \time 2/2 \key af \major
    bf2. af4 |
    \mark \default \time 2/2 \key af \major
    f,2-- g2-- |
    \mark \default \time 2/2 \key af \major
    df2.( c4) |

    \time 3/2 bf2 gf2 gf2 |
    \time 3/2 gf2 df2 ef2 |
    \time 3/2 af2-- bf-- c-- |
    \time 3/2 \times 2/3 { ef4( df) c } bf2. af4 |

    af1. |
    f2 g2 ef2 |
    df2-- ef2-- c2-- |
    df2. c4 af ef  |
    
    af1. |
    f2 ef1 |
    bf2( c4) r4 ef,2-- |
    df'8( c af2) ef4 af4 ef'4 |

    \time 2/2 ef'1 |
    \time 2/2 bf2. af4 |
    \time 2/2 f,2-- g2-- |
    \time 2/2 df2.( c4) |

    \time 3/2 bf2 g2 g2 |
    \time 3/2 gf2 df'2 ef2 |
    \time 3/2 af2-- bf-- c-- |
    \time 3/2 \times 2/3 { ef4( df) c } bf2. af4( |

    af1.~ |
    f2 g2 af2 |
    df2-- ef2-- f2-- |
    f'2. ef4 c4 ) af4( |
    
    af2 af4 af'( g2 |
    bf4 c4 af2 r4 af4\f |
    g4 af4~af2 r4 af4\f |
    f'8 ef8 c2.) r2 |
    
    f2)\f g2 af2 |
    af'2. g4 ef af, |
    f'2. ef4 c af |
    f,,1.\f |
    
    af2 g1\p |
    \times 2/3 { af'4( g) f } ef2. c4\p |
    \times 2/3 { f'4( ef) df } c2. c4\p |
    f1. |
    
    
    d\p |
    \times 2/3 { d2 c4 } bf2 f2 |
    \times 2/3 { f4( d) c } bf2 f2 |
    bf1.\p |

    ef1 ef2-- |
    g2. ef4 af ef' |
    bf2. ef,4 af ef' |
    r2 ef1-- |
    
    \time 2/2 f,2-- g2--  |
    \time 2/2 df2. c4 |
    \time 2/2 df2. c4 |
    \time 2/2 af1-- |
    
    \time 3/2 af2-- bf2-- c2-- |
    \time 3/2 \times 2/3 { ef4( df) c } bf2. af4 |
    \time 3/2 \times 2/3 { ef4( df) c } bf2. af4 |
    \time 3/2 af1. |
    
    % Bar 41
    
    df2--\< ef-- f-- |
    df4\< f4 ef2 df2 |
    df4\< af'4 gf2 f2 |
    af1.\< |
    
    r4 c4~\!\f c1 |
    f2.\!\f  f4 ef4 df4 |
    af2.\!\f af4 g4 f4 |
    r4 f4~\!\f f1 |
    
    g1 ef4 ef'4 |
    c1 bf2 |
    ef2 ef1 |
    c1 bf2 |
    
    df2 c2 ef,4-> ef'4-> |
    ef1 ef2 |
    ef1 ef2 |
    af1. |
    
    f4 g4 r4 g4 c g'4 \bar "||" |
    f4 f4~f1   \bar "||" |
    f4 g4~g1   \bar "||" |
    ef'2 d1     \bar "||" |

% Bar 45, Company joins.

    \tempo Maestoso \key c \major
    \time 2/2 f2. e4 |
    \tempo Maestoso \key c \major
    \time 2/2 d2. c4 |
    \tempo Maestoso \key c \major
    \time 2/2 a,,2-- b2-- |
    \tempo Maestoso \key c \major
    \time 2/2 r4 c2 c4~ |

    \time 3/2 \times 2/3 { g4( f) e } d2. c4 |
    \time 3/2 \times 2/3 { d2 c4 } bf2. c4 |
    \time 3/2 c2-- d2-- e2-- |
    \time 3/2 c4 c2 c2 c4~ |
    
    f2. e4 c4 g4 |
    d2 g,2 e'4 c4 |
    f2-- g2-- a2-- |
    c4 g2 g2 g4~ |   
    
    f'8( e) c2 g4 c g' |
    c4( e2)   g,4 c g' |
    b2-- a2-- g,2-- |
    g4 g2 g2 c4~ |
 
    \time 2/2 f2. e4 |
    \time 2/2 d2. c4 |
    \time 2/2 a2-- b2-- |
    \time 2/2 c4 c2 c4~ |

    \time 3/2 \times 2/3 { g4( f) e } d2. c4 |
    \time 3/2 \times 2/3 { d2 c4 } bf2. c4 |
    \time 3/2 c2-- d2-- e2-- |
    \time 3/2 c4 c2 c2 c4~ |

    a'2. g4 e c |
    f2. e4 c g |
    f2-- g2-- a-- |
    c4 g2 g2 g4~ |
    
    
    a'8( g e4~e2) r4 c4\ff |
    f'8( e c4~c2) r4 c4\ff |
    b2-- c2-- r4 c4\ff |
    g4 g2 c4 b2 |
    
    % A capella section bar 54.
    
    a'1 g2 |
    c'2. b4 g c, |
    e1 e2 |
    c2. b'4 g c, |
    
    \times 2/3 { a2 a4 } g4 e fs g |
    \times 2/3 { c'4( b) a } g2. b4 |
    \times 2/3 { e2 e4 } b4 b4 b4 e4 |
    \times 2/3 { c'4( b) a } g2. b4 |    
    
    \times 2/3 { a4( fs) e } d2 a2 |
    \times 2/3 { d2 a4 } \times 2/3 { a4( fs) e } d4 d4 |
    \times 2/3 { fs2 d4 } \times 2/3 { d4( a) g } fs4 fs4 |
    \times 2/3 { d2 a4} fs2 d2 |
    
    d2. g,4-> c-> g'-> |
    b2. g4-> c-> g'-> |
    g2.  g4-> g-> c-> |
    g,2. r4 r4 g4-> |
    
    \time 2/2 f2. e4 |
    \time 2/2 d2. c4 |
    \time 2/2 g4-> g'-> f-> e-> |
    \time 2/2 c4-> g'-> f-> e-> |
    
    \time 3/2 \times 2/3 { g4( f) e } d2. c4 |
    \time 3/2 \times 2/3 { d2 c4 } bf2. bf4 |
    \time 3/2 bf2 \times 2/3 { bf4( a) g } f4 g4 |
    \time 3/2 bf2 \times 2/3 { bf4( a) g } f4 g4 |
    
    f4 c'4 bf2 a2 |
    c4 f4 g2 f2 |
    f4 a4 g2 f2 |
    a4 c4 bf2 a2 |
    
    c2.\ff\fermata e,4 e4 fs4 |
    a2.\ff\fermata c,4 c4 c4 |
    e2.\ff\fermata c4 b4 a4 |
    e2.\ff\fermata e'4 e4 fs4 |
    
    g2_\rall g1->\< |
    e1_\rall f2->\< |
    b2(_\rall e2) f->\< |
    e1_\rall d2->\< |
    
    g1.\!\fff~ |
    f2\!\fff-> e1-> |
    g1\!\fff g,4 g'4 |
    c1.\!\fff |
    
    g1 r4 g,4 |
    a1 r4 g,4 |
    a1 r2 |
    r2 f2 r2 |
    
    c4-> g'-> f-> e-> d-> c-> |    
    c4-> g'-> f-> e-> d-> c-> |
    r4 g-> c-> g'-> f-> e-> |
    r4 c4~-> c1 |
    
    bf2-> d2-> f-> |
    f2-> bf2-> d,-> |
    d-> f,-> bf-> |
    bf2-> d2-> f-> |

    c'1.\fermata \bar "|." |
    g1.\fermata \bar "|." |
    e1.\fermata \bar "|." |
    c1.\fermata \bar "|." |
}



\header {
  title = "Make Our Garden Grow from \"Candide\""
  instrument = "Clarinet quartet"
  composer = "Bernstein"
  arranger = "Arr Roberts"
  tagline = ##f
}



prefix = {
  \time 3/2
  \tempo "Andante moderato" 2=60
  \clef treble \key c \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \set Score.markFormatter = #format-mark-box-letters
}


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

