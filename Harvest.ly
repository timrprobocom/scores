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



prefix = {
  \time 2/2
  \tempo 4 = 120
  \set Score.markFormatter = #format-mark-box-barnumbers
  \mark \markup { Intro }
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

  s1*4 \bar "||" \mark \markup { Verse }
  s1*16 \bar "||" \mark \markup { Chorus 1 }
  s1*16 \bar "||" \mark \markup { Chorus 2 }
  s1*16 \bar "||" \mark \markup { Tag }
  s1*4 \bar "|."
}

\parallelMusic #'(clarA clarB clarC clarBass) {
% Bar 1
g'2( fs   |
d1~(     |
bf2( c   |
g'2( a    |

% Bar 2
g1~   |
d1    |
bf1~  |
g2 f2 |

% Bar 3
g1             |
df1            |
bf1            |
ef2~ ef8 f ef4 |

% Bar 4
fs2.) r4    \bar "||" |
c2.) r4     \bar "||" |
a2.) r4     \bar "||" |
d2.) r8 d8  \bar "||" |


% Bar 5
d8 r     d r      c r      c r |
bf8 r    bf r     a r      a r |
g8 r     g r      fs r     fs r |
d8. cs16 d8. cs16 d8. cs16 d8. cs16 |

% Bar 6
d8 r     d r      d4       r       |
bf8 r    bf r     bf4      r       |
g8 r     g r      g4       r       |
d8 bf4   g8~      g4       g8. a16 |

% Bar 7
d4  d df4. r8 |
bf4 bf g4. r8 |
g4 g ef4. r8 |
bf4 d bf4. g8 |

% Bar 8
r4 b c r |
r4 gs a r |
r4 f fs r |
d'2. r4 |

% Bar 9
d8 r     d r      c r      c r |
bf8 r    bf r     a r      a r |
g8 r     g r      fs r     fs r |
d8. cs16 d8. cs16 d8. cs16 d8. cs16 |

% Bar 10
d8 r     d r      d2              |
bf8 r    bf r     bf2             |
g8 r     g r      g2              |
d8 bf4   g8~      g4       d'4    |

% Bar 11
r4 e e e |
r4 bf bf bf |
r4 g g g |
c2~ c4 d |

% Bar 12
ef2.         r4 |
bf2(     a4) r4 |
g8( gf4. f4) r4 |
c2~      c4  r4 |

% Bar 13
f8 r        fs r       g r        gf r     |
ef'8. d16   ef8. d16   ef8. d16   ef8. d16 |
a8 r        af r       g r        gs r     |
c8 r        c r        c r        c  r     |

% Bar 14 (page 2)
f8 ef4 e8~    e4    ef4   |
ef8 c4 g8~    g4    a4    |
a8 a4 bf8~    bf4   f4    |
c8 f4 c8~     c4    c4   |

% Bar 15
d2        r8 f,8 bf8. d16 |
bf2       r8 f8 bf8. d16 |
f2        r8 f8  bf8. bf16 |
bf2       r8 f'8 f8.  f16 |

% Bar 16
d1 \breathe |
f1 \breathe |
bf4( c b2) \breathe |
bf4( af g2) \breathe |

% Bar 17
e8 f    g e     f2   |
c8 d    e c     d4( df) |
bf8 bf  bf bf   a4( cf) |
g8 g c, g'      f4( af) |

% Bar 18
e8 f    g e     f4( fs)\fermata   |
c8 d    e c     d2\fermata |
bf8 bf  bf bf   a4( c)\fermata |
g8 g c, g'      f4( a)\fermata |

% Bar 19
f8 e  f fs    g fs   g  e |
d8 cs d ds    e ds   e  c |
b as  b a     bf a   bf bf |
g fs  g b,    c b    c  g' |

% Bar 20
ef4\fermata  f8. ff16  ef8. d16  ef8. f16 |
f4\fermata   f,8. g16  a8. bf16  c8. d16  |
a4\fermata   r4        r2  |
c4\fermata   r4        r2  |

% Bar 21
g2    f2  |
ef2   d2  |
b2    b2  |
g2    g2  |

% Bar 22
g4  f  f  f  |
ef4 d  b  g  |
b4  b  g  b  |
g4  g  d  d  |

% Bar 23
c2~     c8. b16  c8. f16   |
e2~     e8. ds16 e8. d'16  |
bf2~    bf8. a16 bf8. bf16 |
g,2~    g8. fs16 g8.  g16  |

% Bar 24
e4(   ds   e)   r4  |
c2.             r4  |
bf4(  a    bf)  r4  |
g'4(  fs   g)   r4  |

% Bar 25
f2   ef2  |
d2   c2   |
a2   a2   |
f2   f2   |

% Bar 26
f4   ef8 ef8~ ef8. f16 ef4 |
d4   c8  f8~  f8.  d16 c4  |
a4   a8  a8~  a8.  a16 a4  |
f4   f8  c8~  c8.  f16 f4  |

% Bar 27
d4        ef        e          f       |
bf8. g16  f8. g16   bf8. g16   f8. g16 |
f4        a         g          bf      |
bf,4      c         cs         d       |

% Bar 28
g4        f         e          f       |
bf8. g16  f8 bf~    bf2                |
c4        bf        g          f       |
ef4       d         cs         d       |

% Bar 29
r4        g2       f4  |
r4        ef2      d4  |
b4. r8          b2     |
g4. r8          g2     |

% Bar 30
g4    f   f    f   |
ef4   d   b    g   |
b4    b   g    b   |
g4    g   d    d   |

% Bar 31
c2~   c8. b16    c8. f16 |
e2~   e8. ds16   e8. d'16 |
bf2~  bf8. a16   bf8. bf16 |
g,2~  g8.  fs16  g8. g16 |

