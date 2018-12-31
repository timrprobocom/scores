%{
    Comments
%}

\version "2.16.0"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    ragged-last-bottom = ##t
}

prefix = {
  \time 3/4
  \key g \major
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
}

notation = {}

clar = {
    % System 1
    \prefix d4(~         d8 b16 g16   e8 g16 b16  |
    d8 b16 g16   e8 g16 b16   g8) g16 e16  |
    g8 fs16 e16  d2~ |
    d2                        e8( g8      |
    a4.              d8       b8 g16 b16  |
    % System 2
    a8 d8      b4    e4)~      |
    e8 r8      b4.->(    c8)   |
    d4~(     d8 b16 g  e8 g16 b16  |
    d8 b16 g16   e8 g16 b16   g8) g16 e16  |
    g8 fs16 e16  d2~ |

    % System 3 Bar 11
    d2 r4 |
    e8_\pp( g16 a c8 d8 e8 g8~ |
    g8 fs16 e16 d4~ d16 c b a ) |
    g16( a b8~ b16 a g8~ g16 fs e8 |

    % Page 2 System 1 bar 15
    e16 d c8~c16\< d f a c d f a) |
    c8_\mp\>--( b16 a g2) |
    b8_\p( a16 g e4~e8 d16 c16) |
    b8( a16 g e4~) e8 e16( cs) |

    % System 2 bar 19
    e2     cs8( e16 cs16  |
    e2)    cs'8( e16 cs16 |
    e4)    r4   e'4(_\mf  |

    % System 3 bar 22
    e8  \times 2/3 { d16 e d } b8) a8~a16 g fs e |
    e8( \times 2/3 { d16 e d } b8) r8 r4 |
    b8.(_\pp g16 e8 g b d |
    b8 g e4 g4) |
    b8.( g16 b8 d e g |

    % Page 3 system 1 bar 27
    b8 g) b,4( d,4 |
    r4 r4 d''4~_\pp |
    d4~d8 b16 g e8 g16 b |
    d8 b16 g e8 g16 b g8) g16( e |
    g4 fs4 e4 |
    d4.) c8( b a |

    % System 2 bar 33
    g16)( a b8~ b16 a g8~ g16 fs e8~ |
    e16 d e8~ e16 d e8~ e16 d e8~ |

    % System 3 bar 35
    e16) g-. a-. c-. d-. e-. g-. a-. \times 2/3 { c8-. d-. e-. } |
    d2.~ |
    d2.~ |
    d2.~ |
    d4 r4 r4 \bar "|."
}

