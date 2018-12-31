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

prefix = {
  \time 2/4
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
    \time 2/4
    \partial 8 s8 \mark "Briskly" |
    \repeat volta 2 {
        s2 * 4
        \bar "||"
        \mark \default
        s2 * 8
        \mark \default
        s2 * 8
        \mark \default
        s2 * 4
        \mark \default
        s2 * 3
    }
    \alternative { s2 s2 }
    \set Score.currentBarNumber = #34
    \mark \default
    s2 * 4 \bar "||"
    \mark \default
    s2 * 8
    \mark \default
    s2 * 8
    \mark \default
    s2 * 8
    \mark \default
    s2 * 5
    \bar "|."
}


righthand = \relative c' {
    \prefix
    \clef treble
    \partial 8 c8 |
    \repeat volta 2 {
        f8 <c f a> g' <c, g' bf> |
        a'16 bf <ef, a c> a f8 <bf, d f>16 g' |
        <c, f a>8. <d bf'>16 <bf e g>8 <bf e g> |
        << { f'4. r8 } \\ { r8 <g, bf>-. <a c>-. r8 } >> \bar "||" |

    % Bar 5
        r8 <c f a> r8 <c g' bf> |
        r8 <ef a c> r8 <d f bf> |
        r8 <c f a> r8 < c ef a> |
        r8 <f g bf> <e g bf> <c e bf'> |
        
        r8 <c f a> r8 <c g' bf> |
        r8 <ef a c> r8 <d f bf> |
        r8 <c f a> r8 <c e bf'> |
        r8 <g bf f'>-- <a c f>-. r8 |

        % Page 4
        r8 <c f a> r8 <c g' bf> |
        r8 <ef a c> r8 <d f bf> |
        r8 <c f a> r8 < c ef a> |
        r8 <f g bf> <e g bf> < c e bf'> |
        
        r8 <c f a> r8 <c g' bf> |
        r8 <ef a c> r8 <d f bf> |
        r8 <c f a> r8 <c e bf'> |
        r8 <g bf f'>-- <a c f>-. r8 |

        % bar 21
        r8 <c f a> r8 <d f bf> |
        r8 <c f a> r8 <c f a> |
        r8 <c f a> r8 <c e bf'> |
        % Page 5
        r8 <c f a> <d f bf> <e g c> |

        % bar 25
        r8 <c f a> r8 <c e bf'> |
        r8 <c f a> r8 <d f bf> |
        r8 <c f a> r8 <c e bf'> |
    }
    \alternative {
        { r8 <c bf f'>-- <a c f>-. c | }
        { r8 <g bf f'>-- <a c f>-. r8 | }
    }
    % Page 6
    % bar 34
    \repeat unfold 3 {
    <c f a>8 <cs fs as> <d g b> <ds gs bs> |
    <e a cs> <ef af c> <d g b> < df gf bf> |
    }
    <c f a>8 <cs fs as> <d g b> <ds gs bs> |
    <e a cs> <f bf d> <fs b ds> <g c e> |
    <a c f>4-- <bf c g'>-- |
    <a c f>4-- <f bf f'>-- |
    <f a f'>4-- <g bf e>-- |
    r8 <g bf f'>-- <a c f>-. r8 |

    % Page 7
    % Bar 46
    <c, f a>4 <c g' bf>4 |
    <c f a>4 <bf f' bf>4 |
    <c f a>4 r4 |
    r8 <d f g bf>8-- <c e bf'>-. r8 |

    r8 <c f a> r8 <c g' bf> |
    r8 <ef a c> r8 <d f bf> |
    r8 <c f a> r8 <c e bf'> |
    r8 <d f bf>-- <c f a>-. r8 |

    % Bar 54
    r8 <c f a> r8 <d f bf> |
    r8 <c f a> r8 <c f a> |
    r8 <c f a> r8 <c e bf'> |
    r8 <c f a> <d f bf> <e g c> |

    r8 <c f a> r8 <c e bf'> |
    r8 <c f a> r8 <d f bf> |
    r8 <c f a> r8 <c e bf'> |
    r8 <c bf f>-- <a c f>-. r8 |

    % Bar 62
    r8 <c f a>  r8 <c g' bf> |
    r8 <c f a> <bf f' bf>4~ |
    <bf f' bf>4 r8 <bf f' bf>8 |
    <c f a>8 r8 <c e bf'>8 r8 |
    <c f a>4 <f a c f>8 r8
}

lefthand = \relative c, {
    \prefix
    \clef bass
    \partial 8 r8 |
    \repeat volta 2 {
        f4 e |
        ef d |
        c c |
        r8 c-- f-. r8 |

        % bar 5

        \repeat unfold 2 {
        f4 e | ef d | c fs | g c, |
        f4 e | ef d | c c | r8 c-- f-. r8 |
        }
        f4 bf | f c | f c | f c |
        % Bar 25
        f4 e | ef d | c c 
    }
    \alternative {
        {  r8 c-- f-. r8 | }
        {  r8 c-- f-. r8 | }
    }

    % Page 6 Bar 34
    f4 c | f c | f c | f c |
    % Bar 34
    f4 c | f c f f c c |
    f4 e | ef d | c c | r8 c-- f-. r8 |

    %Page 7 bar 46
    f4 e | ef d | c r | r8 g'8-- c,8-. r8 |
    f4 e | ef d | c c | r8 c-- f-. r8 |
    % Bar 54
    f4 bf | f c | f c | f c |
    f4 e | ef d | c c | r8 c-- f-. r8 |
    % Bar 62
    f4 e | ef d~ | d r8 d8 | c8 r c r | f4 f,8 r8
}



\header {
    title = "Glendy Burk"
    composer = "Stephen Foster"
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

