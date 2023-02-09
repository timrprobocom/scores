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
  \time 4/4
  \tempo 4 = 88
  \set Score.markFormatter = #format-mark-box-barnumbers
  \mark \markup { Medium Slow Blues }
%%  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
}

subMp = \markup { sub \dynamic mp }
ten = \markup { \italic ten }


%
% Define the parts.
%

\parallelMusic  #'(clarA clarB clarC clarBass) {
  % Pickup
  \partial 8 bs8(\f |
  \partial 8 bs8(\f |
  \partial 8 bs,8(\f |
  \partial 8 bs8(\f |

  % Bar 1
  cs8.) e16(    cs8 a8~   a2)                     |
  cs8.) e16(    cs8 a8~   a4)   g8( fs8~          |
  cs8.) e16(    cs8 a8~   a4)   cs8( c8~          |
  cs8.) e16(    cs8 a8~   a4)   ef'8( d8~         |

  % Bar 2
  r8. fs16(    a8.) b16(  c4)    b8( a~           |
  fs1) |
  c1)  |
  d1)  |
  
  % Bar 3
  a1~  |
  r4      cs4(   d4.)    ds8(    |
  r4      e,4(   fs4.)   fs8(    |
  r4 a a2 | 

  % Bar 4
  a2.)                            r8 e16( es) |
  e8. ef16)    d8( cs8~      cs4.)   e16( es) |
  g8. fs16)    f8( e8~       e4.)    e16( es) |
  a1                                          |

  % Bar 5
  fs8.( a16) b8-- b~   b2                  |
  fs8.( a16) b8-- b~   b4     es,8( fs!    |
  fs8.( a16) b8-- b~   b2                  |
  r2                   r4     cs8( d8~     |

  % Bar 6
  r8. fs16(   a8.) b16(   c4)   b8( a~     |
  fs4)        fs8. g16(   g4)   fs8( es~   |
  r8. fs16(   a8.) ds16(  d4)   cs8( c~    |
  d4~         d8.) a'16   gs4   g8( fs8~   |

  % Bar 7
  a2)_\dim                a2               |
  es2)_\dim               e2               |
  c2)_\dim                b2               |
  fs8) d4_\dim fs8        f8 g,4 f'8(      |

  % Bar 8
  a2               a4.\p\<      fs16( fss16) |
  d2               cs4.\p\<     fs16( fss16) |
  bf2              a2\p\<                    |
  e8 c4 e8)        ds8\<        b4. |

  % Bar 9
  gs8.(\!\f b16)   gs8( e8~)      e2 |
  gs8.(\!\f b16)   gs8( e8~)      e4   ef8( d~ |
  r2\!                            r4   a8( gs~ |
  r2\!                            r4   f8( e8~ |

  % Bar 10
  r8. c'16  c8. a16   c4    b8  a~  |
  d2)                 gs4   g8  fs~ |
  gs2)                fs'4  d8  cs~ |
  e2)                 a'4   gs8 g8~ | 

  % Bar 11
  a2          a2          |
  fs2         es2         |
  cs2         c2          |
  g8 a,4 g'8( fs8 d4 fs8) |

  % Bar 12
  a2          a8 r8   r4 |
  e2          e8 r8   r4 |
  b2          as8 r8  r8\f b16(^"solo" bs) |
  f8 g,4 f'8  fs8 r8  r8   b,16( bf16) |

  % Bar 13
  r2                     r4   g8(\mf fs~  |
  r2                     r4   df8(\mf c   |
  cs8.( e16)  cs8( a~    a2)              |
  a2.                         ef'8 d8~    |

  % Bar 14
  fs1) |
  c1)  |
  \times 2/3 { r8 es( fs) } \times 2/3 { a( b c~) }   c4  b8 a~ |
  d4                        fs,4                      a4  d8 a8~ |

  % Bar 15
  R1 |
  \times 2/3 { r8^"Bluesy solo"( bs cs) } \times 2/3 { e( fs a) } 
          c\uheel c\uheel c\uheel b\uheel |
  a1~ |
  a1~ |

  % Bar 16
  R1 |
  a8.( bs,16) cs8( fs~    fs2)      |
  a2. \times 2/3 { r8 e8( es } |
  a2~ a8 a4. |

  % Bar 17
  r2 r4 g8( fs~) |
  r2 r4 df8( c~) |
  fs8.) a16 b8 b8~ b2 |
  d2. ef8( d8~ |

  % Bar 18
  fs1 |
  c1  |
  \times 2/3 { r8 e,8( es) } \times 2/3 { fs( a b } c4) b8( a~  |
  d4) fs,4 a gs8( a8~ |

  % Bar 19
  \times 2/3 { r8\p\< c'8 c } \times 2/3 { c c c\f }       c16-- e-. r8   r4 |
  \times 2/3 { r8\p\< g'8 g } \times 2/3 { g g g\f }       g16-- a-. r8   r4 |
  a4)                         \times 2/3 { cs8\< cs cs\f } e16-- cs-. r8 r8 e,16( fs) |
  a1) |

  % Bar 20 -- page 2
  R1 |
  R1 |
  g8.( e16)    fs8 e8~      e4~   \times 2/3 { e8 fs( f) }  |
  a1 |

  % Bar 21
  R1 |
  R1 |
  gs8.( b16) gs8( e~  e8.) gs16-- g8( fs8~ |
  e2.                             ef'8( d~ |

  % Bar 22
  R1 |
  R1 |
  fs8.) a16(    b8 c~   c4)    b8( a~     |
  d8.)  fs16(   gs8 a8~ a4)    gs,8( a8~  |

  % Bar 23
  r2               r8\mp\< d4  r8    |
  r2               r8\mp\< a4  r8    |
  a4~ \times 2/3 { a8)\mp \<cs( a) }  d4~ \times 2/3 { d8 b( d) } |
  a2)\mp                              b2\< |

  % Bar 24
  r8 ds4 r8      r8^"Lead" e4-^\!\f  c8 |
  r8 as4 r8      r8\!      c4-^\f    g8 |
  ds4~ \times 2/3 { ds8 c( ds } e8)\!\f  gs4-^ d8-^ |
  c4~ \times 2/3 { c8 a' c } cs8\!\f d4-^ gs,!8 |

  % Bar 25
  e8.--  e16--  c8(  e8~e4)\p   f,8--  e-.  |
  b8.--  b16--  fs8( b8~b4)\p   d,8--  c-.  |
  fs8.-- fs16-- e8(  fs8~fs4)\p af,8-- fs-. |
  c8.--  c16--  a8(  c8~c4)\p   bf,8-- a-.  |

  % Bar 26
  r8.\f c'16( d8.) ds16(    e4)   c8( b~   |
  r8.\f fs16( a8.) as16(    b4)   g8( fs~  |
  r8.   e'16( fs8.) es16(   fs4)  ef8( d~  |
  r8.   a'16[( b8.) b16](   c4)   a8( gs8~ |

  % Bar 27
  b4)   e,4-^    g8--  a4-.   fs8~ |
  fs4)  e4-^     ef8-- ef4-.  d8~ |
  d4    e,4-^    a8--  a4-.   g8~ |
  gs4)  e,4-^    f'8-- f,4-.  e8~ |

  % Bar 28
  fs2             r8 d'4-.  b8-- |
  d2              r8 g4-.   fs8-- |
  g2              r8 fs'-.  d8-- |
  e8. as16 b8 e,8 r8 b''4-. gs8-- |

  %{
  b8. b16 a8( b8~ b8.) as,16( b8) e8~ |
  e8. a16 as8. b16 c4\> gs!8 fs8~\! |
  fs2\p fs8--\< a4-. fs8-- | a8-- fs4. a8-.\!\f d4-. gs,8-- |

  % Bar 33

  c8.-- c16-- a8( c8~c4.) b,16( bf16 |

  a16[) r8 a'16]( b8.) b16( c4)\> a8 a8\!~ |

  a4\p e4 f4. e8~ |

  e4 b8 e8 \f r8 b'4 gs8 |

  b8. b16( a8 b8~b8.) as16 b8 e,8~ |

  e8. a16( as8.) b16( c4) gs8( fs8~ |

  fs4) a,-^ a'->-- b,-^ |

  \times 2/3 { r8 ds( e) } \times 2/3 { as,( b f } e4 ) gs'8.( a16) |

  % Bar 41
  fs4 gs8.( a16) fs4 gs8.( a16) |

  fs8.( gs16 a8.) fs16( gs8 a8~ \times 2/3 { a8) gs( a } |

  a,4) bs8.-. cs16( e4) fs4-. |

  a,4~\< \times 2/3 { a8 cs e } g8\!\f a4-. g8-- |

  a4 fs8.( e16) fs4 as8.( b16) |

  a4 fs8.( e16) fs8.( as16) b8 r8 |

  a,4 bs8.-. cs16( e4) fs4 |

  a,4~\< \times 2/3 { a8 cs e } fs16--\! a16-. r8 r4 |

  % Bar 49

  r8 e4. r8 e,4. | r8 e4. e4 e'8 a,8~ | 
  a4~ \times 2/3 { a8 e' ef } d8 fs~ \times 2/3 { fs8 d d } |
  g,8 f'8~ \times 2/3 { f8 d8( b8) } c8 e8~ \times 2/3 { e8 g, c } |
  b2 bf4. a8 |
  \times 2/3 { r8 e'( es } \times 2/3 { fs) bs,( cs } 
  \times 2/3 { e ef d } \times 2/3 { cs b) bf\mf } |

  % Bar 55

  a4 cs4 e4 ef8( d8~ | d2.) d4 | 
  a4 bs8.-- cs16( e4) fs | a, b bs cs |
  d2. a4( | d2.) d4 | a4 bs8.-- cs16( e4) fs |
  a4 fs e cs8 d16( ds16 | e8. gs16) b,8( e8~ e4) c8( b~ |
  \times 2/3 { b8) e( gs) } a8. f16 e4 e,8 r8 |
  a4 a b b |
  bs bs8-- cs-. \times 2/3 { r8\f^"Solo" e,8( fs8) } \times 2/3 { a( b bs) } |

  % Bar 67

  cs8.( e16) cs8( a8~ a2~ | 
  a8.) fs16( a8.) b16( c4) b8 a8~ | a1~ | 
  a2 r8 a8 \times 2/3 { r8 e( es) } |
  fs8.( a16) \times 2/3 { b8( a8 b8~ } b2) |
  \times 2/3 { r8 es,( fs) } \times 2/3 { a( b c~ } c4) b8( a8~ |
  a2~ a8) a4. | 
  a2 \times 2/3 { r8 a( e) } \times 2/3 { es( fs fss) } |
  gs8.( b16) gs8( e8~ e2) | 
  r8. c'16[ c8.( a16]) c4 b8 a8~ | a2 a2 | a4. a8 r2 |

  % Bar 79
  
  a2.\mf ef'8 d~ | d1 | r8 b4. f'2 | b,4. e8~e2 |
  b2~b8. b16 f'8 e8~ | e8. a16 as8. b16 c4 gs8 fs8~ |
  fs4 a,-^ a' b,-^ | r8. as16( b8) e,8~e2 |

  % Bar 87

  \repeat percent 3 { a8.\mf e'16( fs8. e16) a,8. e'16( fs8. e16)  } |
  a,8. e'16( fs8. e16) a,8. e'16( fs8. a,16) |
  \repeat percent 2 { d8. a16( b8. a16) d8. a16( b8. a16) }
  a8. e'16(_\cresc fs8. e16) a,8. e'16( fs8. e16) |
  a,8. e'16( fs8. e16) a,8 bs'4\f( cs8) | 
  gs4. g8-- fs-- es4-. e8 |
  r8 ds4. af'4-. af8( gs~ |
  gs4)\mf a,4-^\> bf4. a8\! | 
  r8\p a'4-. gs8( g8. f16) e8.( ef16) |

  % Bar 99

  d2 r8. gs,16 a8 d8~ | d1 |
  \times 2/3 { r8 a'( as } \times 2/3 { b as a) }
    \times 2/3 { f( e d) } \times 2/3 { b( bf a) } |
  \times 2/3 { f'( e d) } \times 2/3 { f,( fs a } b4) d-. |
  g8. b16 d8 d~ d8. d,16 e8 g,8 | 
  r8. g'16( b8. cs16 d4) cs8 b~ | 
  b4~ \times 2/3 { b8 a( as } b8. a16) f8.( e16) |
  d8.( b16) bf8 a8~a2 |
  \override Glissando #'style = #'zigzag
  a4 e'8\ff a,8~a4\>\glissando af'8 g8\!\mp |
  r8.\mf\< cs16 d8. b16 d4 cs8 fs8\!\f |
  r4 a,,-^ ef'4.\mf d8~ | d1~ | d1\fermata 
  
%}


}


notation = {
  \clef treble \key a \major
  \prefix

  \partial 8 s8
  \bar "||"
  s1*12 \mark \default
  s1*12 \mark \default
  s1*8 \mark \default
  s1*8 \mark \default \bar "||" 
  s1*8 \mark \default
  s1*6 \mark \default \bar "||" 
  s1*12 \mark \default
  s1*12 \mark \default \bar "||"
  s1*8 \mark \default \bar "||"
  s1*12 \mark \default
  \key d \major
  s1*13 \bar "|."
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

  %{
  bs8(\f |
  cs8.) e16( cs8 a8~ a4) ef'8( d~ | d1) | r4 a a2 | a1 |
  r2 r4 cs8( d8~ | d4~ d8.) a'16 gs4 g8( fs8~ | fs8) d4 fs8 f8 g,4 f'8( |
  e8 c4 e8) ds8\< b4. | r2\! r4 f8( e8~ | e2) a'4 gs8 g8~ | 
  g8 a,4 g'8( fs8 d4 fs8) | f8 g,4 f'8 fs8 r8 r8 b,16( bf16) |

  % Bar 13

  a2. ef'8 d8~ | d4 fs,4 a4 d8 a8~ | a1~ | a2~ a8 a4. |
  d2. ef8( d8~ | d4) fs,4 a gs8( a8~ | a1) | a1 | e2. ef'8( d~ |
  d8.) fs16( gs8 a8~ a4) gs,8( a8~ | a2)\mp b2\< |
  c4~ \times 2/3 { c8 a' c } cs8\!\f d4-^ gs,!8 |

  % Bar 25

  c8.-- c16-- a8( c8~c4)\p bf,8-- a-. |
  r8. a'16[( b8.) b16]( c4) a8( gs8~ | gs4) e,4-^ f'8-- f,4-. e8~ |
  e8. as16 b8 e,8 r8 b''4-. gs8-- |
  b8. b16 a8( b8~ b8.) as,16( b8) e8~ |
  e8. a16 as8. b16 c4\> gs!8 fs8~\! |
  fs2\p fs8--\< a4-. fs8-- | a8-- fs4. a8-.\!\f d4-. gs,8-- |

  % Bar 33

  c8.-- c16-- a8( c8~c4.) b,16( bf16 |
  a16[) r8 a'16]( b8.) b16( c4)\> a8 a8\!~ |
  a4\p e4 f4. e8~ | e4 b8 e8 \f r8 b'4 gs8 |
  b8. b16( a8 b8~b8.) as16 b8 e,8~ | 
  e8. a16( as8.) b16( c4) gs8( fs8~ | fs4) a,-^ a'->-- b,-^ |
  \times 2/3 { r8 ds( e) } \times 2/3 { as,( b f } e4 ) gs'8.( a16) |

  % Bar 41

  fs4 gs8.( a16) fs4 gs8.( a16) |
  fs8.( gs16 a8.) fs16( gs8 a8~ \times 2/3 { a8) gs( a } |
  a,4) bs8.-. cs16( e4) fs4-. |
  a,4~\< \times 2/3 { a8 cs e } g8\!\f a4-. g8-- |
  a4 fs8.( e16) fs4 as8.( b16) |
  a4 fs8.( e16) fs8.( as16) b8 r8 |
  a,4 bs8.-. cs16( e4) fs4 |
  a,4~\< \times 2/3 { a8 cs e } fs16--\! a16-. r8 r4 |

  % Bar 49

  r8 e4. r8 e,4. | r8 e4. e4 e'8 a,8~ | 
  a4~ \times 2/3 { a8 e' ef } d8 fs~ \times 2/3 { fs8 d d } |
  g,8 f'8~ \times 2/3 { f8 d8( b8) } c8 e8~ \times 2/3 { e8 g, c } |
  b2 bf4. a8 |
  \times 2/3 { r8 e'( es } \times 2/3 { fs) bs,( cs } 
  \times 2/3 { e ef d } \times 2/3 { cs b) bf\mf } |

  % Bar 55

  a4 cs4 e4 ef8( d8~ | d2.) d4 | 
  a4 bs8.-- cs16( e4) fs | a, b bs cs |
  d2. a4( | d2.) d4 | a4 bs8.-- cs16( e4) fs |
  a4 fs e cs8 d16( ds16 | e8. gs16) b,8( e8~ e4) c8( b~ |
  \times 2/3 { b8) e( gs) } a8. f16 e4 e,8 r8 |
  a4 a b b |
  bs bs8-- cs-. \times 2/3 { r8\f^"Solo" e,8( fs8) } \times 2/3 { a( b bs) } |

  % Bar 67

  cs8.( e16) cs8( a8~ a2~ | 
  a8.) fs16( a8.) b16( c4) b8 a8~ | a1~ | 
  a2 r8 a8 \times 2/3 { r8 e( es) } |
  fs8.( a16) \times 2/3 { b8( a8 b8~ } b2) |
  \times 2/3 { r8 es,( fs) } \times 2/3 { a( b c~ } c4) b8( a8~ |
  a2~ a8) a4. | 
  a2 \times 2/3 { r8 a( e) } \times 2/3 { es( fs fss) } |
  gs8.( b16) gs8( e8~ e2) | 
  r8. c'16[ c8.( a16]) c4 b8 a8~ | a2 a2 | a4. a8 r2 |

  % Bar 79
  
  a2.\mf ef'8 d~ | d1 | r8 b4. f'2 | b,4. e8~e2 |
  b2~b8. b16 f'8 e8~ | e8. a16 as8. b16 c4 gs8 fs8~ |
  fs4 a,-^ a' b,-^ | r8. as16( b8) e,8~e2 |

  % Bar 87

  \repeat percent 3 { a8.\mf e'16( fs8. e16) a,8. e'16( fs8. e16)  } |
  a,8. e'16( fs8. e16) a,8. e'16( fs8. a,16) |
  \repeat percent 2 { d8. a16( b8. a16) d8. a16( b8. a16) }
  a8. e'16(_\cresc fs8. e16) a,8. e'16( fs8. e16) |
  a,8. e'16( fs8. e16) a,8 bs'4\f( cs8) | 
  gs4. g8-- fs-- es4-. e8 |
  r8 ds4. af'4-. af8( gs~ |
  gs4)\mf a,4-^\> bf4. a8\! | 
  r8\p a'4-. gs8( g8. f16) e8.( ef16) |

  % Bar 99

  d2 r8. gs,16 a8 d8~ | d1 |
  \times 2/3 { r8 a'( as } \times 2/3 { b as a) }
    \times 2/3 { f( e d) } \times 2/3 { b( bf a) } |
  \times 2/3 { f'( e d) } \times 2/3 { f,( fs a } b4) d-. |
  g8. b16 d8 d~ d8. d,16 e8 g,8 | 
  r8. g'16( b8. cs16 d4) cs8 b~ | 
  b4~ \times 2/3 { b8 a( as } b8. a16) f8.( e16) |
  d8.( b16) bf8 a8~a2 |
  \override Glissando #'style = #'zigzag
  a4 e'8\ff a,8~a4\>\glissando af'8 g8\!\mp |
  r8.\mf\< cs16 d8. b16 d4 cs8 fs8\!\f |
  r4 a,,-^ ef'4.\mf d8~ | d1~ | d1\fermata 
  %}

}



\header {
    title = "St Louis Blues"
    composer = "W.C. Handy"
    arranger = "Bill Holcombe"
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
      \Score tempoWholesPerMinute = #(ly:make-moment 160 8) 
    }
  }
  \layout { }
}

%\bookpart { \score { \keepWithTag #'clr1 \parts } }
%\bookpart { \score { \keepWithTag #'clr2 \parts } }
%\bookpart { \score { \keepWithTag #'clr3 \parts } }
%\bookpart { \score { \keepWithTag #'bass \parts } }