righthand = {
    % System 1
    \prefix R2. |
    r4           r4           r8 <g c>8_\p |
    <g b>2.~         |
    <g b>2                    r4   |
    <d' fs>4.        <d fs>8  <e g>8 <d g>8 |

    % System 2
    <d fs>4    <ds fs>4      <b e b'>4~ |
    <b e b'>4  r4        r4    |
    d2_\p                <cs e>4 |
    d4           <cs e>4      <b d>8 <a c>8 |
    << { \voiceOne <g b>2. } \new Voice { \voiceThree r4 d'4~ d16 c b a } >> |

    % System 3
    \oneVoice b2 r8 b16_\pp d |
    <c d>2.\< |
    <d g b>2_\p\! r4 |
    e8._\pp( fs16  e8. d16 c8. b16 |

    % Page 2 System 1 bar 15
    a2.) |
    <e' g c e>2. |
    c'4_\p <c, fs>2 |
    c4_\pp <fs, a b>2 |

    % System 2 bar 19
    <gs b>4   e16 fs gs b   <fs a b>4 |
    <g b>8 b16( cs e fs gs b) <fs a b>4 |
    <gs b>8 b16( cs e fs gs b) <e, g c>4~ |

    % System 3 bar 22
    <e g c>8 <fs a>8 <e g>8 <e, a cs e>4. |
    <c e g c>8( <d fs a>8 <e g>) <e a>4 g16 <fs a>16 |
    <b, e>8._\pp( <fs d'>16 <e b'>8 <e d'> <b' e> <d g> |
    <b e>8 <g d'> <e b'>4 <g c>4) |
    <b e>8.( <g d'>16 <b e>8 <d g> <d e b'> <e g d'> |

    % Page 3 system 1 bar 27
    <b' e b'>8 <g d' g>) <c, b'>4 <a d>4 |
    <g c e g>2.~ |
    <g c e g>2. |
    g'2 a4 |
    <g b>2. |
    <d g>2. |

    % System 2 bar 33
    <c e>8._\pp <d fs>16 <c e>8. <b d>16 <a c>8. <g b>16 |
    <fs a>8. <g b>16 <a c>8. <g b>16 <fs a>8. <g b>16 |
    e'16 d-. e-. g-. a-. c-. d-. e-. \times 2/3 { g8-. a-. c-. } |
    << { \voiceOne <g b d g>2.~ | <g b d g>2. } 
       \new Voice { \voiceTwo s2. | <d, d'>4\arpeggio r4 r4 } >> |
   \oneVoice <g' b d g>2.~\arpeggio |
   <b d>4 r4 r4 \bar "|."
}

lefthand = {
    % System 1
    \prefix \clef bass R2. |
    r4           r4           r8 <c e>8_\p |
    <g d'>2.~        |
    <g d'>2                   r4   |
    <d' a'>4.        <b fs' b>8 <e b'>8 <g b>8 |

    % System 2
    <d a'>4   <b fs' b>4     <e, b' e>4~ |
    <e b' e>4  r4        r4    |
    <es' g b>2_\p        <g a>4  |
    <f g b>4 < g a>4 
    <<            { \voiceOne  e4(      | d2.~) | 
    % System 3
        d2. | <d a'>2. | <d g b>2.      }
       \new Voice { \voiceTwo  r8 d,8(  | g2.)~ | 
    % System 3
       g2. | <g, d' g>2.~ | g2 g4        }
       \new Voice { \voiceThree s4      | s2.   | 
    % System 3
       g''8 fs16 e d4~ d16 c b a | s2. | s2. }
    >>
    \oneVoice  <g' c>8.( <a d>16 <g c>8. <fs b>16 <e a>8. <d g>16 |

    % Page 2 System 1 bar 15
    << { \voiceOne <c f>2.) } \new Voice { \voiceTwo r4 \ottava #-1 g,2 \ottava #0 } >>
    \oneVoice <g'' c>2. |
    <fs c' e>4_\p  <d a'>2 |
    <a e' g>4 <<
      { \voiceOne b8 r8 b4~ | b8 b16 cs16 b2 }
      \new Voice { \voiceTwo b,2 | e2. } >> |
    \oneVoice
    % Bar 20
    <e b>8    b'16( cs e fs gs b) <e, cs'>8 e'16 cs |
    <e, b' e>8 b'16( cs \clef treble e fs gs b) <c, e g c>4~ |

    % System 3 bar 22
    <c e g c>8 <d fs a b>8 <e g b>8 \clef bass <e, a cs>4. |
    <c g>8( <d a>8 <e b>8)  <a cs>4 d,8 |
    <g, d'>8._\pp <e b'>16 <d a'>8 <e b'>8 <g d'>8 <b e>8 |
    <g d'>8 <e b'>8 <c g'>4 <d a'>4 |
    <g d'>8.( <b e>16 <d g>8 <e b'>8 g b |

    \set Staff.pedalSustainStyle = #'mixed

    % Page 3 System 1 bar 27
    <g d'>8 <e b'>8) <a, e' g>4( <d fs>4) |
    <c, g' c>2.~\sustainOn_\pp |
    <c g' c>2.~ |
    <c g'' c e>2.\sustainOff |
    <e b' g' b e>2. |
    <g d' b'>2. |

    % System 2 bar 33
    g'8. a16 g8. fs16 e8. d16 |
    c8. d16 e8. d16 c8. d16 |

    % System 3 bar 35
    <e a c>2.  |
    \clef treble
    <g d' g b d>2.~\sustainOn |
    <g d' g b d>2.~ |
    <g d' g b d>2.~ |
    <g d' g b d>4\sustainOff r4 r4 \bar "|."
}



\header {
    title = "Girl with Flaxen Hair"
    composer = "Claude Debussy"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  <<
    \new Staff = "clar" << \notation \relative c'' \clar >>
    \new PianoStaff <<
      \new Staff = "upper" \transpose g f  << \notation \relative c' \righthand >>
      \new Staff = "lower" \transpose g f  << \notation \relative c  \lefthand >>
    >>
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner
          #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
%  \midi {}
}


