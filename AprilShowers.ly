%{
    Comments
%}
\version "2.12.3"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

\header {
    title = "April Showers"
    arranger = "Arr Robert Elkjer"
}




prefix = {
  \time 4/4
  \tempo 4 = 186
  \override Staff.TimeSignature #'stencil = ##f
  \override Staff.TimeSignature #'style = #'()
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
}

subMp = \markup { sub \dynamic mp }


%
% Define the parts.
%

notation = {
  \clef treble \key a \major
  \prefix

  \repeat volta 2 { s1 s1 }
  \alternative { { s1 s1 } { s1 s1 } }
  \bar "||" \mark \markup{ \box A }

  % Letter A

  s1*16
  \bar "||" \mark \markup{ \box B \musicglyph #"scripts.segno" }
  s1*16
  \bar "||" \mark \markup{ \box C }
  s1*16
  \bar "||" \mark \markup{ \box D  }
  s1*16
  \bar "||" \mark \markup{ \box E }
  s1*16
  \bar "||" \mark \markup{ \box F }
  s1*12
  \bar "||" \mark \markup { \musicglyph #"scripts.coda" Coda }
  s1*14
  \bar "|."
}



% Clarinet I

clarI = \relative c' {
  \set Staff.instrumentName = #"Bb Clar I "
  \set Staff.midiInstrument = #"clarinet"

  \prefix

  \repeat volta 2 { R1 R1 }
  \alternative { { R1 R1 } { R1 r4. e8 ds4( e4) } }

  % Letter A

  b'4. b8~b2~ | 
  b4 r8 e,8 ds4 e4 | cs'1 | r4. e,8( fs e ds e) | d'4. d8~d2~ | 
      d4 r8 gs,8 fss4 gs4 | e'1 | r8 cs4.-- d4-. ds4-. |

  e4. g,8~g2 | r8 e'4. d4 cs8 d8~ | d1 | r4. fs,8 es4 fs4 |
    cs'4-.\< fs8 fs r cs r gs'\! | r gs4. fs4( cs4) | e-.\> ds8 d r cs r b\! |

  % Page 2

  r4. e,8 ds4( e4 ) |
  
  % Letter B

  b'4. b8~b2~ | b4 r8 e,8 ds4 e4 | cs'1 | r4. e,8( fs e ds e) |
    cs'4. cs8~cs2 | r8 fs,8( es fs) fs'4( e4) |

  d1 | r8 fs,8( gs as b cs d ds) | e4-. d8 e r d r e | r d4. a4( b) |
    cs4-. e8 a, r b r cs~ | cs2. a4-. |
    fs4-- gs8 fs r gs r fs |

  r8 e4. b'4( cs) | a4-^ r8 a8-^ r4 a4-^ | r8 e( fs gs a b cs d)  |
  
  % Letter C

  e4( fs8 e~) e2~ | e2 r4. a8 | gs4-- a8 fs r gs r e | r8 e,( fs gs a b cs e) |

  cs4. cs8~cs2 | r8 cs( d e g f e d) | cs4-. e8 b r e r a, | r1 |
    r8 fs( g as b cs d e) | fs( g e fs~) fs4 e8 d | cs4-. cs8 d r d r cs |

  % Page 3

  r8 d4. cs4-. b-. | ds, r4 r2 | r2 r8 es'8\< fs gs\! | a \mf gs r fs r f r e |
  r2 cs8( \mp b a fs) |

  % Lettter D

  e4. \mp e8~e2 | r8 b'( c b a f e d |
  cs4.) cs8~cs2~ | cs2. r4 | r8 cs8( bs cs) g'( fs g) es( | 
  e es) fs( e fs) as( a as) | e'4-. es,8( fs) \times 2/3 { e'( f e) } ds-. d-. |
    r8 fs,-- b-- cs--\< d-- es-- fs-- gs--\! | a4-^_\subMp r4 r8 cs,8( d e) |
  f4-. c8 b~( b4 a) | gs'8-- e-. r gs, r b r as~ | as4. fs'8~fs2 |
    fs8 d r fs, r a r b | c4--\> e8 cs r e,( ds e) | a1~ | a4 \! r2. |
  
  % Letter E

  a4 \pp a4_"stacc."  r8 a r4 | gs4 r2. | r4 e r8 b' r4 | a r2. |
    cs4 cs r8 cs r4 | b4 r2. | r2 d4 r | cs r2. |

  % Page 4

  b1( | as1) | b1~ | b1 | cs4 r2. | R1 | e4-. ds8 d r cs r b | 
    r4. e,8 ds4 e4 |

  % Letter F - new section.

  b'4. b8~b2~ | b4 r8 e,8 ds4 e4 | cs'1 | r4. e,8( fs e ds e) |
    cs'4. cs8~cs2 | r8 fs,8( es fs) fs'4( e4) |

  d1 | r8 fs,8( gs as b cs d ds) | e4-. d8 e r d r e | r d4. a4( b) |
    cs4-. e8 a, r b r cs~ | cs2. a4-. |

  % Coda

  fs4-- gs8 fs r gs r fs |
  r8 e4. b'4( cs | \appoggiatura { d16[ ds] } e1)~ | e1 |
    fs,4-- gs8 fs r gs r fs | r e4. b'4( cs4 | \appoggiatura { b16[ bf] } a1)~ |
  a1~ | a1~ | a1 | a4\pp r4 r8 d ds e | r2 r8 fss gs a |
    r8\f e d bf f ds e a-^ | r8 a,-^ r2. \bar "|."
}

