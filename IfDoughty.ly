%{
    Comments
%}
\version "2.10.33"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    ragged-last-bottom = ##t
}

\header {
    title = "If Doughty Deeds My Lady Please"
}



vocal = \relative c' {
  \clef treble \key ef \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  \partial 4
  r4 |
  \repeat volta 2 {
  R1 | R1 | R1 | R1 |
  r2 r4 bf4 | ef g bf bf, | ef g bf bf, |
  ef g bf ef | ef2( d4) d4 | c4. c8 c4 af8( f) | bf4. bf8 bf4 g |
  ef f gf f8( ef) | bf'2. bf,4 | ef g bf bf, | ef g bf bf, |

  %% page 2
  ef4. g8 bf4 ef | ef2( d4.) c8 | bf4 c8( d) a4 a4 | bf4 a8( bf) c4 bf8( c) |
  d4 ef c g8( a) | bf2. bf4 | bf4. g8 ef4. f8 | ef4. d8 d4 bf'4 |
  bf g ef4. f8 | ef4 d4 r4 d | ef f g af | bf c d ef |
  ef,4. ef8 c'4 af | af g r4 f | ef ef' d b | b c bf af |
  g4. af8  bf4 c | f,1 | ef2. r4
  } 
  R1 R1 R1 R1 R1 \bar "|."
}

textA = \lyricmode {
  If dought -- ty deeds my la -- dy please, 
  Right soon I'll mount my steed, 
  And strong his arm, and_ fast his seat, 
  That bears from me the meed.
  I'll wear thy co -- lours in my cap,
  Thy pic -- ture at my heart,_ 
  and he that bends not to thine eye shall rue it to his smart!
  Then tell me how to woo thee, love,
  O tell me how to woo three!
  For thy dear sake no care I'll take 
  Though ne'er an -- o -- ther trow me,
  For thy dear sake no care I'll take
  Though ne'er an -- o -- ther trow me.
}

textB = \lyricmode {
  But if fond love thy heart can gain,
  I ne -- ver broke a vow;
  No mai -- den lays her skaith to me,
  I ne -- ver loved but you.
  For you a -- lone I ride the ring,
  For you I wear the blue,
  For you a -- lone I strive to sing,
  O tell me how to woo.
  %% Then tell me how to woo thee, love,
  %% O tell me how to woo thee!
  %% For thy dear sake no care I'll take,
  %% Though ne'er an -- o -- ther trow me,
  %% For thy dear sake no care I'll take
  %% Though ne'er an -- o -- ther trow me.
}


upper = \relative c'' {
  \clef treble \key ef \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  \partial 4

  bf8.\ff bf16 |

  \repeat volta 2 {
  ef4 <g g,>4 < bf bf,>4 bf,8. bf16 |
  ef4 <g g,>4 < bf bf,>4 bf,8. bf16 |
  ef4 <g g,>4 < bf bf,>4 <c c,>4 |

  <ef bf af ef>4 <d d,>8 <c c,>8 <bf bf,>4 <d bf af d,>4 |
  <ef bf g ef>8\p <bf, g ef> <bf g ef> <bf g ef>
  <bf g ef> <bf g ef> <bf g ef> <bf g ef> |
  <bf g ef> <bf g ef> <bf g ef> <bf g ef> 
  <bf af d,> <bf af d,> <bf af d,> <bf af d,> |
  <bf g ef> <bf g ef> <bf g ef> <bf g ef> 
  <bf af d,> <bf af d,> <bf af d,> <bf af d,> |

  <bf g ef> <bf g ef> <bf g ef> <bf g ef> <bf f> <bf f> <a f ef> <a f ef> |
  <a f ef> <a f ef> <a f ef> <a f ef> <bf f d> <bf f d> <bf f d> <bf f d> |
  <c bf g e> <c bf g e> <c bf g e> <c bf g e>
  <c af f> <c af f> <c af f> <c af f> |
  <bf af f d> <bf af f d> <bf af f d> <bf af f d> 
  <bf g ef> <bf g ef> <bf g ef> <bf g ef>  |

  <bf gf ef> <bf gf ef> <bf gf ef> <bf gf ef>
  <a f ef> <a f ef> <a f ef> <a f ef> |
  <bf d,> <bf d,> <bf ef,> <bf ef,> <bf e,> <bf e,> <bf af f> <bf af f> |
  <bf g ef> <bf g ef> <bf g ef> <bf g ef> 
  <bf af d,> <bf af d,> <bf af d,> <bf af d,> |
  <bf g ef> <bf g ef> <bf g ef> <bf g ef> 
  <bf af d,> <bf af d,> <bf af d,> <bf af d,> |

  %% page 2

  <bf g ef>8 <bf g ef> <bf g ef> <bf g ef> 
  <bf g ef> <bf g ef> <bf g ef> <bf g ef> |
  <a g ef> <a g ef> <a g ef> <a g ef> <a fs d> <a fs d> <a fs c> <a fs c> |
  <g d bf> <g d bf> <g d bf> <g d bf> <fs d c> <fs d c> <fs d c> <fs d c> |
  <g d bf> <g d bf> <bf d, bf> <bf d, bf> 
  <bf ef, c> <bf ef, c> <bf ef, c> <bf ef, c> |

  <bf f d>8 <bf f d> <bf g ef> <bf g ef>
  <bf ef, c> <a ef c> <g ef c> <a ef c> |
  <bf d, bf> <bf bf,> <bf bf,> <bf bf,> <bf bf,> <bf bf,> <bf bf,> <bf bf,> |
  <bf bf,>4 <bf ef, bf> <bf ef, bf> <bf ef, bf> |
  <bf f bf,> <bf f bf,> <bf f bf,> <bf f bf,> |

  <bf ef, bf>4 <bf ef, bf> <bf ef, bf> <bf ef, bf> |
  <bf f bf,> <bf f bf,> <bf f bf,> <d, bf>8 <d bf> |
  <ef bf>\< <ef bf> <ef bf> <ef bf> <af ef> <af ef> <af ef> <af ef> |
  <g ef> <g ef> <g ef> <g ef> <gf ef> <gf ef> <gf ef> <gf ef>\! |

  <g ef>\> <g ef> <g ef> <g ef> <af ef c> <af ef c> <af ef c> <af ef c> |
  <bf af f d> <bf af f d> <bf g ef> <bf g ef> <bf g ef> <bf g ef>
  <d af f> <d af f>\! |
  <ef g, ef>2\f <b f d>2 | <b f d>4 <c ef, c> <bf e, df> <af f c> |

  <g ef bf>4 <af ef af,> <bf ef, bf> <c af ef c> |
  << <bf af f>1 \\ { ef2 d2 } >> 
  <ef bf g ef>4\ff r4 r4 bf8. bf16 
  }
  ef4 <g g,>4 < bf bf,>4 bf,8. bf16 |
  ef4 <g g,>4 < bf bf,>4 bf,8. bf16 |
  ef4 <g g,>4 < bf bf,>4 <c c,>4 |
  <ef bf af ef>4 <d d,>8 <c c,>8 <bf bf,>4 <d, af f>4 |
  <ef g, ef> r4 r2 \bar "|."
}


