%{
    Comments
%}

\version "2.16.0"
\include "english.ly"

#(set-default-paper-size "letter" )
% #(set-global-staff-size 24)

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

piu = \markup { \italic "piu mosso" }
rit = \markup { \italic rit. }
mpmf = \markup { \italic mp-mf  }

prefix = {
  \time 4/4
  \key g \major
  \set Score.markFormatter = #format-mark-box-numbers
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
  \override Staff.TimeSignature #'style = #'()
}

% Transpose from G to A 

% Boxes at 1 15 23 35 43  ||45  60 ||61  71 82|.
notation = {
    \prefix
    \mark \default
    \tempo Valiantly 4 =108
    s1 * 14
    \mark \default
    s1 * 8
    \mark \default
    s1 * 12
    \mark \default
    s1 * 8
    \mark \default
    s1 * 2 
    \bar "||"
    \key bf \major
    s1 * 15
    \mark \default
    s1
    \bar "||"
    \key g \major
    s1 * 10
    \mark \default
    s1 * 12
    \bar "|."
}


righthand = \relative c'' {
    \clef treble
    % Box 1 bar 1
    <b g'>4.\mp <c a'>8 <d b'>8 <e c'>4 <d b'>8 |
    <c a'>4 <b g'>4~<b g'>8 a' <b, g'>8 fs'8 |
    <g, e'>4. fs'8 <c g'>8 fs8 <g, e'>4 |

    <g a d>2 <fs a d>2\arpeggio |
    <d g b>4. <c a'>8 <d b'>8 <e c'>4 <d b'>8 |
    << { a'4 g8 a b a g fs } \\  { e2 e4 b4 } >> |

    << { e8 g4. g8 fs e4 } \\ {c2 c4 g4 } >> |
    <e' g>4 <fs a>4 <fs c'>8 b <d, a'> b' |
   
    % Page 2 bar 9
    <b, d g>4. <c a'>8 <d b'> <e c'>4 <b' d>8 |
    <a fs'>4. e'8 <b g'>8 fs' <a, e'> <b d> |

    <g c e>4. a8 <c, g'>8 a' <e b'> c' |
    << d2 \\ { b4 a4 } >> <fs d'>8 c' <d, b'> a' |

    <c, g'>4. g'8\cresc <g e'>\! d' <e, c'> b' |
    <d, a'>4. a'8 <a fs'> e' <a, d> b |

    % Page 4 bar 15
    <f a c>4. g8 <e g c>4 <e b'>8 c' |
    <fs, a d>8-> <fs a d>8-> <fs a d>8-> r8 \times 2/3 { <b d>4\f <b d> <a c> } |

    <d, a' c>4 <d g b>4~<d g b>8 <d g b>4 <d g b>8 |
    <d  g  b>4 <d g b>4~<d g b>8 <d g b>4 <g b d>8 |
    \times 2/3 { <g d'>4 <e c'> <d b'> } \times 2/3 { <e b'> <c a'> <e b'> } |

    <ef g a c>4. <ef c'>8 \times 2/3 { <ef c'>4 <f d'> <ef c'> } |
    <a c>4 <g b> <b, g'>8 a' <g b> c |
    <fs, a d>8-> <fs a d>8-> <fs a d>8-> r8 <c g' b>4 <d a'> |

    % Page 5 bar 23 box 3
    <b g'>4. <c a'>8 <d b'>8 <e c'>4 b'16 c |
    <b d>4 <d, b'>8 a'\> <d, b'>4 <c a'>\! |
    <b d g>4\mf <g' b d>~<g b d>8 <g c d>4 <g b>16 d' |

    <a b e>4 <g b e>~<g b e>8 <g b e>4 <g b>16 d' |
    <g, c e>4 <g c e>4~<g c e>8 <g c e>4 <g c>16 e' |

    <g, a d>4 <fs a d>4~<fs a d>8 <fs a d>4 <d b>16 a' |
    <b, d g>4\mf <g' b d>~<g b d>8 <g b d>4 <g b>16 d' |

    % Page 6 bar 30
    <a b e>4 <g b e>4~<g b e>8 <g b e>4 <g c>16 d' |
    <g, c e>4 <g c e>4~<g c e>8 <g c e>4 <c fs>16 g' |

    <b, d fs>4 <a d fs>4~<a d fs>8 <a d fs>4 <a e'>16 fs' |
    <c g'>4. c8 <c g'> e <g, d'> c |
    <a d>4. d8 <d a'>8 g <a, fs'> d |
    % Box 4
    <a c f>4. g'8 <g, c e>4. g'8 |

    % Page 7 bar 36
    <a, d fs?>8-> <a d fs>8-> <a d fs>8-> r8 \times 2/3 { <b d>4\f <b d> <a c> } |
    <d, a' c>4 <d g b>~<d g b>8 <d g b>4 <d g b>8 |
    <d  a' c>4 <d g b>~<d g b>8 <d g b>4 <g b d>8 |

    \times 2/3 { <g d'>4 <e c'> <d b'> } \times 2/3 { <e b'> <c a'> <e b'> } |
    <ef g a c>4. <ef c'>8 \times 2/3 { <ef c'>4 <f d'> <ef c'> } |
    
    <a c>4 <g b> <b, g'>8 a' <g b> c |
    <fs, a d>8-> <fs a d>8-> <fs a d>8-> r8 <c g' b>4 <d a'> |
    % Bar 5
    <b d g>4 <d g b>~<d g b>8 <g b d>4 b16 a |

    % Page 8 bar 44
    <d, g b>4 <c a'> <b g'>8 a' <d, b'> d' |
    \key bf \major
    <g, bf ef>2 g8 bf ef g |
    <a, c f>2 a8 c f  a |

    <c, d g>2 b8 d g a |
    <d, b'>4 a' <b, g'> d |
    <g, bf? ef>2 g8 bf ef g |

    <a, c f>2 g8 bf <g ef'> <a f'> |
    <bf d f>2 f8 bf d f |
    <bf, d f>4 <f d'>8 c' <f, d'>8 ef' <f, c' f>4 |

    % Page 9 bar 53
    <ef bf' ef>2 g8 bf ef g |
    <a, c f>2 bf8 c f a |
    <d, bf'>4 f8 bf <c, a'>4 d8 a' |

    <bf, d g>2 g8 bf d g |
    <bf, ef g>4~<bf d g>4 g8 bf <f d'> <bf f'> |
    <bf ef g>2 bf8 ef g bf |

    <d, g a>2 a8 d g a |
    % Box 6
    <a, d fs>4 <g e'>8 <a fs'> <g c g'>4 <a d a'> |

    % Page 10 bar 61
    \key g \major
    <d g b>2\f <d b'>8 <e c'>4 <d b'>8 |
    <fs a>4 <e g>4 <d b'>8 a' <b, g'> d |
    <g, e'>8 <c g'>4. <c g'>4. e8 |

    <e g>4 <fs a> <c a'>8 <d b'>8 <d fs c'>4 |
    <d g b d>2 <d b'>8 <e c'>4 <d b'>8 |
    <c a'>4 <b g'> <b e>8 g' <c, a'>8 <d b'>8 |

    <e c'>8 <d b'>8 <c a'>4 <c g'>8 a' <e b'>4 |
    <d b'>4 <c a'>8 g' <a, fs'>8 g' <d a'>4 |

    % Page 11 bar 69
    <c e g>4. c8 <g e'>8 fs' <c g'>4 |
    <d fs a>4. d8 <a fs'>8 g' <d a'>4 |

    % Box 7
    <c f a>4. <c e g>8 <c e g>4. <c e g>8 |
    <d fs? a>8-> <d fs a>8-> <d fs a>8-> r8 \times 2/3 { <d g b>4 <d g b> <c d a'> } |

    <c d a'>4 <b d g>4~<b d g>8 <b d g>4 <g b d>8 |
    <g b d>4 <d g b>4~<d g b>8 <d g b>4 <g b d>8 |

    % Page 12 bar 75
    \times 2/3 { <g d'>4 <e c'> <d b'> } \times 2/3 { <e b'> <c a'> <e b'> } |
    <ef g a c>4. <ef c'>8 \times 2/3 { <ef c'>4 <f d'> <ef c'> } |

    <a c>4 <g b> <b, g'>8 a' <g b> c |
    <fs, a d>8-> <fs a d>8-> <fs a d>8-> r8 <c g' b>4 <d a' d>4 |
    <g b d>2 <d g>8\< a' <d, b'> d'\! |

    <a c e>2->\ff <c e g>-> |
    <b d g>-> <d b'>8 <e c'>4 <d b'>8 |
    <d g b d>2-> <g,, b d g>4-> r4
}


