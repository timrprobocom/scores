%{
    Comments
%}
\version "2.12.3"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    ragged-last-bottom = ##t
}

\header {
    title = "What You Own"
}


right = \relative c' {
  \clef treble \key a \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4

  \bar "|:"
  r4 r8 e8~ e8~ <e b>8~ <e b a>4~ | <e b a>1 |
  r8 e,8~ <e a>8~ <e a b>8~ <e a b>2~ | <e a b>1 \bar ":|"

  cs''4 b cs e | R1 | d4 cs d cs~( | cs16 b16 a8~ a4) r2 |
  cs4 b cs e | R1 | d4. cs8 d8 cs4 b8~( | b4. cs16 b16 a2) |

  % Page 82

  cs4 b cs e | R1 | cs4 d cs b | 
  R1 | cs4 d8 cs~ cs4 cs4 | d4. cs8~cs4 b4~ |
  <b g d>4. <g d>8~<g d>4 <g d>4 | r4 r8 a8 b a b cs | 
    <a b e>4. <e cs'>8~<e cs'>4 <e a>4 |
  r4 <e cs'>8 <e cs'> <fs d'> <e cs'> <d b'> <cs a'> |
    gs' a, b <cs a'>~<cs a'>4 <a e' fs>4~ | <a e' fs>8 e'16 d r8 a'8 b a b cs |

  % Page 83 - bar 25

  <e b a>4. <cs e,>8~<cs e,>4 <cs e,>4 |
    r4 <cs e,>8 <cs e,> <d fs,> <cs e,> <b d,>4~ |
    <b d,>8 <c e,> <a c,>4~<a c,>8 b, cs e~ |

  e8 c' b c b a b cs | <e b a>4. <cs e,>8~<cs e,>4 <cs e,>4 |
    r4 <cs e,>8 <cs e,> <d fs,> <cs e,> <b d,> <a cs,> |
  gs8 a, b <cs a'>~ <cs a'>4 <a e' fs>4~ | <a e' fs>8 e'16 d16~d4 a8 d8 e4 |
    \times 2/3 { r4 gs, cs } \times 2/3 { r4 a d } |
  <e b>4 <e b>4 \times 2/3 { cs'4 b a~ } | a4 <e b a>4 r8 <e b a>8~<e b a>4 |
    r4 <e b a>4 r8 <e b a>8~<e b a>8 a \bar "||"

  % Page 84 - bar 37

  e'4 e8 e8 e d4 cs8~ | cs8 a4. r4 cs8 cs8 | d4 d8 cs8 d8 cs4 b8~ |
  b4. cs16 b a4. cs8 | cs4 e8 a8~a8 fs4 fs8~ | fs8 e4 e8~e16 d16 cs8 cs cs |
  d4. cs8 d cs4 b8~ | b4. cs16 b a2 | r4 e'8 e~e d cs4 |
  cs4 a2 d4 | cs4 d8 cs8~cs a4 b8 | b4 cs4 r4 cs4 |

  % Page 85 - bar 49

  d4 cs d <cs gs> | <d a>4. <cs a>8~<cs a>4 <b g>4~ | 
    <b g>4. <g d>8~<g d>4 <g d>4 |

  r4 r8 a8 b a b cs | <a b e>4. <e cs'>8~<e cs'>4 <e a>4 |
  r4 <e cs'>8 <e cs'> <fs d'> <e cs'> <d b'> <cs a'> |
    gs' a, b <cs a'>~<cs a'>4 <a e' fs>4~ | <a e' fs>8 e'16 d r8 a'8 b a b cs |
    <e cs>4. <cs a>8~<cs a>4 <a e>4 | 
  r4 <cs a>8 <cs a> <b d> <cs a> <b gs> <c a>~ | <c a>4 <a f>2. |
  r8 <a e'>8 <b e> <a e'> <b e> <a e'> <b e> <cs e> |

  % Page 86 - bar 61

  <e a>4. <cs e>8~<cs e>4 <a e> |
    r4 <cs e>8 <cs e> <d fs> <cs e> <b d> <a cs> | 
    <gs b>4. <a cs>8~<a cs>4 <fs a>4~ |
  <fs a>16 <e gs> <d fs>8~<d fs>4 a8 d8 e4 | 
    \times 2/3 { r4 gs, cs } \times 2/3 { r4 a d } |
    <e b>4 <e b> \times 2/3 { <e' cs>4 <d b> <cs a>~ } |
  <cs a>4 <cs a>4~<cs a>8 <e, b a>8~<e b a>4 | r4 <e b a>4~<e b a>4 <e' cs>4 |
    <fs d>4 <e cs>4 r8 <fs a>8 <e cs> <d b>~ |
  <d b>4. <cs a>8 r4 <fs d>8 <fs d>8 | <e cs>4 r8 <fs d>8~<fs d>8 <e cs> r4 |
    r8 <fs d>4 <e cs>8~<e cs>4 r4 |
 
  % Page 87 - bar 73

  <fs d>4 <e cs> <fs d> <e cs> | <d b>4. <cs a>8 r4 <e cs>4 | 
    <fs b,>4. <e b>8~<e b>2 |
  <e, b>2 <e b>8 r8 <e b>8 r8 \bar "||"
    <a fs>8 cs, <gs' fs> cs, <a' fs> cs, <gs' fs> cs, |
    <a' fs>8 cs, <gs' fs> cs, <b' fs> cs, <b' fs> cs, |
  <a' fs>8 cs, <a' fs>8 gs <fs cs> a, <fs' cs> a, |
    <a' fs>8 cs, <gs' fs> cs, <a' fs> cs, <gs' fs> <gs cs,> |
  <a fs>8 cs, <gs' fs> cs, <a' fs> cs, <a' fs> gs |
    <a fs>8 cs, <gs' fs> <a fs> cs, <b' fs> cs, fs |

  % Page 88 - bar 83

  <a fs>8 cs, <gs' es> cs, <a' fs> cs, <gs' es> cs, |
  <a' fs>8 cs, <gs' es> cs, <a' fs> cs, <gs' es> cs \bar "||"
  \key b \major
  <ds b gs>8 ds, <as' gs> cs <ds b> ds, <cs' as> ds, |
    <ds' b>8 ds, gs <cs as> ds, gs b ds, |
  <ds' b>8 ds, <as' gs>16 e' ds8 <b gs> ds, gs ds |
    <b' gs> ds, <as' gs> ds, <b' gs> ds, <as' gs> cs |
  <ds b> ds, <cs' as> ds, <ds' b> ds, <cs' as> ds, |
    <b' gs> ds, <cs' as> ds, as' ds, <ds' gs,> ds, |
    <gs as> ds <gs as> ds <gs as> ds <gs as> ds |
 
  % Page 89 - bar 92

  <fss as> ds <fss as> ds <gs as> ds <fss as> ds |
    \times 2/3 { <ds b'>4 <cs as'> <b gs'> } <ds b'>8 <cs as'> r8 <b gs'> |
    <ds b'>8 <cs as'> r8 <b gs'> <ds b'>8 <cs as'> r8 <b gs'> |
  <ds' b>8 <ds b> <ds b> ds, <ds' b> ds, <b' gs> fs |
    <fss as ds>8 e'8 cs4 r4 <as fss ds>8 r8 |
    <b gs> ds, <b' as> ds, gs ds <b' gs> ds, |
  <as' gs> ds, gs ds <b' gs> ds, as' ds, |
    <cs' gs> ds, <cs' gs> ds, <ds' gs> ds, <cs' gs> ds |
  <ds as fss ds> r8 r4 c8 bf <c a f> d \bar "||" |

  \key bf \major

  <f d>4. <d bf>8~ <d bf>4 <bf f>4 | 
    r4 <d f,>8 <d f,> <ef g,> <d f,> <c ef,> <bf d,> |

  % Page 90 - bar 103

  <a c,>4. <bf d,>8~<bf d,>4 <g ef>4~ | <g ef>8 f16 ef r8 bf'8 c bf c d |
    <f d>4. <d bf>8~ <d bf>4 <bf f>4 | 
  r4 r8 <d f,> <ef g,> <d f,> <c ef,> <d f,>~ |
    <d f,>8 <bf df,>8~<bf df,>4 f8 df4. |
    ef8 <f' c> <f c> <f bf,> <f c> <f bf,> <f c> <f d> |
  f4. <f d>8~<f d>4 <d bf> | r4 <f d>8 <f d> <g ef> <f d> <ef c> <d bf> |
    <c a>4. <d bf>8~<d bf>4 <bf g>4~ |
  <bf g>16 <a f> <g ef>8~<g ef>4~<g ef>2 | 
    \times 2/3 { r4 a, d } \times 2/3 {r bf ef} |
    r2 \times 2/3 { <f' bf,>4 <ef bf> <d bf> } |

  % Page 91 - bar 115

  <f bf,>2 <bf, g d>8 <bf g d> <bf g d> <bf g d> |
  <bf g d> <bf g d> <bf g d> <bf g d> <bf g d> <bf g d> <bf g d> <bf g d> |
    \times 2/3 { r4 a, d } \times 2/3 {r bf ef} |
    r2 \times 2/3 { <g' ef>4 <f d> <d bf> } |
  << ef1 \\ { r4 <bf af ef>8 <bf af ef>~<bf af ef> <bf af ef>~<bf af ef>4 } >> |
  r4 <bf af ef>8 <bf af ef>~<bf af ef> <bf af ef>~<bf af ef>4 |
  r4 <bf f>8 <bf f>~<bf f> <bf f>~<bf f>4 | 
    <bf f c>2 \times 2/3 { <g' ef>4 <f d> <d bf> } |
  << ef1 \\ { r4 <bf af ef>8 <bf af ef>~<bf af ef> <bf af ef>~<bf af ef>4 } >> |
  bf4 <bf af ef>8 <bf af ef>~<bf af ef> <bf af ef>~<bf af ef>4 |
  c8 d8~d4 <c bf f>8.~<c bf f>16~<c bf f>4 |
  <bf f c>8 r8 \ottava #1 <bf'' f bf,>16 <bf f bf,>16 <bf f bf,>16 <bf f bf,>16 r2 
  \bar ".|"
}

left = \relative c' {
  \clef bass \key a \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  
  a,8[ a a a] a[ a a a] a[ a a a] a[ a a a]  |
  g[ g g g] g[ g g g] g[ g g g] g[ g g g] \bar ":|"
  \repeat unfold 16 { <a e' a> } 
  \repeat unfold 16 { <g d' g> } 
  \repeat unfold 16 { <a e' a> } 
  \repeat unfold 16 { <g d' g> } 

  % Page 82

  cs4 <gs'? cs>8. <gs cs>16 cs,8 cs <gs' cs>4 |
  d4 <a' d>8. <a d>16 d,8 d <a' d>4 |
  cs,4 <gs' cs>8. <gs cs >16 cs,8 cs <gs' cs>4 |
  e4 <b' e>8. <e b>16 e,8 e <b' e>4 |
  cs,4 <gs' cs>8 <gs cs> cs, cs <gs' cs>4 |
  d4 <a' d>8 <a d> d, d <a' d >4 |
  g,8 g g g g g g g | e4 < e b' e >2. |

  a4 <e' a>8 \noBeam a,8 a a <e' a>4 |
  fs,4 <e' a>8 \noBeam fs,8 fs fs <e' a>4 |
  e,4 e'4 e,8 e8 e'4 | d,4 d'4 d,8 d8 d'4 |

  % Page 83 - bar 25

  a4 <e' a>8 \noBeam a,8 a a <e' a>4 |
  fs,4 <e' a>8 \noBeam fs,8 fs4 <e' a>4 |
  f,4 <c' a'>8 \noBeam f,8 f4 <c' a'>4 |
  g4 <d' b'>8 \noBeam g,8 g g <d' b'>4 |
  a4 <e' a>8 \noBeam a,8 a a <e' a>4 |
  fs,4 <e' a>8 \noBeam fs,8 fs4 <e' a>4 |

  e,4 e'4 e,8 e e'4 | d,4 d'4 d,8 d d'4 | <cs, cs'>4. cs'8 <d, d'>4. d'8 |
  r4 <e, e'>2. | a,8 a a' a, a a' a, a  | a a a' a, a a' a, a \bar "||"

  % Page 84 - bar 37

  < a' e' a >
  \repeat unfold 15 { <a e' a> } 
  \repeat unfold 16 { <g d' g> } 
  \repeat unfold 16 { <a e' a> } 
  \repeat unfold 16 { <g d' g> } 
    cs4 <gs'? cs>4 cs,8 cs8 <gs' cs>4 |
  d4 <a' d>8. <a d>16 d,8 d <a' d>4 |
    cs,4 <gs'? cs>8 <gs cs>8 cs,8 cs8 <gs' cs>4 |
    e4 <b' e>8. <e b>16 e,8 e <b' e>4 |

  % Page 85 - bar 49

  cs,4 <gs' cs>8. <gs cs >16 cs,8 cs <gs' cs>4 |
    d4 <a' d>8 <a d> d, d <a' d >4 |
    g,8 g g g g g g g | e4 < e b' e >2. \bar "||"

  a4 <e' a>8 \noBeam a,8 a a <e' a>4 |
  fs,4 <e' a>8 \noBeam fs,8 fs fs <e' a>4 |
  e,4 e'4 e,8 e8 e'4 | d,4 d'4 d,8 d8 d'4 |
  a4 <e' a>8 \noBeam a,8 a a <e' a>4 |
  fs,4 <e' a>8 \noBeam fs,8 fs4 <e' a>4 |
  f,4 <c' a'>8 \noBeam f,8 f4 <c' a'>4 |
  g4 <d' b'>8 \noBeam g,8 g g <d' b'>4 |

  % Page 86 - bar 61

  a4 <e' a>8 \noBeam a,8 a4 <e' a>4 | fs,4 <e' a>8 \noBeam fs,8 fs4 <e' a>4 |
  e,4 e'4 e,8 e8 e'4 | d,4 d'4 d,8 d8 d'4 |
  <cs cs,>4. cs8 <d d,>4. d8 | 
  r4 <e, e'>2. | a,8 a a' a, a a' a, a  | 
    a a a' a, <a a'> <a a'> <a a'> <a a'> \bar "||"

  g'4 <d' b'>8 g,8 g g <d' b'>4 | g,4 <d' b'>4 g,8 g <d' b'>4 |
  a4 <e' a>4 a,8 a <e' a>4 | a,4 <e' a>4 a,8 a <e' a>4 |

  % Page 87 - bar 73

  g,4 <d' b'>8 g,8 g g <d' b'>4 | g,4 <d' b'>4 g,8 g <d' b'>4 |
    e,8 e e' e, e e e' e, |
  e e e' e, e r8 e r8 | 
  % Added an octave here to help the transposition.
    <fs' fs,>2. r8 <fs fs,>8 | <e e,>2. r8 <e e,>8 |
  <d d,>1~ | <d d,>2. e8 cs |
  <fs fs,>2. r8 <fs fs,>8 | <e e,>2. r8 <e e,>8 |

  % Page 88 - bar 83

  <cs cs,>1~ | <cs cs,>2. r8 ds8 \bar "||"
  \key b \major
  <gs gs,>2. r8 <gs gs,>8 | <fs fs,>2. r8 <fs fs,>8 |
  <e e,>1 | <e e,>2. r8 ds8 |
  <gs gs,>1 | <fs fs,>2. r8 <fs fs,>8 | <ds ds,>1~ |

  % Page 89 - bar 92

  <ds ds,>2. r8 <ds ds,>8 | <e e,>1 | <cs cs,>2. r8 <cs cs,>8 |
  <ds ds,>2. r8 as8 | <ds ds,>8 r8 r4 r4 <ds ds,>8 r8 | <e e,>1 |
  <cs cs,>2. r8 <cs cs,>8 | <ds ds,>2. r8 as8 |
  <ds ds,>8 r8 r4 r4 <f f,>8 r8 \bar "||"
  \key bf \major
  % Removed an octave here for the transposition
  %bf4 <f' bf>4 bf,8 bf <f' bf>4 | g,4 <d' bf'>8 g, g4 <d' bf'>4 |
  bf,4 <f' bf>4 bf,8 bf <f' bf>4 | g,4 <d' bf'>8 g, g4 <d' bf'>4 |

  % Page 90 - bar 103

  f,4 <f' c>8 f,8 f4 <f' c> | ef,4 <g' bf>8 ef,8 ef4 <bf' g'>4 |
    bf4 <f' bf>4 bf,8 bf <f' bf>4 |
  g,4 <d' bf'>8 g,8 g4 <d' bf'>4 | gf,4 <df' bf'>8 gf,8 gf4 <df' bf'>4 | 
    af4 <ef' af>8 af,8 af4 <ef' bf'>4 | 
  bf4 <f' bf>4 bf,8 bf <f' bf>4 | g,4 <d' bf'>8 g,8 g4 <d' bf'>4 |
    f,4 <f' c>8 f,8 f8 f8 <f' c>4 |
  ef,4 <bf' g'>8 ef,8 ef4 <bf' g'>4 | <d d,>4. d8 <ef ef,>4. ef8 |
    f,8 r8 <f c' f>4~<f c' f>2 |
    
  % Page 91 - bar 115

  g8 g8 <d' bf'>8~<g, d' bf'>8~g2 |
  f8 f8 <d' bf'>8~<f, d' bf'>8~f2 |
  <d' d,>4. d8 <ef ef,>4. e8 |
  f,8 r8 <f c' f>4~<f c' f>2 | 
    af,8 af af' af, af af af' af, | af8 af af' af, af af af' af, |
    bf8 bf bf' bf, bf bf bf' bf, | bf8 bf bf' bf, bf bf bf' bf, |
    af8 af af' af, af af af' af, | af8 af af' af, af af af' af, |
    bf8 bf bf' bf, bf bf bf' bf, | 
    bf8 r8 <bf bf'>16 <bf bf'>16 <bf bf'>16 <bf bf'>16 r2 \bar ".|"
}



\score {
  <<
    \new PianoStaff <<
      \new Staff = "upper" \transpose a d' \right
%      \new Staff = "upper" \right
      \new Staff = "lower" \transpose a d \left
%      \new Staff = "lower" \left
    >>
  >>
  \layout {
    \context { 
      \RemoveEmptyStaffContext 
    }
%    \context {
%      \Score
%      \override SpacingSpanner
%          #'base-shortest-duration = #(ly:make-moment 1 16)
%    }
  }
}