lower = \relative c' {
  \clef bass \key ef \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4
  \partial 4

  bf8. bf16 | 
  \repeat volta 2 {
  <ef bf g ef>8 <ef bf g ef> <ef bf g ef> <ef bf g ef>
  <d bf af ef> <d bf af ef> <d bf af ef> <d bf af ef> |
  <ef bf g ef>8 <ef bf g ef> <ef bf g ef> <ef bf g ef>
  <d bf af ef> <d bf af ef> <d bf af ef> <d bf af ef> |
  <ef bf g ef>8 <ef bf g ef> <ef bf g ef> <ef bf g ef>
  <ef bf g> <ef bf g> <ef af, f> <ef af, f> |

  <bf, bf,>8 <bf' af f> <bf af f> <bf af f> <bf af f>4 <bf, bf,>4 |
  <ef ef,>4 r4 r4 bf4 | ef g bf bf, | ef g bf bf, |

  ef2 d4 c4 | bf4 bf, bf'2~ | bf4 bf, bf'2~ | 
  bf4 <bf bf,>4 <ef ef,> <d d,> |

  <c c,>2 <f f,>2 | <bf, bf,>4 <c c,>4 <cs cs,>4 <d d,>4  |
  <ef ef,>4 g4 bf bf, | ef g bf bf, |

  %% page 2

  <ef ef,>2 <d d,>4 <c c,>4 | <c c,>2 <d d,>4 <d d,>4 |
  <g g,>4 <d d,>4 r4 <d d,>4 | <g g,>4 r4 <gf gf,>2 |

  <f f,>2 <f, f,>2 | <bf bf,>4 r4 r2 | 
  <bf bf,>4 <g' bf,> <g bf,> <g bf,> |
  <af bf,> <af bf,> <af bf,> <af bf,> |

  <g bf,> <g bf,> <g bf,> <g bf,> | <af bf,> <af bf,> <af bf,> <af, af,> |
  <g g,>2 <c c,>2 | <bf bf,>2 <a a,>2 |

  <bf bf,>1 | <bf bf,>4 <ef ef,>4 r4 <bf bf,> | 
  <c c,>2 <g' g,>2 | <af af,> <f f,> |

  <bf, bf,>4 <c c,> <g g,> <f f,> | <bf bf,>1 |
  <ef ef,>8 <bf' g ef> <bf g ef> <bf g ef>
  <bf g ef> <bf g ef> <bf g ef> <bf g ef> |
  }
  <ef bf g ef>8 <ef bf g ef> <ef bf g ef> <ef bf g ef>
  <d bf af ef> <d bf af ef> <d bf af ef> <d bf af ef> |
  <ef bf g ef>8 <ef bf g ef> <ef bf g ef> <ef bf g ef>
  <d bf af ef> <d bf af ef> <d bf af ef> <d bf af ef> |
  <ef bf g ef>8 <ef bf g ef> <ef bf g ef> <ef bf g ef>
  <d bf af ef> <d bf af ef> <d bf af ef> <d bf af ef> |
  <bf, bf,>8 <bf' af f> <bf af f> <bf af f>
  <bf af f>4 <bf, bf,>4 |
  <ef ef,>4 r4 r2 \bar "|."
}

\score {
  <<
    \new Voice = "vocal"   \transpose c c \vocal
    \new Lyrics \lyricsto vocal \textA
    \new Lyrics \lyricsto vocal \textB
    \new PianoStaff <<
      \new Staff = "upper" \transpose c c \upper
      \new Staff = "lower" \transpose c c \lower
    >>
  >>
  \layout {
    \context { \RemoveEmptyStaffContext }
  }
}
