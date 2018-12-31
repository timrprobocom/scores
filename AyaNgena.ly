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
  \key a \major
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
  \override Staff.TimeSignature #'style = #'()
}

% Transpose from A to C 

notation = {
    \prefix
    s1 * 4
    \mark \default
    s1 * 12
    \mark \default
    s1 * 15
    \mark \default
    s1 * 9
    \mark \default
    s1 * 8
    \mark \default
    \repeat volta 2 {
        s1 * 3
    }
    \alternative { s1 s1 }
    \mark \default
    s1 * 7
    \mark \default
    s1 * 9
    \mark \default
    s1 * 8
    \bar "|."
}


righthand = \relative c' {
    \prefix
    <e a>8. <e a>16~<e a>8 <d fs> <d fs> <cs e> <b d> <a cs> |
    <gs b>8. <gs b>16~<gs b>8 <gs e'>8 <a d> <a cs> <a cs>4 |
    <e' a>8. <e a>16~<e a>8 <d fs> <d fs> <cs e> <b d> <a cs> |
    <gs b>8. <gs b>16~<gs b>8 <e a cs>8 <e a cs>2 |
    % Bar 5
    \clef bass
    <e a>8.\mp <e a>16~<e a>8 <cs e> <d fs> <cs e> r4 |
    <cs e>8. <cs e>16~<cs e>8 <cs e> <d fs> <e a> r4 |

    % Page 4 (bar 7)
    <e a>8.\mp <e a>16~<e a>8 <cs e> <d fs> <cs e> r8 <cs e> |
    <d fs>8 <d fs> <e gs>4 <cs e a> r4 |
    <a' cs>8. <a cs>16~<a cs>8 <e a>8 <fs b> <e a> r4 |
    <e a>8. <e a>16~<e a>8 <e a> <fs b> <a cs> r4 |
    <a cs>8. <a cs>16~<a cs>8 <e a>8 <fs b> <e a> r4 |
    <fs a>8 <fs a> <gs b>4 <e a cs>4 r4 |

    % Page 5 (bar 13)
    <a cs e>8. <a cs e>16~<a cs e>8 <e a cs> <fs b d> <e a cs> r4 |
    <e a cs>8.\cresc <e a cs>16~<e a cs>8\! <e a cs> <fs b d> <a cs e> r4 |
    <a cs e>8. <a cs e>16~<a cs e>8 <e a cs> <fs b d> <e a cs> r8 <e a cs> |
    <fs a d>8 <fs a d> <gs b e>4 <a cs e> \clef treble e'8 e |

    % Bar 17
    <d fs>8 <d fs>4 <d fs>8 <b gs'>8 <b gs'>4 <b gs'> 8 |
    <cs a'>8 <cs a'>4 <a e'>8~<a e'> <a e'> <cs a'> <cs a'>~ |

    % Page 6 (bar 19)
    <cs a'>8 <d fs>4 <d fs>8 <cs e>4 <b e>8 <cs e>8~ |
    <cs e>2 r4 <cs e>8 <cs e>8 |
    <d fs>8 <d fs>4 <d fs>8 <b gs'>8 <b gs'>4 <b gs'>8 |
    <cs a'>8 <cs a'>4 <a e'>8~<a e'>8 <a e'> <cs a'> <cs a'>~ |
    <cs a'>8 <d fs>4 <d fs>8 <cs e>4 <b e>8 <cs e>8~ |
    <cs e>2 r4 <a cs e>8 <a cs e> |

    % Page 7 (bar 25)
    <a d fs>8 <a d fs>4 <a d fs>8 <b e gs>8 <b e gs>4 <b e gs>8 |
    <cs e a>8 <cs e a>4 <a cs e>8~<a cs e>8 <a cs e> <cs e a> <cs e a>~ |
    <cs e a> <a d fs>4 <a d fs>8 <a cs e>4 <gs b e>8 <a cs e>8 |
    r8 <e' a>4 <e gs>8 <d fs>8 <cs e> <a cs e> <a cs e> |
    <a d fs>8 <a d fs>4 <a d fs>8 <b e gs>8 <b e gs>4 <b e gs>8 |
    <cs e a>8 <cs e a>4 <a cs e>8~<a cs e>8 <a cs e> <cs e a> <cs e a>~ |

    % Page 8 (bar 31)
    <cs e a> <a d fs>4 <a d fs>8 <a cs e>4 <gs b e>8 <a cs e>8 |
    % Bar 32
    \repeat unfold 2 {
    r4 <e' a cs>8 <e a e'>8~<e a e'>4 <e a>8 <e a>8~ |
    <e a>8 <fs b>4 <fs b>8 <e a>4 <cs e>8 <e a>8~ |
    <e a>2. <e a>8 <e a>8 |
    <e a>8 <d fs>4 <d fs>8 <cs e>4 <b e>8 <cs e>8 |
    }
    r8 <e a>4 <e gs>8 <d fs> <cs e> <a cs e> <a cs e> |

    % Bar 41
    <a d fs>8 <a d fs>4 <a d fs>8 <b e gs>8 <b e gs>4 <b e gs>8 |
    <cs e a>8 <cs e a>4 <a cs e>8~<a cs e>8 <a cs e> <cs e a> <cs e a>~ |
    % Page 10 (bar 43)
    <cs e a> <a d fs>4 <a d fs>8 <a cs e>4 <gs b e>8 <a cs e>8 |
    r8 <e' a>4 <e gs>8 <d fs>8 <cs e> <a cs e> <a cs e> |
    <a d fs>8 <a d fs>4 <a d fs>8 <b e gs>8 <b e gs>4 <b e gs>8 |
    <cs e a>8 <cs e a>4 <a cs e>8~<a cs e>8 <a cs e> <cs e a> <cs e a>~ |
    <cs e a> <a d fs>4 <a d fs>8 <a cs e>4 <gs b e>8 <a cs e>8 |
    r8 <a d fs>4 <a d fs>8 <a cs e>4 <gs b e>4 |

    % Page 11 Bar 49
    \repeat volta 2 {
        <a cs e>8._\mpmf <a cs e>16~<a cs e>8 <e a cs>8 <fs b d> <e a cs> r4 |
        <e a cs>8. <e a cs>16~<e a cs>8 <e a cs>8 <fs b d> <a cs e> r4 |
        <a cs e>8. <a cs e>16~<a cs e>8 <e a cs>8 <fs b d> <e a cs> r8 <e a cs>8 |
    }
    \alternative {
        { <fs a d>8 <fs a d> <gs b e>4 <a cs e> r4 | }
        % Page 12 bar 53
        { <fs a d>8 <fs a d> <gs b e>4 <a cs e> <a cs e>8\f <a cs e>8 | }
    }

    % Bar 54

    <a d fs>8 <a d fs>4 <a d fs>8 <b e gs>8 <b e gs>4 <b e gs>8 |
    <cs e a>8 <cs e a>4 <a cs e>8~<a cs e>8 <a cs e> <cs e a> <cs e a>~ |
    <cs e a> <a d fs>4 <a d fs>8 <a cs e>4 <gs b e>8 <a cs e>8 |
    r8 <e' a>4 <e gs>8 <d fs>8 <cs e> <a cs e> <a cs e> |
    % Page 13 (bar 58)
    <a d fs>8 <a d fs>4 <a d fs>8 <b e gs>8 <b e gs>4 <b e gs>8 |
    <cs e a>8 <cs e a>4 <a cs e>8~<a cs e>8 <a cs e> <cs e a> <cs e a>~ |
    <cs e a> <a d fs>4 <a d fs>8 <a cs e>4 <gs b e>8 <a cs e>8 |
    r4\mf <e' a cs>8 <e a e'>~<e a e'>4 <e a>8 <e a>8~ |
    <e a>8 <fs b>4 <fs b>8 <e a>4 <cs e>8 <e a>8~ |

    % Page 14 (bar 63)

    <e a>2. <e a>8 <e a>8~ |
    <e a>8 <d fs>4 <d fs>8 <cs e>4 <b e>8 <cs e>8 |
    r4 <e a cs>8 <e a e'>8~<e a e'>4 <e a>8 <e a>8~ |
    <e a>8 <fs b>4 <fs b>8 <e a>4 <cs e>8 <e a>8~ |
    <e a>2. <e a>8 <e a>8~ |
    <e a>8 <d fs>4 <d fs>8 <cs e>4 <b e>8 <cs e>8 |

    % Page 15 (bar 69)

    r8 <e a>4\< <e gs>8 <d fs> <cs e> <a cs e>\!\f <a cs e> |

    % Bar 70
    <a d fs>8 <a d fs>4 <a d fs>8 <b e gs>8 <b e gs>4 <b e gs>8 |
    <cs e a>8 <cs e a>4 <a cs e>8~<a cs e>8 <a cs e> <cs e a> <cs e a>~ |
    <cs e a> <a d fs>4 <a d fs>8 <a cs e>4 <gs b e>8 <a cs e>8 |

    % Page 16 (bar 73)

    r8 <e' a>4\< <e gs>8 <d fs> <cs e> <a cs e>\!\f <a cs e> |
    <a d fs>8 <a d fs>4 <a d fs>8 <b e gs>8 <b e gs>4 <b e gs>8 |
    <cs e a>8 <cs e a>4 <a cs e>8~<a cs e>8 <a cs e> <cs e a> <cs e a>~ |
    <cs e a> <a d fs>4 <a d fs>8 <a cs e>4 <gs b e>8 <a cs e>8 |
    r8 <a d fs>4-- <a d fs>8-- <a cs e>4-- <gs b e>8-- <a cs e>->
}


