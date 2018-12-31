\version "2.16"
\include "english.ly"
#(set-default-paper-size "letter")
#(set-global-staff-size 18)
\header {
    title = "Star Vicino"
    composer = "Salvator Rosa"
}

% First voice in << stems up \\ stems down >>

\parallelMusic #'(voice left right)
{
    R2. |
    g8( d g fs <e g> <fs a> |
    r2 <d c'>4 |
    
    r4 b c |
    <g b>2) <a c>4 |
    <g d'>2. |

    d4 a b |
    <a d>2 <g b>4 |
    <fs d'>2. |

    c4 c c |
    <g c>2 <d c'>4 |
    <e c'>4 <e g> <fs a> |

    c2 b4 |
    << { <a' c>4 <fs a>4 <g b>8 <fs a>8 } \\ d2. >> |
    g4 g, g8 a |

    %% Bar 5

    r4 g a |
    <d g>2 <d a'> 4 |
    b2 <fs' a>4 |
    
    b4 g a |
    << { b'4 g4 } \\ d2 >> <d a'>4 |
    g4 <b, g'>4 <d fs>4 |

    b4 c8( b) a( g) |
    <d b'>2 <g c>4 |
    g2 <e g>4 |

    a2. |
    <fs d'>4 fs8 g a4 |
    <d a>2. |

    %% Bar 9

    r4 g a |
    <d, g>2 << {d'8 c} \\ a4 >> |
    <g b>2 <fs d'>4 |

    b4( c8 b a4 |
    << b2 \\ {g4 a8[ g]} >> <fs a>4 |
    << d'2. \\ { g,2 d4 } >> |

    b4 c8 b a4 |
    << b2 \\ {g4 a8[ g]} >> <fs a>4 |
    << d'2. \\ { g,2 d4 } >> |

    b4 c8 b a4 |
    << b2 \\ {g4 a8[ g]} >> <fs a>4 |
    << d'2. \\ { g,2 d4 } >> |


    %% Page 2


    b4. c16 d c4 |
    <g b>2 <a c>4 |
    <g d'>2 <a d>4 |

    d4) g, a |
    <g d'>2  <e g c>4 |
    << d2 \\ {b4 b,4} >> c4 |

    b4 d, fs |
    <d g b>2 <c fs a>4 |
    d2 d,4 |

    g2. |
    << <d g>2. \\ {c4 a b} >> |
    g2. |

    %% Bar 17

    R2. |
    r4 <d g b> <d fs c'> |
    r4 g'8( b) a( c) |

    R2. |
    <d g d'>4 <b e g>4 << <c a'>4 \\ { e8 fs8 } >> |
    b8( g) e( d) c( d) |

    R2. |
    <d g b>4 <g, c e> <a c fs> |
    g8( b,) c( b) a( d) |

    R2. |
    <b d g>2. |
    g8( d g fs g a |

    %% Bar 21

    r4 b c |
    r4 <d g b> <d fs c'> |
    b4) g8 b a c |

    d4 a b |
    << {d'8( b) a4} \\ {<d, g>4 d8[ fs]} >> <d g b>4 |
    b8( g) fs( a) g( b) |

    c4 c c |
    <d fs c'>4 <d a' c> <d fs c'> |
    a8( g fs e d a' |

    c2 b4 |
    <d g c>2 <d g b>4~ |
    g8 d g fs g a |

    %% Bar 25

    r4 g a |
    <d g b>4 <b e g> <c fs a> |
    b4) e, d |
    
    b4 g a |
    <d g b>4 <b e g> <d fs a> |
    g8( fs) e4 d |

    b4 c8( b) a( g) |
    <d g b>4 << { c'8( b a g } \\ { <d fs>4 d4 } >> |
    g4 a8( g fs e |

    a2. |
    << a'2.~ \\ { d,4 fs( e } >> |
    fs4) d2( |

    r4 g a |
    << a4) \\ d,4) >> <b e g> <d fs a> |
    c'4) e,4 d |


    %% Page 3

    b4( c8 b a4 |
    <d g b>4 << {c'8[ b]} \\ <d, fs>4 >> <d a'>4 |
    g4 a8 g8 fs4 |

    b4 c8 b a4 |
    <d g b>4 << {c'8[ b]} \\ <d, fs>4 >> <d a'>4 |
    g4 a8 g8 fs4 |

    b4 c8 b a4) |
    <d g b>4 << {c'8[ b]} \\ <d, fs>4 >> <d a'>4 |
    g4 a8 g8 fs4 |

    b4 b c |
    <d g b>4 <d g b> <d fs c'> |
    g4 g8 b a c |

    % Bar 34

    d4 g, a |
    <d g d'>4 <b e g> << a'4 \\ {d,8 fs} >> |
    b4 e,8 g fs a |

    b4 d,4 fs |
    <e g>4 d <d fs> |
    <g b>4 <d g b> <d a'> |

    g2. |
    <b d g>2 r4 |
    g8 d g fs g a |

    r4 g a |
    r4 <e g>4 <d fs a> |
    b4 r4 r4 |

    %% Bar 38

    b4( c8 b a c |
    <d g b>4 <d fs c'> r4 |
    g4 a r |

    b8 d c b a c |
    <d g b>4 <d fs c'> r4 |
    g4 a r |

    b8 a b c d e |
    <d g b>2. |
    g8 fs g a b c |

    d4) g, a |
    <d g d'>4 <e g> <fs a> |
    b4 <e, b> <d d'> |

    %% Bar 42
    
    b4 e d |
    <g b>4 <g c e> <d g d'> |
    <g d'>4 c b |

    d8( c) b4 a |
    << { <g d'>8( <fs c'>) } \\ d4 >> <d g b>4 <d fs a> |
    b8( a) g4 d4 |

    g2. |
    g8( fs g a b d) |
    << { <b' d>4 <g b d> <b d g> } \\ g,2.~ >> |

    R2. |
    << g4 \\ <d, g b>4 >> r4 r4 |
    g4 r4 r4 |

    \bar "|." |
    \bar "|." |
    \bar "|." |
}

mylyrics = \lyricmode {
    Star vi -- ci -- no bel l'i -- dol che s'a -- ma
    Eil piu va -- go di -- let -- to d'a -- mor.
    Eil piu va -- go di -- let -- to d'a -- mor!
    Star lon -- ta -- no dal ben che si bra -- ma
    E d'a -- mo -- re piu vi -- vo do -- lor,
    E d'a -- mo -- re 
    E d'a -- mo -- re piu vi -- vo do -- lor,
    E d'a -- mor, 
    E d'a -- mo -- re piu vi -- vo do -- lor!
}

signs = {
    s2.
    s2.*4  \mark \default
    s2.*4  \mark \default
    s2.*4  \mark \default
    s2.*4  \mark \default
    s2.*4  \mark \default
}

common = {
    \time 3/4
    \tempo 4 = 108
    \key g \major
    \override MultiMeasureRest #'expand-limit = 1
    \set Score.markFormatter = #format-mark-box-barnumbers
    \set Score.skipBars = ##t
    \compressFullBarRests
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
}

\score {
  \new StaffGroup <<
    \new Staff { \transpose g' f' \common 
      \new Voice = "voice" 
        { \transpose g' f' \relative c'' << \voice \signs >> } 
    }
    \new Lyrics \lyricsto "voice" \mylyrics 
    \new PianoStaff <<
      \new Staff { 
          \transpose g' f' { \common            \relative c'' \left } 
      }
      \new Staff { 
          \transpose g' f' { \common \clef bass \relative c   \right } 
      }
    >>
  >>

%%  \layout { }
%%  \midi { }
}