% Clarinet II

clarII = \relative c'' {
  \set Staff.instrumentName = #"Bb Clar II "
  \set Staff.midiInstrument = #"clarinet"

  \prefix

  \repeat volta 2 { a4 a4 r8 a8 r8 gs8 | r8 gs8 r8 gs8 gs4 gs4 }
  \alternative {
    { gs4 gs4 r8 gs8 r8 fs8 | r8 fs8 r8 fs8 fs4 fs4 }
    { gs4 gs4 r8 gs8 r4 | fs4\mp r4 r2 }
  } |

  % Letter A

  a4 a r8 a r gs | r gs r gs gs4 gs | gs4 gs r8 gs r fs | r fs r fs fs4 fs |
  a4 a r8 a r gs | r gs r gs gs4 gs | gs4 gs r8 gs r fs | r8 gs4.-- a4-. as4-. |

  b4 b r8 b r as | r as r as as4 as | as4 as r8 as r a | r a r a a2 |
    d4-.\< cs8 cs r cs r cs\! | r cs4. cs4( a4) | a4-.\> a8 a r a r a\! |

  % Page 2

  r1 |

  % Letter B

  a4 a r8 a r gs | r gs r gs gs4 gs | gs4 gs r8 gs r fs | r fs r fs fs4 fs |
    b4 b r8 b r as | r as r as as4 as | 

  as4 as r8 as r a | r a r a a2 | a4-. r8 a r4 r8 c8 | r8 a4. f2 |
    gs4-. gs8 fs r fs r fs~( | fs2 f2)  |
    e4-- e8 ds r ds r d |

  r8 d4. a'4( gs) | b,-^ r8 bs-> r4 cs-^ | r1 |
    
  % Letter C

  a'4 a r8 a r gs | r gs r gs gs4 gs | gs4 gs r8 gs r fs | r fs r fs fs4 fs |
  a4 a r8 a r gs | r gs r gs gs4 gs | gs4 gs r8 gs r fs | r fs r fs fs4 fs |
    e8-. ds( e fs g as b4) | ds4. d8~d2 | as4 as r8 a r gs |

  % Page 3

  r8 g4. fs4-. fs-. | b,4 r4 r2 | r1 | a'8 b r d r c r d | r1 |

  % Letter D

    a4 a r8 a r gs | r gs r gs gs4 gs | 
  gs4 gs r8 gs r fs | r fs r fs fs4 fs | b4 b r8 b r as | r as r as as4 as | 
    as4 as r8 as r a | r a r a a--\< as-- b-- cs--\! | d4-^_\subMp r4 r8 gs,( a b) |
  c4-. a8 a~a2 | e'8-- b-. r a r gs r gs~ | gs4. d'8~d2 | 
    d8 a r d r cs r4 | a4.\> gs8 r2 | r4 d2. \! | cs4-. r2. |

  % Letter E

  fs4\pp fs_"stacc." r8 fs r4 | es4 r2. | r4 e4 r8 gs8 r4 fs4 r2. |
      a4 a4 r8 a8 r4 | gs4 r2. | r2 a4 r4 | a4 r2. |

  % Page 4

  gs1~ | gs1 | fs2( fss2 | gs1) | a4-. r2. | R1 | R1 | R1 |

  % Letter F - new section.

  a4 a r8 a r gs | r gs r gs gs4 gs | gs4 gs r8 gs r fs | r fs r fs fs4 fs |
    b4 b r8 b r as | r as r as as4 as | 

  as4 as r8 as r a | r a r a a2 | a4-. r8 a r4 r8 c8 | r8 a4. f2 |
    gs4-. gs8 fs r fs r fs~( | fs2 f2)  |

  % Coda

   e4-- e8 ds r ds r d |
    r8 d4. gs4-- gs-- | g-- g8 b r g' r fs | r g,4. fs4-. e-. | d1 |
    d2 d2 | fs4-. fs4-. r8 fs r f |
  r f r f f4-. f4-. | e4 e4 r8 e r ds | r ds r ds d4 d4 | d4 r4 r4. d'8 |
    r2. r8 b8 | r8 e d bf f ds e fs-^ | r8 a,8 r2. \bar "|."
}

