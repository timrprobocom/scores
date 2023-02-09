%{
    Comments
%}
\version "2.12.3"
\include "english.ly"

#(set-default-paper-size "letter" )
#(set-global-staff-size 16 )

\paper {
    ragged-last-bottom = ##t
}

\header {
    title = "O Holy Night"
}


vocal = \relative c' {
  \clef treble \key df \major
  \override Staff.TimeSignature #'style = #'()
  \time 6/8

  r2. r2.  \repeat volta 2 {

  % O Holy Night

  f4. f4 f8 | af4.~af4 af8 | bf4 bf8 gf4 bf8 | 
  df2. | af8 r8 af8 f4 ef8 | df4. f4 gf8 | af4. gf4 ef8 | df2. | r2. |

  % Long lay the world

  f4. f4 f8 | af4.~af4 af8 | bf4 bf8 gf4 bf8 | 
  df2. | af8 r8 af8 g4 f8 | c'4. af4 bf8 | c4. df4 c8 | f,2. | r4. r4 af8 |

  % A thrill

  af4. bf | ef, af | bf4 af8 df4 f,8 | bf4. af8 r8 af8 |
  af4. bf | ef, af | bf4 af8 df4 f,8 | af4. r4. |

  % Fall

  df2.~ df4 r8 c4 bf8 | c2.~ c4. r4 c8 |
  ef2.~ ef4 bf8 bf4 bf8 | df2. df4. r4 df8 |
  
  % O night divine

  f2.( ef4.) r4 af,8 | df2.~ df4 r8 c4 bf8 | 
  af2.~ r4 af8 bf4 af8 | af2. ~ af4. r4 df8 |

  ef2.~ ef4. af,4. | f'2.~f4. ef4. | 
  df2. r4 c8 df4 ef8 
  }
  \alternative { { df2. ~ df2. } { df2. ~ df2. } }
}

texta = \lyricmode {
  O ho -- ly night the stars are bright -- ly shi -- ning
  It is the night of the dear Sav -- iour's birth;
  Long lay the world in sin and sor -- row pin -- ing, 
  Till he ap -- peared and the soul felt its worth.

  A thrill of hope the wea -- ry world re -- joi -- ces
  For yon -- der breaks a new a glo -- rious morn!

  Fall on your knees, o hear the an -- gel voi -- ces
  O night di -- vine!
  O _ night when Christ was born!
  O night di -- vine!
  O night_ when Christ was born!
}


textb = \lyricmode {
  Tru -- ly He taught us to love one an -- oth -- er;
  His law is Love and His gos -- pel is Peace;
  Chains shall He break for the slave is our bro -- ther;
  And in His Name all o -- press -- ion shall cease.

  With hymns of joy in grate -- ful cho -- rus rais -- ing,
  Let ev -- ery heart a -- dore His Ho -- ly Name!

  Christ is the Lord! O praise his name for e -- ver
  His power and glo -- _ ry ev -- er more pro -- claim.
  His power and glo -- ry ev -- er more pro -- claim -- claim.
}


