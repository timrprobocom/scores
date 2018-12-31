\version "2.16"
\include "english.ly"
#(set-default-paper-size "letter")
#(set-global-staff-size 15)
\header {
    title = "To The Sky"
    composer = "Carl Strommen"
}

% First voice in << stems up \\ stems down >>

\parallelMusic #'(voice left right)
{
    \partial 4 r4 |
    \partial 4 f8\p g |
    \partial 4 r4 |

    R2. |
    << {af2 g8 f} \\ c2. >> |
    f'2. |

    R2. |
    << {ef2 c4} \\ g2. >> |
    c2. |

    R2. |
    << { f'2 ef8 df } \\ af2.  >> |
    df2. |

    %% Bar 4

    R2. |
    <af ef'>4 <g c>4 <ef bf'>4 |
    c2. |

    R2. |
    << { <df af'>2 af'8 bf8 } \\ {g4 f2} >> |
    <df, af'>2. |

    R2. |
    << {c'2 af4} \\ { <c, ef>4 <df f>2 } >> |
    <af ef'>4 <bf f'>2 |

    R2. |
    << {f4 g4 af4} \\ <ef bf'>2. >> |
    <df af'>4 <ef bf'>2 |

    %% Bar 8
    r4 r4 ef8\mp f \bar "||" |
    << <ef af>2. \\ {bf4 c2} >> \bar "||" |
    <af, ef'>2. \bar "||" |

    af2 af8 f |
    <bf c ef>2. |
    af8 ef' af2 |

    bf2 af4 |
    <df f>2. |
    bf,8 f' af2 |

    c2 bf8( af) |
    <ef af>2 << {bf'8 af} \\ <df, f>4 >> |
    c,8 af' c4 <df, af'>4 |

    %% Bar 12 page 29

    f2 ef8 f |
    <af df f>2 <g bf ef>4 |
    ef4 ef,4 <df df'> |

    af2 af8( f) |
    <af c ef>2 << { af'8 f8 } \\ <c ef>4 >> |
    c4 c'2 |

    bf2 af8 bf |
    <df f bf>2 <df f af>4 |
    ef4 ef,2 |

    c2 af4 |
    <c ef af>2. |
    af8 ef' af2 |

    bf2 af8 c |
    <<  { bf'2 af4 } \\ { <ef f>4 <ef g> gf } >> |
    <df, af'>4 <ef bf'> <gf df'> |

    %% Bar 17

    ef2 ef8( c) |
    <c, ef af>2. |
    af4 af,2 |

    f4( ef4) c8 bf |
    <df f af>4 <c ef af>4. <bf ef g>8 |
    <af af'>2~ <af af'>8 <g g'> |

    af2 bf8 af |
    <af df f>2 << { bf'8 af } \\ <df, f>4 >> |
    f'4 df2 |

    %% Bar 20

    f2 ef8 f |
    <af df f>2 << { ef'8 f } \\ <g, bf>4 >> |
    ef4 ef,2 |

    af2 af8 f |
    <c ef af>2 <c f>4 |
    c'4 ef2 |

    bf2 af4 |
    <df f bf>2 <df f af>4 |
    ef4 ef,2 |

    c2 bf4 |
    << { c'2 bf4 } \\ <df, f>2. >> |
    <df' af'>4 <ef bf'>2 |

    %% Bar 24

    af2. |
    <c ef af>2 af'8 bf |
    af4 af,2 |

    R2. |
    << { c2 af4 } \\ f2. >> |
    df4 af' df |

    R2. |
    << { f2 af4 } \\ df,2. >> |
    ef,4 ef,2 |

    R2. |
    << af'2.~ \\ { r4 ef4 df4 } >> |
    << { r4 g' f } \\ af,2.~ >> |

    %% Bar 28 p 30

    r4 r4  ef8 f |
    << af'2. \\ c,2. >> |
    << ef'2. \\ af,2. >> |

    %% Box 29

    af2 af8 f |
    <bf c ef>2. |
    af8 ef' af2 |

    bf2 af4 |
    <df f>2. |
    bf,8 f' af2 |

    c2 bf8( af) |
    <ef af>2 << {bf'8 af} \\ <df, f>4 >> |
    c,8 af' c4 <df, af'>4 |

    f2 ef8 f |
    <af df f>2 <g bf ef>4 |
    ef4 ef,4 <df df'> |

    af2 af8( f) |
    <af c ef>2 << { af'8 f8 } \\ <c ef>4 >> |
    c4 c'2 |

    bf2 af8 bf |
    <df f bf>2 <df f af>4 |
    ef4 ef,2 |

    c2 af4 |
    <c ef af>2. |
    af8 ef' af2 |

    bf2 af8 c |
    <<  { bf'2 af4 } \\ { <ef f>4 <ef g> gf } >> |
    <df, af'>4 <ef bf'> <gf df'> |

    %% Bar 37

    ef2 ef8( c) |
    <c, ef af>2. |
    af4 af,2 |

    f4( ef4) c8 bf |
    <df f af>4 <c ef af>4. <bf ef g>8 |
    <af af'>2~ <af af'>8 <g g'> |

    af2 bf8 af |
    <af df f>2 << { bf'8 af } \\ <df, f>4 >> |
    f'4 df2 |

    f2 ef8 f |
    << <df f>2 \\ { af4 g2 } >> |
    <ef ef,>2. |

    af2 af8 f |
    <c ef>2. |
    af,8 ef' af2 |

    bf2 af4 |
    <df f>2. |
    bf,8 f' bf2 |

    c2 bf4 |
    <df f c'>2 <df f bf> 4 |
    <df, af'>2 <ef bf'>4 |

    %% Bar 44 page 31

    af2 af8 c |
    <c ef af>2. |
    af4 af,2 |

    ef2 ef8 c |
    <c ef af>2. |
    af'4 af,2 |

    f4( ef) c8 bf |
    <df f af>4 <c ef af>4. <bf ef g>8 |
    <af af'>2~ <af af'>8 <g g'>8 |

    af2 bf8( af) |
    <af df f>2 << { bf'8 af } \\ <df, f>4 >> |
    f'4 df2 |

    %% Bar 48

    f2 ef8 f |
    << <df f>2. \\ { af4 g4 } >> |
    <ef, ef'>2. |

    af2 af8 f |
    <ef' f af>2. |
    <df' af'>2. |

    bf2 af4 |
    <f g bf>2. |
    <ef bf'>2. |

    c2 bf4 |
    <ef f c'>2 <ef f bf>4 |
    <df af'>2 <ef bf'>4 |

    af2. |
    <c ef af>2 af'8 bf |
    <af, ef'>2. |

    r2. |
    << { c2 af4 } \\ f2. >> |
    \clef treble df'8 af' df2 |

    r2. |
    << { f2 af4 } \\ <af, df>2. >> |
    ef,4 \clef bass ef,2 |

    r2. |
    <c af'>2.~ |
    << <af ef'>2.~ \\ s2. >> |

    r2.\fermata |
    <c af'>2.\fermata |
    << <af ef'>2. \\ <af,, af'>2.\fermata >> |

    \bar "|." |
    \bar "|." |
    \bar "|." |
}

signs = {
    \partial 4 s4 |
    s2.*8  \mark \default
    s2.*8  \mark \default
    s2.*12  \mark \default
    s2.*8  \mark \default
    s2.*8  \mark \default
}

common = {
    \time 3/4
    \tempo 4 = 90
    \key f \major
    \override MultiMeasureRest #'expand-limit = 1
    \set Score.markFormatter = #format-mark-box-barnumbers
    \set Score.skipBars = ##t
    \compressFullBarRests
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
}

\score {
  \new StaffGroup <<
    \new Staff { \common 
        \transpose af' f' \relative c' << \voice \signs >> }
    \new PianoStaff <<
      \new Staff { \common            
          \transpose af' f' \relative c'' \left }
      \new Staff { \common \clef bass 
          \transpose af' f' \relative c   \right }
    >>
  >>

%%  \layout { }
%%  \midi { }
}