% Clarinet III

clarIII = \relative c' {
  \set Staff.instrumentName = #"Bb Clar III "
  \set Staff.midiInstrument = #"clarinet"

  \prefix

  \repeat volta 2 { d4 d r8 d r d | r d r d d4 d4 }
  \alternative {
    { cs4 cs r8 cs r cs | r cs r cs cs4 cs4 }
    { cs4 cs4 r8 cs8 r4 | cs4 r4 r2 }
  } |

  % Letter A

  d4 d r8 d r d | r d r d d4 d4 | cs4 cs r8 cs r cs | r cs r cs cs4 cs4 |
    d4 d r8 d r d | r d r d d4 d4 | cs4 cs r8 cs r cs | r e4.-- fs4-. fss4-. |

  e4 e r8 e r e | r e r e e4 e | d d r8 d r d | r d r d d2 |
    ds4-.\< a'8 a r a r a\! | r a4. a4( ds,) | d4-.\> e8 fs r fs r d\! |

  % Page 2

  r1 |

  % Letter B

  d4 d r8 d r d | r d r d d4 d4 | cs4 cs r8 cs r cs | r cs r cs cs4 cs4 |
    e4 e r8 e r e | r e r e e4 e4 |
  d4 d r8 d r d | r d r d d2 | d4-. r8 e8 r4 r8 f8 | r8 f4. b,2 |
    e4-. e8 cs r cs r cs~( | cs2 b2) |
    b2( a2) |
  a2 d4-- d-- | d4-^ r8 ds-^ r4 e4-^ | r1 |

  % Letter C

  d4 d r8 d r d | r d r d d4 d4 | cs4 cs r8 cs r cs | r cs r cs cs4 cs4 |
  d4 d r8 d r d | r d r d d4 d4 | cs4 cs r8 cs r cs | r cs r cs cs4 cs4 |
    b8-. as( b ds e fs g4) | as4. as8~as2 | d,4 d r8 d r d |

  % Page 3

  r8 d4. d8( b cs d) | ds4 r4 r2 | r1 | d8\mf e r fs r a r a | r1 |

  % Letter D

    d,4\mp d r8 d r d | r d r d d4 d4 | 
  cs4 cs r8 cs r cs | r cs r cs cs4 cs4 | e4 e r8 e r e | r e r e e4 e4 |
    d4 d r8 d r d | r d r d d--\< cs-- d-- es--\! | fs4-^_\subMp r4 r8 es( fs g) |
  a4-. f8 f~f2 | b8-- gs-. r b, r e r e~ | e4. as8~as2 | a8 fs r a, r d r4 | 
    d4.\> d8 r2 | r4 f,2. \! | e4-. r2.  |

  % Letter E

  d'4\pp d4_"stacc." r8 d r4 | d r2. | r4 e4 r8 e r4 | e4 r2. |
    fs4 fs r8 fs r4 | es4 r2. |  r2 f4 r4 | e4 r2. |

  % Page 4

  e1~ | e1 | d1~ | d1 | ds4-. r2. | R1 | R1 | R1 |

  % Letter F - new section.

  d4 d r8 d r d | r d r d d4 d4 | cs4 cs r8 cs r cs | r cs r cs cs4 cs4 |
    e4 e r8 e r e | r e r e e4 e4 |
  d4 d r8 d r d | r d r d d2 | d4-. r8 e8 r4 r8 f8 | r8 f4. b,2 |
    e4-. e8 cs r cs r cs~( | cs2 b2) |

  % Coda

   b2( a2) | a2 d4-- d4-- |
    b4-- b8 e r b' r as | r e4. e4-. as,-. | a1 | gs1 | cs4-. cs-. r8 cs r c |
  r c r c c4-. c4-. | b b r8 b r as | r as r as as4 as4 | a4\pp r4 r4. bf'8 |
    r2. r8 fs8 | r8\f e, f bf d ds e e-^ | r8 a,-^ r2. \bar "|."
}

% Bass Clarinet