upper = \relative c' {
  \clef treble \key df \major
  \set Staff.clefOctavation = #-7
  \set Staff.middleCPosition = #1
  \override Staff.TimeSignature #'style = #'()
  \time 6/8

  f,8 df' af f' df af  |  f8 df' af f' df af \bar "|:"

  % O holy night

  \repeat volta 2 {

  f8 df' af f' df af  |  f8 df' af f' df af | gf df' bf gf' df bf |
  f8 df' af f' df af  |  f8 df' af f' df af |
  f8 df' af f' df af  |  gf8 c af ef' c af |
  f8 df' af f' df af  |  f8 df' af f' df af |

  % Long lay the world

  f df' af f' df af  |  f df' af f' df af | gf df' bf gf' df bf |
  f df' af f' df af  |  f cf' af f' cf af |
  f c' af f' c af  |  g c bf e c bf | 
  f c' af f' c af | f c' af f' c af | 

  % A thrill of hope

  gf c af ef' c af | gf c af ef' c af |
  f df' af f' df af | f df' af f' df af |
  gf c af ef' c af | gf c af ef' c af |
  f df' af f' df af | f df' af f' df af |

  % Fall on your knees

  f df' bf f' df bf | f df' bf f' df bf |
  f c' af f' c af | f c' af f' c af |
  gf ef' bf gf' ef bf | gf ef' bf gf' ef bf |
  f df' bf f' df bf | f df' bf f' df bf |

  % O night divine

  ef, c' af ef' c af | ef c' af ef' c af |
  af f' df af' f df | gf, df' bf gf' df bf |
  f df' af f' df af | gf c af ef' c af |
  f df' af f' df af | f df' af f' df af |

  % O night divine

  ef c' af ef' c af | ef c' af ef' c af |
  af f' df af' f df | gf, ef' bf gf' ef bf |
  f df' af f' df af | <gf af c ef>4. r4. |
  }
  \alternative {

    { f8 df' af f' df af  |  f df' af f' df af }
    {
      <f af df>2.}} <df' af' df>4.~<df af' df>4 <df af' c>8 |
  <df gf c>2. | <ef gf bf>4. <ef gf bf>4 <ef gf bf>8 |
  <gf af ef' gf>2. | <f af df f>4. <gf bf ef>4. | 
  <f af df>2. | 
  << 
    { \appoggiatura { bf16[ c df] } c4.~\startTrillSpan c4 
      \appoggiatura { bf16[ c] } df16\stopTrillSpan ef16 | df2.~df2. }
  \\ 
    { gf,2.( | f2.)~f2.  }
  >>

  <f, df'>2. \fermata

  \bar "|."
}

lower = \relative c, {
  \clef bass \key df \major
  \override Staff.TimeSignature #'style = #'()
  \time 6/8

  <df af' df>2.~ | < df af' df > |
  
  \repeat volta 2 {
  % O holy night

  <df af' df>2.~ | < df af' df > | < gf df' > |
  <df af' df > | < f df' > |
  <af, af' >~ | < af af' > |
  <df af' df >~ | < df af' df > |

  % Long lay the world

  <df af' df>2.~ | < df af' df > | < gf df' > | 
  <df af' df > | < df df' > | < c c' > | < c c' > | f | r |

  % A thrill of hope

  << 
    { c'4. af c af df af df af }  
    \\  
    { c,2.~  c df~ df }       
  >>
  << 
    { c'4. af c af df af df r4. } 
    \\  
    { c,2.~ c df~ df4. r4. } 
  >>

  % Fall on your knees

  <bf bf'>2.~ <bf bf'> | <f f'>~ <f f'> | 
  <ef ef'>~ <ef ef'> | <bf' bf'>~ <bf bf'> |

  % O night divine 
  <af af'>~ <af af'> | <f f'> <gf gf'> | <af af'> <af af'> |
  <df, df'>4.-> <f f'>-> <af af'>-> <df df'>-> |
  <af af'>2. <gf gf'> | <f f'> <gf gf'> | <af af'> | <af af'>4. r4. |

  }
  \alternative {
  { <df df'>2.~ <df df'> }
  {
    df8( af' df f df af) }} f( af df f df af) | 
  gf( bf df gf df bf) | ef,( bf' df gf df bf) |
  c,( af' ef' gf af ef') | df,( af' df)  gf,,( ef' gf) |
  af,( df f af f df) | af( ef' gf af gf ef) |
  df,( af' df f af df) | f( df af f df af) |
  <df, af'>2. \fermata    
  \bar "|."
}

\score {
  <<
   \new Voice = "vocal"   \transpose df bf, \vocal
    \new Lyrics \lyricsto vocal \texta
    \new Lyrics \lyricsto vocal \textb
    \new PianoStaff <<
      \new Staff = "upper" \transpose df bf, \upper
      \new Staff = "lower" \transpose df bf, \lower
    >>
  >>
  \layout {
    \context { \RemoveEmptyStaffContext }
  }
}
