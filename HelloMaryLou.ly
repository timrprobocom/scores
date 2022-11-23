%{
    Comments
%}
\version "2.16.0"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}


\header {
    title = "Hello Mary Lou"
    composer = "Gene Pitney"
    arranger = "David Wright"
    tagline = ""
}


prefix = {
  \time 2/2
  \tempo 2 = 120
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override BreathingSign #'text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
}

subMp = \markup { sub \dynamic mp }
ten = \markup { \italic ten }

notation = {
  \clef treble \key bf \major
  \prefix

                  \mark \markup { Verse 1 }
  s1*16 \bar "||" \mark \markup { Chorus }
  s1*16 \bar "||" \mark \markup { Verse 2 }
  s1*16 \bar "||" \mark \markup { Reprise }
  s1*16 \bar "||" \mark \markup { Tag }
  s1*12 \bar "|."
}

\parallelMusic #'(clarA clarB clarC clarBass) {
% Bar 1
bf'4 d  d  d |
d    f  f  f |
f    bf bf bf |
bf   bf bf bf |

% Bar 2
cs4 cs8 d~  d2 |
g4  bf8 f~  f2 |
bf4 g8  bf~ bf2 |
ef4 ef8 bf~ bf2 |

% Bar 3
ef4 ef ef ef |
g4  bf bf bf |
bf4 g  g  g  |
ef4 ef c  bf |

% Bar 4
ef4 ef ef  ef |
c4  c  bf  bf |
af4 af g   g  |
af4 c  ef  ef |

% Bar 5
f4 f f f8 f8~ |
d4 d d d8 d8~ |
bf4 bf bf bf8 bf8~ |
bf4 d  f  g8 bf8~ |

% Bar 6
f4 f f e8 f8~( |
d4 d c bf8 c8~ |
bf4 bf c c8 a8~( |
bf4 bf a g8 f8~( |

% Bar 7
f2 e2 |
c1    |
a2 bf2 |
f2 g2 |

% Bar 8
f2.) r4 |
c2. r4 |
a2.) r4 |
f4) ef d c |

% Bar 9
bf,4 d d d |
d,4 f f f |
f4 bf bf bf |
bf4 bf bf bf |

% Bar 10
cs4 cs8 d~  d2 |
g4  bf8 f~  f2 |
bf4 g8  bf~ bf2 |
ef4 ef8 bf~ bf2 |

% Bar 11
df4 df df ef |
g4 bf bf c |
bf4 g g g |
ef4 ef ef ef |

% Bar 12
f4 ef8 df8~df4.  df8 |
df4 c8 bf8~bf4.  bf8 |
g4  g8 g8~g4.    g8 |
ef4 ef8 ef8~ef4. ef8 |

% Bar 13
f4 f e e8 ef8~ |
d4 d d bf8 c8~ |
bf4 bf bf g8 a8~ |
f4 f g c,8 f8~ |

% Bar 14 
ef4 f  f  ef |
c4  d  d  c  |
a4  a  a  a  |
f4  f  f  f  |

% Bar 15
d2( cs2 |
bf1~    |
f2( g2  |
bf,2( ef2 |

% Bar 16
d4) bf c cs |
bf4 d, ef e |
f2) r4 g4 |
bf2) r4 a4 |

% Bar 17 (page 2)
d2 d4 ef8 d8~ |
f2 f4 g8 f8~ |
bf2 bf4 bf8 bf8~ |
bf2 bf4 bf8 bf8~ |

% Bar 18
d1 |
f1 |
bf1 |
bf2 c4 d4 |

% Bar 19
r4 g2 g4 |
r4 bf2 c4 |
r4 ef2 ef4 |
ef1       |

% Bar 20
g2.   g4 |
bf2.  bf4 |
ef2.  ef4 |
ef4 ef4 d c |

% Bar 21
f4 f8 f8~f4 f4 |
d4 d8 d8~d4 d4 |
bf4 bf8 bf8~bf4 bf4 |
bf4 d8 f8~f4 g4 |

% Bar 22
f4 f e e |
d4 d d8( c8) bf4 |
bf4 bf bf8( a8) g4 |
bf4 bf,4 c c |

% Bar 23
f2( e2 |
c1~    |
a2( bf2 |
f2 g4. g8 |

% Bar 24
f2) r4 ef4 |
c2 r4 f,4 |
a2) r4 a4 |
f4 ef d c |

% Bar 25
d2 d4 ef8 d8~ |
f2 f4 g8 f8~ |
bf2 bf4 bf8 bf8~ |
bf1~ |