bassClar = \relative c' {
  \set Staff.instrumentName = #"Bass Clar "
  \set Staff.midiInstrument = #"clarinet"

  \prefix

  \repeat volta 2 { b4. b8 f'4. f8 | e4. e8 bf4. bf8 }
  \alternative {
    { a4. a8 e'4. e8 | a,4. a8 e'4 a, }
    { a4. a8 e'4. e8 | a,4 r4 r2 }
  } |

  % Letter A

  b4. b8 f'4. f8 | e4. e8 bf4. bf8 | a4. a8 e'4. e8 | a,4. a8 e'4 a, |
  b4. b8 f'4. f8 | e4. e8 bf4. bf8 | a4. a8 e'4. e8 | a,8 a4.-- b4-. bs4-. |

  cs4. cs8 g'4. g8 | fs4. fs8 fs,4. fs8 | b4. b8 fs'4. fs8 | b,4. b8 fs'4( b,4)|
    b4-. ds'8 ds r ds r es | r e4. ds4( fs,4) | b,4-. cs8 d r ds r e |

  % Page 2

  r1 |

  % Letter B

  b4. b8 f'4. f8 | e4. e8 bf4. bf8 | a4. a8 e'4. e8 | a,4. a8 e'4 a, |
    cs4. cs8 g'4. g8 | fs4. fs8 as,4. as8 |
  b4. b8 fs'4. fs8 | b,4. b8 fs'4 b,4 | b4-. r8 cs r4 r8 d | r8 b'4. g2 |
    a,2 e'2 | ds2( d2) | cs2( c2) | 

  b2 e,2 | g4-^ r8 gs-^ r4 a4-^ | r1 |
 
  % Letter C

  b4. b8 f'4. f8 | e4. e8 bf4. bf8 | a4. a8 e'4. e8 | a,4. a8 e'4 a, |
  b4. b8 f'4. f8 | e4. e8 bf4. bf8 | a4. a8 e'4. e8 | a,4. a8 e'4 a, |
    cs4-. r2. | fs4. e'8~e2 | b4. b8 fs4. fs8 |

  % Page 3

  b,4. b8 fs'4-- fs-- | b,4 cs8 css ds fs a cs | es fs g fs r2 |
    b,,8 cs r d r ds r e | r1 |

  % Letter D

    b4. b8 f'4. f8 | e4. e8 bf4. bf8 |
  a4. a8 e'4. e8 | a,4. a8 e'4 a, | cs4. cs8 g'4. g8 | fs4. fs8 as,4. as8 |
    b4. b8 fs'4. fs8 | b,4. b8 fs'4.-.\< fs8-. \! | b,-^ as( b cs d4-.) r4 |
  d4-. a'8 g~g2 | cs,4. cs8 g4. g8 | fs4. fs8 c'4. c8 | 
    b4. b8 fs'4. fs8 | e4. \> e8 r2 | r4 bf2. \! | a4-. r8 e'(\mp ds4 e4) | 
 
  % Letter E

  b'2\mp^lead b2~ | b4 r8 e,8( ds4 e) | cs'1 | r4. e,8( ds4 r4) | d'2 d2~ |
    d4 r8 gs,8 fss4 gs8 e'8~ | e1 | r8 cs4. d4-. e-. |

  % Page 4

  e4. g,8~g2 | r8 e'4. d4-. cs8 d~ | d1 | r4. fs,8( es4 fs4) |
    cs'4-. fs8 fs r cs r cs | r8 fs4. fs4-.\> cs4-. | e-. es8 fs r fss r gs \! |
    R1 |

  % Letter F - new section.

  b,,4. b8 f'4. f8 | e4. e8 bf4. bf8 | a4. a8 e'4. e8 | a,4. a8 e'4 a, |
    cs4. cs8 g'4. g8 | fs4. fs8 as,4. as8 |
  b4. b8 fs'4. fs8 | b,4. b8 fs'4 b,4 | b4-. r8 cs r4 r8 d | r8 b'4. g2 |
    a,2 e'2 | ds2( d2) |

  % Coda

   cs2( bs2) | b2 e4( d4) |
    cs4. cs8 g'4. g8 | fs4. fs8 cs4-. fs,4-. | b4. b8 b4. b8 | e4. e8 e4. e8 |
    ds4. ds8 ds4. ds8 |
  d4. d8 d4. d8 | cs4. cs8 cs4. cs8 | c4. c8 c4. c8 | b4 r4 r4. f'8 |
    r2. r8 cs8 | r8 e f bf d ds e cs-^ | r8 a,8-^ r2. \bar "|."
}


% try a bf  and a c'


parts = {
  <<
    \tag #'clr1  \new Staff  \transpose a c' << \notation \clarI >>
    \tag #'clr2  \new Staff  \transpose a c' << \notation \clarII >>
    \tag #'clr3  \new Staff  \transpose a c' << \notation \clarIII >>
    \tag #'bass  \new Staff  \transpose a c' << \notation \bassClar >>
  >>
}

\score {
  #(set-global-staff-size 14.14 )
  << \context StaffGroup = "quartet" \parts >>
  \midi { 
    \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 8) }
  }
  \layout {
    \context { \RemoveEmptyStaffContext }
  }
}

\bookpart { \score { \keepWithTag #'clr1 \parts } }
\bookpart { \score { \keepWithTag #'clr2 \parts } }
\bookpart { \score { \keepWithTag #'clr3 \parts } }
\bookpart { \score { \keepWithTag #'bass \parts } }