% Bar 32
e2  r4 e4 |
c2  r4 cs4 |
bf2 r4 bf4 |
g2 r4 gf4 |

% Bar 33
f2  ef4  r4 |
d2  c4   r4 |
a2  a4   r4 |
f2  f4   r4 |

% Bar 34 (page 3)
f4  ef8 ef8~ ef4  f4 |
d4  c8  f8~  f4   d4 |
a4  a8  a8~  a4   a4 |
f4  f8  c'8~ c4   f,4 |

% Bar 35
d4~   d8.  d16   cs8. cs16  c4  |
bf4~  bf8. f16   g8. f16    g4  |
f4~   f8.  f16   ef8. g16   ef4 |
bf4~  bf8. bf16  a8. bf16   a4  |

% Bar 36
d4(   f   fs)  r   |
bf4(  d4~ d)   r   |
f4(   bf  c)   r   |
bf4(  bf' a)   r   |

% Bar 37 (Chorus 2)
g4   f8. f16   g4   f8. f16 |
ef4  d8. d16   ef4  d8. d16 |
b4   b8. b16   b4   b8. b16 |
g4   g8. g16   g4   g8. g16 |

% Bar 38
g8. g16   f8. f16   f4    f4   |
ef8. ef16 d8. d16   b4    g4   |
b8. b16   b8. b16   g4    b4   |
g8. g16   g8. g16   d4    d4   |

% Bar 39
c4   e    e   e8. e16 |
e'4  g    bf  g8. g16 |
bf?4 bf   c   bf8. bf16 |
g4  c    g'  c,8. c16 |

% Bar 40
e8. e16   e8. e16   e4   r4   |
d8. d16   c8. c16   g4   r4   |
bf8. bf16 bf8. bf16 bf4  r4   |
g8. g16   g8. g16   c,4  r4   |

% Bar 41
f4  ef  f  ef  |
d'4 c   d  c   |
a4  a   a  a   |
f4  f   f  f   |

% Bar 42
f8 ef4  ef8~ ef4 r4    |
d8 c4   f8~  f4  r8 d8 |
a8 a4   a8~  a4  r4    |
f8 f4   c8~  c4  r4    |

% Bar 43
d2(                cs4) r4      |
bf8. g16  f8. g16  bf4  g8. f16 |
f4(       b4       g4)  r4      |
bf2(               ef4) r4      |

% Bar 44
d8. d16    cs8. cs16   d2     |
bf8. g16   f8. g16     bf2    |
f8. f16    g8. ef16    f2     |
bf8. bf16  bf8. bf16   bf2    |

% Bar 45
g8 g4 g8     f4   f4  |
ef8 ef4 ef8  d4   g,4 |
b8 b4 b8     b4   b4  |
g'8 g4 g8    g4   d4  |

% Bar 46
g4   g8 f8~  f4  r8 f8  |
ef'4 ef8 d8~ d4  r8 g,8 |
b4   b8 b8~  b4  r8 b8  |
g4   g8 g8~  g4  r8 d8  |

% Bar 47
e8   e4 e8   e4  e4     |
d'8  d4 d8   c4  g4     |
bf8  bf4 bf8 bf4 bf4    |
g8   g4 g8   g4  c,4    |

% Bar 48
e4    e8 e8~   e4   e4   |
d'4   d8 c8~   c4   cs4  |
bf4   bf8 bf8~ bf4  bf4  |
g4    g8 g8~   g4   gf4  |

% Bar 49
f2   ef2  |
d2   c2   |
a2   a2   |
f2   f2   |

% Bar 50
r8 f4 ef8   ef4   f4  |
r8 d4 c8    f4    d4  |
r8 a4 a8    a4    a4  |
r8 f4 f8    c'4   f,4 |

% Bar 51
d4~   d8. d16   cs8. cs16  cs4  |
bf4~  bf8. f16  g8. f16    g4   |
f4~   f8. f16   ef8. g16   ef4  |
bf4~  bf8. bf16 a8. bf16   a4   |

% Bar 52
d2(  f2)  |
bf2( b2)  |
f2(  g2)  |
bf2( d2)  |

% Bar 53
r4    e8. e16  e8. e16   e4  |
r4    d8. c16  bf8. c16  d4  |
r4    bf8. a16  g8. a16  bf4 |
c4~   c8. c16   c8. c16  c4  |

% Bar 54 (Page 4)
f4   f8. f16  f8. g16   a4  |
r4   c8. d16  ef8. ef16 ef4 |
a4   a8. a16  a8. bf16  c4  |
r4   ef8. d16 c8. c16   f4  |

% Bar 55
bf4~   bf8. bf16  bf8. bf16  bf4  |
r4     d8. d16    c8. ef16   gf4  |
r4     f,8. f16   g8. c16    c4   |
f4     bf,8. bf16 ef8. g16   ef4  |

% Bar 56
bf2. r4 |
f2.  r4 |
d2.  r4 |
bf2. r4 |

}



% Clarinet I

clarI = \relative c'' {
  \set Staff.instrumentName = #"Bb Clar I "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c'' \clarA
}

% Clarinet II

clarII = \relative c' {
  \set Staff.instrumentName = #"Bb Clar II "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c'' \clarB
}

% Clarinet III

clarIII = \relative c' {
  \set Staff.instrumentName = #"Bb Clar III "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c'' \clarC
}

% Bass Clarinet

bassClar = \relative c' {
  \set Staff.instrumentName = #"Bass Clar "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  \relative c' \clarBass
}


\header {
    title = "Shine on Harvest Moon"
    composer = "Nora Bayes-Norworth"
    arranger = "Hicks / Moon"
    tagline = ""
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