lefthand = \relative c, {
    \clef bass
    R1 |
    R1 |
    R1 |
    <e b'>8. <e b'>16~<e b'>8 a~a e e16 fs a8 |

    % Bar 5
    <a, a'>4 <a a'> <a a'> <a a'> |
    <a a'>4 <a a'> <a a'> <a a'> |
    % Page 4 (bar 7)
    <a a'>4 <a a'> <a a'> <a a'> |
    <d a'>4 <e b'> a8 e e16 fs a8 |
    <a, a'>4 <a a'> <a a'> <a a'> |
    <a a'>4 <a a'> <a a'> <a a'> |
    <a a'>4 <a a'> <a a'> <a a'> |
    <d a'>4 <e b'> a8 e e16 fs a8 |
    % Page 5 (bar 13)
    <a, a'>4 <a a'> <a a'> <a a'> |
    <a a'>4 <a a'> <a a'> <a a'> |
    <a a'>4 <a a'> <a a'> <a a'> |
    <d a'>4 <e b'> a4 <cs, cs'>4 |

    % Bar 17
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <cs cs'> <cs cs'> |

    % Page 6 (bar 19)
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <a a'> <cs cs'> |
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <cs cs'> <cs cs'> |
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <a a'> <cs cs'> |
    % Page 7 (bar 25)
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <cs cs'> <cs cs'> |
    <d d'>4 <d d'> <e e'> <e e'>8 <a, a'>8 |
    r2 r4 <cs cs'>4 |
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <cs cs'> <cs cs'> |
    % Page 8 (bar 31)
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>1~ |
    <a  a'>2. r8 a'8~ |
    a8 e fs4 e4 <a, a'>4~ |
    <a a'>2. <e' e'>4 |
    <a, a'>1~ |
    % Page 9 (bar 37)
    <a  a'>2. r8 a'8~ |
    a8 e fs4 e4 <a, a'>4~ |
    <a a'>2. <e' e'>8 <a, a'>8 |
    r2 r4 <cs cs'>4 |
    % Bar 41
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <cs cs'> <cs cs'> |
    % Page 10 (bar 43)
    <d d'>4 <d d'> <e e'> <e e'>8 <a, a'>8 |
    r2 r4 <cs cs'>4 |
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <cs cs'> <cs cs'> |
    <d d'>4 <d d'> <e e'> <e e'>8 <a, a'>8 |
    r8 <d d'>4 <d d'>8 <e e'>2 |
    \repeat volta 2 {
        <a, a'>4 <a a'> <a a'> <a a'> |
        <a a'>4 <a a'> <a a'> <a a'> |
        <a a'>4 <a a'> <a a'> <a a'> |
    }
    \alternative {
        { <d a'>4 <e b'> a8 e e16 fs a8 | }
        { <d, a'>4 <e b'> a4 <cs, cs'>4 | }
    }
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <cs cs'> <cs cs'> |
    <d d'>4 <d d'> <e e'> <e e'>8 <a, a'>8 |
    r2 r4 <cs cs'>4 |

    % Page 13 (bar 58)
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <cs cs'> <cs cs'> |
    <d d'>4 <d d'> <e e'> <e e'> |
    % Bar 61
    <a, a'>1~ |
    <a a'>2. r8 a'8 |

    % Page 14 (bar 63 )
    a8 e fs4 e4 <a, a'>4~ |
    <a a'>2. <e' e'>4 |
    <a, a'>1~ |
    <a a'>2. r8 a'8 |
    a8 e fs4 e4 <a, a'>4~ |
    <a a'>2. <e' e'>8 <a, a'>8 |
    
    % Page 15 (bar 69)
    r2 r4 <cs cs'>4 |
    % Bar 70
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <cs cs'> <cs cs'> |
    <d d'>4 <d d'> <e e'> <e e'>8 <a, a'>8 |

    % Page 16 (bar 73)
    r2 r4 <cs cs'>4 |
    <d d'>4 <d d'> <e e'> <e e'> |
    <a, a'>4 <a a'> <cs cs'> <cs cs'> |
    <d d'>4 <d d'> <e e'> <e e'>8 <a, a'>8 |
    r8 <d d'>4-- <d d'>8-- <e e'>4-- <e e'>8-- <a, a'>8->
}





\header {
    title = "Aya Ngena"
    composer = "Traditional Zulu Folk Song"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  \new PianoStaff <<
    \new Staff = "upper" \transpose a c'  << \notation \righthand >>
    \new Staff = "lower" \transpose a c'  << \notation \lefthand >>
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

