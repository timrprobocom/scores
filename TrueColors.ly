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

prefix = {
  \time 4/4
  \key f \major
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
  \override Staff.TimeSignature #'style = #'()
}

% Transpose from F to Eb

notation = {
    \prefix
    s1 * 6
    \mark \default
    s1 * 8
    \mark \default
    s1 * 6
    \mark \default
    s1 * 7
    \mark \default
    s1 * 8
    \mark \default
    s1 * 6
    \mark \default
    s1 * 7
    \mark \default
    s1 * 8
    \mark \default
    s1 * 8
    \mark \default
    s1 * 7
    \bar "|."
}


righthand = \relative c' {
    \prefix
    <f c>8\mp c f g~g c, g' c |
    <f, a> bf c <d, f bf>~<d f bf> a' f4 |
    <f c>8 c f g~g c, g' c |
    <c, f a>4. <c d f>8~<c d f>2 |
    <f' c'>2 <d bf'>2 |
    << { <bf f'>2 <f c'>2 } \\ { r2 r8 g g f } >> |
    % Bar 7
    <c f>2 <c g'>2 |
    <c f a>4. <c f c'>8 ~ <c f c'>8 c f c' |
    <c, d f>2~ <c d f>8 c d f |
    <c f g>4. <d e g>8~<d e g>2 |
    <a c f>2 <bf d f>2 |

    % Page 3
    <c f>4. <c d f>8~<c d f>2 |
    <a d f>2 <g c e>2 |
    <bf d f>8 <bf d f>4 <a c f>8~<a c f>8 f'16 f16 a8 c8 |
    % Bar 15
    <d, f bf>8 d f <d f bf>8~<d f bf>8 <c f a>4 <c f a>8~ |
    <c f a>8 <c e g>8 <c e g>4~<c e g>8 f a c |
    <f, bf d>8 f bf <f a c>8~ <f a c>8 f a c |
    <f, bf d>8 f bf <f bf d>8~ <f bf d>8 <e g c>4. |
    <d f bf>4. <c f a>8~<c f a>8 c f a |
    <bf, d g>8 <bf d g>4 <a d f>8~<a d f>8 a d f |

    % Page 4
    % Bar 21
    <bf, d f>4. <a c f>8~<a c f>8 a c f |
    <bf, d f>4. <a c f>8~<a c f>8 <c f a>4. |
    <c f g c>4 c'16 g f c <c e g c>2 |
    <c f>8 c f g~g c, g' c |
    <f, a>8 bf c <d, f bf>8~<d f bf>8 a' f4 |
    <c f>8 c f g~g c, g' c |
    <c, f a>4. <c d f>8~<c d f>2 |

    % Bar 28
    <c f>2 <c g'> 2 |
    <c f a>4. <c f c'>8~ <c f c'>8 c f c' |
    <c, d f>2~ <c d f>8 c d f |
    <c f g>4. <d e g>8~<d e g>2 |
    % Page 5
    <a c f>2_\piu <bf d f> |
    <c f>4. <c d f>8~<c d f>2 |
    <a d f>2 <g c e>2 |
    <bf d f>8 <bf d f>4 <a c f>8~<a c f>8 f'16 f16 a8 c |
    % Bar 36
    <d, f bf>8 d f <d f bf>8~<d f bf>8 <c f a>4 <c f a>8~ |
    <c f a>8 <c e g>8 <c e g>4~<c e g>8 f a c |
    <f, bf d>8 f bf <f a c>8~ <f a c>8 f a c |
    <f, bf d>8 f bf <f bf d>8~ <f bf d>8 <e g c>4. |
    <d g bf>4. <c f a>8~<c f a>8 c f a |

    % Page 6
    <bf, d g>8 <bf d g>4 <a d f>8~<a d f>8 a d f |
    % Bar 42
    <bf, d f>4. <a c f>8~<a c f>8 a c f |
    <bf, d f>4. <a c f>8~<a c f>8 <c f a>4. |
    <c f g c>4 c'16 g f c <c e g c>2 |
    <c f>8 c f g~g c, g' c |
    <f, a>8 bf c <d, f bf>8~<d f bf>8 a' f4 |
    <c f>8 c f g~g c, g' c |
    <c, f a>4. <c d f>8~<c d f>4 <bf d f>8 <bf d f>8 |
    % Bar 49
    \repeat unfold 2
    {
    <bf d g>4.\p <bf d g>8~<bf d g>8 <a c f>4. |
    <bf d g>4. <a c f>8~<a c f>16 <bf d g> <c f a>8~<c f a>4 |
    }
    \repeat unfold 2
    {
    <d f bf>4. <d f bf>8~<d f bf>8 <c f a>4. |
    <d f bf>4. <c f a>8~<c f a>16 <d f bf> <f a c>8~<f a c>4 |
    }
    % Bar 57
    <d f bf>8 d f <d f bf>8~<d f bf>8 <c f a>4 <c f a>8~ |
    <c f a>8 <c e g>8 <c e g>4~<c e g>8 f a c |
    <f, bf d>8 f bf <f a c>~<f a c> f a c |
    <f, bf d>8 f bf <f bf d>8~<f bf d>8 <e g c>4. |

    % Page 7
    <d f bf>4. <c f a>8~<c f a>8 c f a |
    <bf, d g>8 <bf d g>4 <a d f>8~<a d f>8 a d f |
    <bf, d f>4. <a c f>8~<a c f>8 a c f |
    <bf, d f>4. <a c f>8~<a c f>8 <c f a>4. |
    % Bar 65
    <bf d f>4. <a c f>8~<a c f>8 a c f |
    <bf, d f>4. <a c f>8~<a c f>8 <c f a>4. |
    <c f g c>4 <c f g c>4 c'16 g f c c' g f c |
    <c e g c>2._\rit r8 f16\p e |
    f8 d4.~d2 |
    f8 c f c' g c, g' c |
    <f, a>8. <f c'>16~<f c'>8 <f bf c d>8~<f bf c d>2\fermata |
}