% Bar 26
d1 |
f1 |
bf1 |
bf2 r4 bf4 |

% Bar 27
r4 fs4 fs8 fs4 g8~ |
r4 d'4 d8  c4  bf8~ |
f4 a4  a8  a4  d8~ |
d2     d8  d4  g8~ |

% Bar 28
g2  g4 g8 e8~ |
bf2 bf4 bf8 d8~ |
d2  d4  d8  bf8~ |
g2  g4  g8  c,8~ |

% Bar 29
e2  e4  e8 ef8~ |
d2  d4  bf8 c8~ |
bf2 bf4 g8 a8~ |
c2  c4  c8 f8~ |

% Bar 30
ef2 f8 ef4. |
c2  d8 c4.  |
a2  a8 a4.  |
f2  f8 f4.  |

% Bar 31
d2  cs8 cs4. |
bf1~         |
f2  g8  f4.  |
bf,2 ef8 ef4. |

% Bar 32
d2. r4 |
bf2. r4 |
f2. r4 |
bf2. r4 |

% Bar 33 (Verse 2)

bf4 d8 r8 d4  d8 r8  |
d,4 f4    f4  f4     |
f4 bf8 r8 bf4 bf8 r8 |
bf2       bf4 bf4    |

% Bar 34
cs4 cs8 r8  d2       |
g4  bf4     f4.  f8  |
bf4 g8 r8   bf2      |
ef2         bf8 c8 d4 |

% Bar 35
ef4 ef8 r8  ef4  ef8 r8 |
g4  bf4     bf4  bf4    |
bf4 g8 r8   g4   g8 r8  |
ef2         c4   bf4    |

% Bar 36
ef4 ef8 r8   ef2      |
c4  c4       bf4 bf4  |
af4 af8 r8   g2       |
af2          ef'8 d c4 |

% Bar 37 (page 3)
f1~( |
d4 d4 d8 d4 d8~ |
bf1~( |
bf8 bf d d f f g g |

% Bar 38
f2   e2)  |
d4 d c bf |
bf2  c2)  |
bf8 bf bf4 a g |

% Bar 39
f4 f8 r8 e4 e4 |
c1~  |
a4 a8 r8 bf4 bf |
f4.   r8 g4. g8 |

% Bar 40
f2. r4 |
c2. r4 |
a2. r4 |
f4 ef d c |

% Bar 41
bf,4 d8 d8~ d4 d4 |
d,4 f8 f8~ f4 f4 |
f4 bf8 bf8 bf4 bf8 bf8 |
bf4 bf8 bf8 bf4 bf8 bf8 |

% Bar 42
cs4 cs d2 |
g4 bf4 f2 |
bf4 g8 g8 bf8 bf8 bf4 |
ef4 ef8 ef8 bf8 c8 d4 |

% Bar 43
df4 df8 df8~df4 ef4 |
g4  bf8 bf8~bf4 c4  |
bf4 g8  g8  g4  g8 g8 |
ef4 ef8 ef8 ef4 ef8 ef8 |

% Bar 44
f4  ef       df      df |
df4 c        bf      bf |
g4  g8 g8    g8 g8   g4 |
ef4 ef8 ef8  ef8 ef8 ef4 |

% Bar 45
f4 f8 e8~e4 e4 |
d4 d8 d8~d4 bf4 |
bf2(     g2    |
bf2(     c2    |

% Bar 46
ef4 f f ef |
c4  d d c  |
a1) |
f1) |

% Bar 47
d2( cs2 |
bf1(    |
f4 f8 f8 g4 g8 g8 |
bf,4 bf8 bf8 ef4 ef8 ef8 |

% Bar 48  (Reprise)
d4) bf4 c cs |
bf4) d, ef e |
f2   r4 g4 |
bf2  f4 a4 |

% Bar 49
d2 d4 ef8 d8~ |
f2 f4 g8 f8~ |
bf2 bf4 bf8 bf8~ |
bf2 bf4 bf8 bf8~ |

% Bar 50
d2   ef4 f4 |
f1 |
bf1 |
bf2 c4 d4 |

% Bar 51
g1~  |
r4 bf2 c4 |
r4 ef2 ef4 |
ef1 |

% Bar 52
g2. g4 |
bf2. bf4 |
ef2. ef4 |
r4 ef d c |

% Bar 53
f4 f8 f8~f4 f4 |
d4 d8 d8~d4 d4 |
bf4 bf8 bf8~bf4 bf4 |
bf4 d8 f8~f4 g4 |

% Bar 54
f4 f4 e4      e4 |
d4 d4 d8( c8) bf4 |
bf4 bf bf8( a8) g4 |
bf4 bf, c       c4 |