lefthand = \relative c {
    \clef bass
    % Box 1
    g8 d' g2 fs,4 |
    e8 b' e fs g4 d,4 |
    c8 g' c d e4 c,4 |

    d8 a' d e d4 d,4 |
    g8 d' g2 fs,4 |
    e8 b' g'2 d,4 |

    c8 g' c d e4 c,4 |
    d8 a' d e d4 d,4 |

    % Page 2 bar 9
    g8 d' g2 fs,4 |
    e8 b' g'2 e,4 |

    a8 e' a2 a,4 |
    d,8 a' d e d4 d,4 |

    e8 c' e2 e,4 |
    fs8 d' fs2 fs,4 |

    % Page 4 bar 15 box 2
    f8 c' f4 e,8 c' g'4 |
    <d, d'>8-> <d d'>8-> <d d'>8-> r8 <d d'>2 |

    <g g'>4. d'8 <g, g'>4 d'4 |
    <f, f'>4. d'8 <f, f'>4 d'4 |
    <e, e'>2 <e e'>2 |

    ef8 c' ef4 <ef, ef'>2 |
    <d d'>4. <d d'>8 <d d'>4 <d d'>4 |
    <d d'>8-> <d d'>8-> <d d'>8-> r8 <e e'>4 <fs fs'>4 |

    % Page 5 bar 23 box 3
    g8 d' g2 d4 |
    g,8 d' g2 d4 |
    g,8 g'4 d8 g,4 fs4 |

    e8 e'4 b8 e,4 d4 |
    c8 c'4 g8 c,4 c'4 |

    d,8 d'4 e8 fs4 d4 |
    g,8 g'4 d8 g,4 fs4 |

    % Page 6 bar 30
    e8 e'4 b8 e,4 d4 |
    c8 c'4 g8 c,4 c'4 |

    d,8 d'4 e8 fs4 d, |
    e8 c'8 e4 c4 e,4 |

    fs8 d' fs4 d4 fs,4 |
    % Box 4
    f8 c' f4 e,8 c' g'4 |

    % Page 7 bar 36
    <d, d'>8-> <d d'>8-> <d d'>8-> r8 <d d'>2 |
    <g g'>4. d'8 <g, g'>4 d'4 |
    <f, f'>4. d'8 <f, f'>4 d'4 |

    <e, e'>2 <e e'>2 |
    ef8 c' ef4 <ef, ef'>2 |

    <d d'>4. <d d'>8 <d d'>4 <d d'>4 |
    <d d'>8-> <d d'>8-> <d d'>8-> r8 <e e'>4 <fs fs'>4 |
    % Box 5
    g8 g'4 d8 g4 d4 |

    % Page 8 bar 44
    g,8 g'4 g,8 g'4 f |
    \key bf \major
    ef8 ef4 bf8 ef,4 ef'4 |
    f8 f4 c8 f,4 f'4 |

    g8 g4 d8 g,4 d'4 |
    g8 g4 d8 g4 f4 |
    ef8 ef4 d8 c4 c,4 |

    f'8 f4 c8 f,4 f'4 |
    bf,8 bf4 f'8 bf4 f4 |
    bf,8 bf4 f'8 bf4 a4 |

    % Page 9 bar 53
    g8 g4 ef8 ef4 g4 |
    f8 f4 f8 ef4 f4 |
    bf,8 f'4. bf,8 f'4. |

    g,8 g4 d'8 g4 f4 |
    ef8 ef4 bf8 ef,4 d4 |
    c8 c4 c8 c'4 c,4 |

    d8 d4 a'8 d4 a4 |
    % Box 6
    <d, d'>4 <d d'> <e e'> <fs fs'> |

    % Page 10 bar 61
    \key g \major
    g8 d' g2 fs,4 |
    e8 b' e fs g4 d,4 |
    c8 g' c d e4 c, |

    d8 a' d e <a, g'>4 <d, d'>4 |
    g8 d' g2 fs,4 |
    e8 b' e fs g4 d,4 |

    c8 g' c d e4 c, |
    d8 a' d e fs4 d,4 |

    % Page 11 bar 69
    e8 c' e4 c4 e,4 |
    fs8 d' fs4 d4 fs,4 |

    % Box 7
    f8 c' f4 e,8 c' g'4 |
    <d, d'>8-> <d  d'>8-> <d  d'>8-> r8 <d d'>2 |

    <g  g'>4. d'8 <g, g'>4. d'8 |
    <f, f'>4. d'8 <f, f'>4. d'8 |

    % Page 12 bar 75
    <e, e'>2 <e e'> 2 |
    ef8 c' ef4 <ef, ef'>2 |

    <d d'>4.  <d d'>8 <d d'>4 <d d'>4
    <d d'>8-> <d d'>8-> <d d'>8-> r8 <e e'>4 <fs fs'>4 |
    g8 d' g a b4 g,4 |

    f8 c' f g f4 f,4 |
    g8 d' g a b4 d,4 |
    <g, g'>2-> <g, g'>4-> r4
}


\header {
    title = "We May Not Be Vampires"
    composer = "Mark Burrows"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  \new PianoStaff <<
    \new Staff = "upper" \transpose g a   << \notation \righthand >>
    \new Staff = "lower" \transpose g a   << \notation \lefthand >>
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