lefthand = \relative c {
    \clef bass
    d4. d8 e4. e8 |
    f4. bf8~bf4. bf8 |
    d,4. d8 e4. e8 |
    f8. a,16~a8 bf8~bf4. bf8 |
    bf4. bf8 bf2 |
    bf4. bf8 bf2 |

    % Bar 7
    d4. d8 e4. e8 |
    f4. a8~a4. f8 |
    bf,4. bf8~bf2 |
    d4. c8~c4 c4 |
    f,4. f8 g4. g8 |

    % Page 3
    a4. bf8~bf4 bf4 |
    d4. d8 c4. c8 |
    f,8 f4 f8~f4 f4 |
    % Bar 15
    bf4. f8~f8 f4 c'8 |
    c8 c,8 c4 c8 c4 a'8 |
    bf4. f8~f4 f4 |
    bf4. c8~c4 c8 a |
    bf4. f8~f4 f4 |
    bf8 bf4 d8~d4 d8 c8 |

    % Page 4
    % Bar 21
    f,8. f16~f8 f8~f4 f4 |
    f8. f16~f8 f8~f4 f4 |
    c'4. c8 <c, c'>2 |
    d'4. d8 e4. e8 |
    f4. bf8~bf4. bf8 |
    d,4. d8 e4. e8 |
    f8. a,16~a8 bf8~bf2 |

    % Bar 28
    d4. d8 e4. e8 |
    f4. a8~a4. f8 |
    bf,4. bf8~bf2 |
    d4. c8~c4 c4 |

    % Page 5
    f,4. f8 g4. g8 |
    a4. bf8~bf4 bf4 |
    d4. d8 c4. c8 |
    f,8 f4 f8~f4 f4 |

    % Bar 36
    bf4. f8~f8 f4 c'8 |
    c8 c,8 c4~c8 c4 a'8 |
    bf4. f8~f4 f4 |
    bf4. c8~c4 c8 a |
    bf4. f8~f4 f4 |
    % Page 6
    bf8 bf4 d8~d4 d8 c8 |
    % Bar 42
    f,8. f16~f8 f8~f4 f4 |
    f8. f16~f8 f8~f4 f4 |
    c'4. c8 <c, c'>2 |
    d'4. d8 e4. e8 |
    f4. bf8~bf4. bf8 |
    d,4. d8 e4. e8 |
    f8. a,16~a8 bf8~bf4 c8 c8 |

    % Bar 49
    \repeat unfold 8 {
    f,,8 f'16 f f,8 f'8~f8 f8 f,8 f'8 |
    }
    % Bar 57
    bf4. f8~f f4 c'8~ |
    c8 c, c4 c8 c4 a'8 |
    bf4. f8~f4 f4 |
    bf4. c8~c4 c8 a |

    % Page 8
    bf4. f8~f4 f4 |
    bf8 bf4 d8~d4 d8 c |
    f,8. f16~f8 f8~f4 f4 |
    f8. f16~f8 f8~f4 f4 |
    % Bar 65
    f8. f16~f8 f8~f4 f4 |
    f8. f16~f8 f8~f4 f4 |
    c'4. c8 c4 c4 |
    <c, c'>2. r8 f'16 e |
    f8 d4.~d2 |
    d2 e2 |
    f8. a16~a8 bf8~bf2 \fermata
}





\header {
    title = "True Colors"
    composer = "Steinberg/Kelly"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  \new PianoStaff <<
    \new Staff = "upper" \transpose f ef << \notation \righthand >>
    \new Staff = "lower" \transpose f ef << \notation \lefthand >>
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