% Bar 55
f2( e2 |
c1~    |
a2( bf2 |
f2 g4. g8 |

% Bar 56
f2) r4 ef4 |
c2  r4 f,4 |
a2) r4 a4 |
f4 ef d c |

% Bar 57
d2 d4 ef8 d8~ |
f2 f4 g8 f8~ |
bf2 bf4 bf8 bf8~ |
bf1~ |

% Bar 58
d4 d4 e8 f4. |
f2 r2 |
bf2 r2 |
bf4 bf4 c8 cs4. |

% Bar 59 (page 3)
fs2  fs8 fs4 g8~ |
r4 d'4 d8 c4 bf8~ |
r4 a4 a8 a4 d8~ |
d2    d8 d4 g8~ |

% Bar 60
g2    g4 g8 bf8~ |
bf2   bf4 bf8 d8~ |
d2    d4 d8 e8~ |
g2    g4 g8 g8~ |

% Bar 61
bf2   bf4 g8 a8~ |
d2  d4 bf8 c8~ |
e2  e4 e8 ef8~ |
g2  g4 c,8 f8~ |

% Bar 62
a2  a8 a4. |
c2  d8 c4. |
ef2 f8 ef4. |
f2  f8 f4. |

% Bar 63
af2  g8  gf4. |
bf2  a8  af4. |
d2   cs8 c4.  |
f2   e8  ef4. |

% Bar 64
f2    r4 f4 |
g2    r4 g4 |
b2    r4 b4 |
d2    r4 d4 |

% Bar 65  (Tag)
e2 e4 e8 ef8~ |
d'2 d4 bf8 c8~ |
bf2 bf4 g8 a8~ |
c2 c4 c8 f8~ |

% Bar 66
ef2. r4 |
c2.  r4 |
a2.  r4 |
f2.  r4 |

% Bar 67
ff4 ff ff ff |
df4 df df df |
bf4 bf bf bf |
gf4 gf gf gf |

% Bar 68
ef4 f2 f4 |
c4 d2 d4 |
a4 b2 b4 |
f4 g2 g4 |

% Bar 69
bf2 bf4 bf8 a8~ |
e2  d4 c8 ef8~ |
c2 e4 e8 c8~ |
g2 g4 g8 f8~ |

% Bar 70
a1 |
ef1 |
c1 |
f4 r4 g4 a4 |

% Bar 71
r4 af af af8 g8~ |
r4 f  f  f8  e8~ |
r4 d  d  d8  c8~ |
bf1~ |

% Bar 72
g4 g g g |
e4 e e e |
c4 c c c |
bf1~ |

% Bar 73
g2 g4 g8 gf8~ |
ef!2 ef4 ef8 ef8~ |
df2 df4 df8 c8~ |
bf1~ |

% Bar 74
gf2 gf8 gf4. |
ef2 ef8 ef4. |
c2  c8  c4.  |
bf1~ |

% Bar 75
bf1~ |
f1~  |
d1~  |
bf1~ |

% Bar 76
bf1 |
f1 |
d1 |
bf1 |

}



% Clarinet I

clarI = \relative c' {
  \set Staff.instrumentName = #"Bb Clar I "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c' \clarA
}

% Clarinet II

clarII = \relative c {
  \set Staff.instrumentName = #"Bb Clar II "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c' \clarB
}

% Clarinet III

clarIII = \relative c' {
  \set Staff.instrumentName = #"Bb Clar III "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c' \clarC
}

% Bass Clarinet

bassClar = \relative c' {
  \set Staff.instrumentName = #"Bass Clar "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c' \clarBass
}



%
% Put them all together.
%

parts = {
  <<
    \tag #'clr1  \new Staff  \transpose c  c  << \notation \clarI >>
    \tag #'clr2  \new Staff  \transpose c  c  << \notation \clarII >>
    \tag #'clr3  \new Staff  \transpose c  c  << \notation \clarIII >>
    \tag #'bass  \new Staff  \transpose c  c  << \notation \bassClar >>
  >>
}


%
% Define the things that print.
%

\score {
  \context StaffGroup = "quartet" \parts 
  \midi { 
    \context { 
      \Score tempoWholesPerMinute = #(ly:make-moment 160 4) 
    }
  }
  \layout { }
}

\bookpart { \score { \keepWithTag #'clr1 \parts } }
\bookpart { \score { \keepWithTag #'clr2 \parts } }
\bookpart { \score { \keepWithTag #'clr3 \parts } }
\bookpart { \score { \keepWithTag #'bass \parts } }
