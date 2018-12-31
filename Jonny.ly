\version "2.16.0"
\include "english.ly"

%{
    Comments
%}


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
  \key e \major
  %% \set Score.markFormatter = #format-mark-box-barnumbers
  %% \override Score.BarNumber #'self-alignment-X = #0
  %% \override Score.BarNumber #'self-alignment-Y = #1
  %% \set Score.skipBars = ##t
  %% \override MultiMeasureRest #'expand-limit = #1
  %% \override Staff.TimeSignature #'style = #'()
}

\parallelMusic #'( righttop rightbot lefttop leftbot ) {
    \prefix \clef treble gs4 a4 a2 |
    \prefix \clef treble e4 ds4 e2 |
    \prefix \clef bass b2 cs2 |
    \prefix \clef bass e2 e2 |

    gs2 f2 |
    e2 ds2 |
    b2 b2 |
    gs,2 b2 |

    e fs |
    b cs |
    gs a |
    cs fs, |

    ds4 a'4 gs2 |
    ds2 cs2 |
    b2 cs2 |
    fs2 e2 |

    g2 a2 |
    fs2 fs2 |
    cs2 ds2 |
    e2 b'2 |

    gs2 a2 |
    e2 fs2 |
    cs2 ds2 |
    b2 b2 |

    %% Line 2

    b2 b2 |
    fs2 gs2 |
    ds2 e2 |
    ds2 e2 |

    b2 b2 \bar "||" |
    e2 fs2 \bar "||" |
    e2 ds2 \bar "||" |
    gs2 b,2 \bar "||" |

    \key e \minor b2 f'2 |
    \key e \minor g2 a2 |
    \key e \minor e2 c2 |
    \key e \minor e2 a,2 |

    d4 fs4 e2 |
    b2 as2 |
    d2 fs2 |
    b2 c2 |

    e2 e2 |
    g2 b2 |
    d2 a'4 g4 |
    g2 e'2 |

    %% Line 3

    fs2 e2 |
    b2 a2 |
    d2 cs2 |
    b2 cs2 |

    e4 fs4 g2 |
    g2 a2 |
    b2 c2 |
    e2 e2 |

    d2 bf2 |
    b2 g2 |
    e2 df2 |
    g,2 g'2 |

    c2 c2 |
    d2 fs2 |
    e2 d2 |
    a2 e2 |

    e2 fs2 |
    b2 g2 |
    e4 d4 e2 |
    b2 b2 |
    
    e1 \bar "|." |
    a2 g2 \bar "|." |
    d2 e2 \bar "|." |
    e1 \bar "|." |
}






\header {
    title = "Composition 1"
    composer = "Jonny Roberts"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  \new PianoStaff <<
    \new Staff = "upper" \transpose a a  << \relative c'' \righttop \\ \relative c' \rightbot >>
    \new Staff = "lower" \transpose a a  << \relative c' \lefttop \\ \relative c \leftbot >>
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner
          #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
  \midi {}
}

