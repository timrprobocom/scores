\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

global = {
  \time 4/2
  \tempo "Adagio" 2=100
  \set Score.markFormatter = #format-mark-box-alphabet
}

scoreAClarinetI = \relative c'' {
    \global
    \key c \minor
    % Music follows here.
    c\breve~\pp\< |
    c4(\! b c d b c d c |
    d4\< ef c d ef d ef f |
    \time 5/2
    d1.)\!\p d1 |
    \time 4/2
    c1~(c4 c d ef |
    c bf af g f ef d ef |
    f g af bf c bf g af |
    g1) c~( |
    c4 b c d b c d c |

    % Page 2

    d4 ef c d ef d ef f |
    d4\< af' af1.) |
    g1.\! df'2 |
    % A
    \mark \default
    c1~c4 c, ef d |
    bf2. bf4 c2 d2 |
    
    \time 6/2
    ef2. d4 c d c2. c4\> bf c |
    \time 4/2
    df4\! c bf af c2 bf4 c |
    bf2. af4 g af bf2 |
    af1\< af4 af\! c\< bf |
    
    % B
    \mark \default
    g1 r2 c2 |
    b2. b4 c1 |
    d2\< g ef d4 ef |
    f1~\!\mf f4 f e f |
    e1~\>e2. e4\! |
    
    % Page 3
    
    af4\p( g f ef df2. ef4 |
    c4 df bf c df c df ef |
    \time 6/2
    c1.) r4 df4\mf df2 c2 |
    
    \time 4/2
    bf1\> bf4 af g af |
    % Bar C
    \mark \default
    g1\!\p r2 af2 |
    g\breve |
    g1~g4 f2 ef4 |
    
    \time 5/2
    f1 bf1 bf2 |
    \time 4/2
    af\breve~ |
    af\breve~ |
    af\breve |
    g1 r2 af |
    
    % Page 4
    g\breve~ |
    g1~\< g4 f2 ef4\! |
    \mark \default
    R\breve\mf |
    f4 f'4 f1.~ |
    f4\< e( f g e f g f |
    
    g4 af f g af g af bf)\! |
    g\breve\f |
    \time 3/2
    g2 g1 |
    \time 4/2
    f1~f4 af g af |
    g1. c,2 |
    bf1. \cresc ef2 |
    d2 g ef2. f4~ |
    f4 ef f g ef f g f\! |
    
    % Page 5
    
    g4( af\< f g af-- g-- af-- b--)\! |
    c\breve~\fff |
    c1 c1 |
    bf\breve~ |
    bf1\fermata r2\fermata c,2\ppp \bar "||" |
    \mark \default
    bf1. bf2 |
    gs1. cs2 |
    fs,1 g1 |
    
    r1 c1~ |
    c4 b( c d b c d c |
    d4\< ef c d ef d ef f)\! |
    \time 5/2
    d1. d1\> |
    \time 4/2
    c1~\! c4 ef d c |
    
    d4\< ef f g af\!\> g f ef |
    d c bf af c bf g\! af |
    g1\p r2 af2 |
    g\breve |
    g1 r2 af2\pp |
    g\breve~ |
    
    % Page 6
    
    g\breve \breathe |
    g\breve \bar "|."
}


scoreAClarinetII = \relative c'' {
    \global
    \key g \minor
    % Music follows here.
    r1 ef1\pp\< |
    d\breve\! |
    d1~\< d4 c2 bf4 |
    \time 5/2
    c1.\!\p r2 bf2 |
    \time 4/2
    bf\breve~ |
    bf\breve~ |
    bf1 a1~ |
    a1 r2 \pp\< ef'2 |
    d\breve~\! |
    
    % Page 2
    
    d1~d4 c2 bf4 |
    c1 a4\p\< a' a2~ |
    a2\!\> af1 r2 |
    R\breve |
    r1\p c,2\< f,2 |

    \time 6/2    
    f1.\! g2 r1 |
    \time 4/2
    R\breve |
    af2\p c1 bf2~ |
    bf2 af4 g g2 c |
    
    \mark \default
    bf1 r2 ef,2 |
    fs1 a2 r2 |
    R\breve |
    R\breve |
    R\breve |
    
    % Page 3

    d'\breve~ |
    d1 ef,2 f |
    \time 6/2
    ef1. ef1. |
    
    \time 4/2
    f1 af1 |
    \mark \default
    g2. a4 g a bf2 |
    a1~ a4 a c bf |
    g\breve
    
    \time 5/2
    f1 r2 r2 bf2 |
    \time 4/2
    bf\breve |
    bf\breve |
    bf1 a2. g4 |
    fs1 r2 bf2 |
    
    % Page 4
    
    a\breve |
    a2\< bf g1 |
    \mark \default
    c\breve\!\mf |
    f,1 af'1 |
    g1~ g4 g bf af |
    
    f2.\< f4 g2 a2 |
    bf1~\!\f bf4 a( g a |
    \time 3/2
    g2. g,4 f g |
    \time 4/2
    af4 g f ef c1~) |
    
    c4 bf( c d bf c d c |
    d4\cresc ef c d ef d ef f |
    d2) a'1 g2~ |
    g1 a1\! |
    
    % Page 5
    
    a1 bf2\< c |
    d1\!\fff ef1~ |
    ef1 af,1~ |
    af\breve~ |
    af1\fermata r2\fermata ef2\ppp \bar "||" |
    \mark \default
    df1. cs2 |
    b1. ds2 |
    e,1 fs1 |
    
    r1 r2 bf'2\p |
    a\breve |
    d1~\< d4 c2 bf4\! |
    \time 5/2
    c1 r1 bf2 |
    \time 4/2
    b\breve |
    
    g\breve~ |
    g\breve |
    fs1\p g~ |
    g4 fs g a fs1 |
    fs1 r2 bf\pp |
    a\breve |
    
    % Page 6
    a\breve \breathe |
    a\breve \bar "|."
    
}


scoreAClarinetIII = \relative c' {
    \global
    \key c \minor
    % Music follows here.
    r1 ef1\pp\< |
    d\breve~\! |
    d2\< c1. |
    \time 5/2
    d1.\!\p r2 d2 |
    \time 4/2
    c\breve~ |
    c\breve~ |
    c\breve |
    b1 r2 \pp\< ef2 |
    d\breve~\! |

    % Page 2
    
    d2 c1. |
    d\breve |
    f'\breve\pp\< |
    
    % Bar A
    \mark \default
    f4\!( e f g e f\< g f |
    g4 af f g af g af bf)\! |
    \time 6/2
    g1.\mf g2 g1 |
    \time 4/2
    f1~ f4( f g af |
    f ef d c bf af g af |
    bf c d ef f ef c d) |
    
    %  Bar B
    \mark \default
    c1 f1~ |
    f4( ef\< f g ef f g f |
    g4 af g f af g af bf |
    g4 cs cs1.)\!\mf |
    c1.\> g2\! |
    
    % Page 3
    f1~\p f2\< af4 g |
    ef2.\!\< ef4 f2 g2\! |
    \time 6/2
    af2.( g4 f g f2. f4\< ef f |
    
    \time 4/2
    gf4 f ef df\! f1\> |
    \mark \default
    e1)\! c2 f,2 |
    g\breve |
    af\breve |
    
    \time 5/2
    bf1 r1 g2 |
    \time 4/2
    af\breve |
    f\breve~ |
    f\breve |
    g1 r2 f2 |
    
    % Page 4

    g\breve |
    af \breve |
    \mark \default
    bf1 d,4 d'4 d2 |
    f1 g1~ |
    g1 c,1 |
    
    d1\< ef2 f2 |
    g\breve\!\f |
    \time 3/2
    ef1. |
    \time 4/2
    af1 af1 |
   
    d,1 g1~ |
    g1\cresc c,1~ |
    c4 b( c d b c d c |
    d4 ef c d ef d ef f)\! |
    
    % Page 5

    d2-- g-- ef--\< f--\! |
    g1\fff ef'~ |
    ef1 c1 |
    bf\breve~ |
    bf1\fermata r2\fermata cs,2~\ppp \bar "||" |
    \mark \default
    cs1. bf2 |
    af1. e2 |
    d1~d1 |

    r1 c'1~\mp |
    c4 b( c d b c d c |
    d4\< ef c d ef d ef f)\! |
    \time 5/2
    d1. d1\> |
    \time 4/2
    c1~c4\! ef d c |
    
    d4\< ef f g af\! g f ef\< |
    d c bf af c bf g af\! |
    g1\p r2 ef'2 |
    d\breve |
    d1 c1~\pp |
    c2 b c d |
    b\breve \breathe |
    b\breve \bar "|."
}


scoreABassClarinet = \relative c' {
    \global
    \key g \minor
    % Music follows here.
    r1 c1\pp\< |
    d\breve~\! |
    d2\< ef1. |
    \time 5/2
    f1.\!\p r2 d2 |
    \time 4/2
    ef\breve |
    c\breve~ |
    c\breve |
    d1 r2 \pp \< c2 |
    d\breve\! |

    % Page 2
    
    a'2 ef1. |
    f\breve~ |
    f\breve~ |
    \mark \default
    f1 ef1 |
    d1 c1 |
    
    \time 6/2
    bf1. ef1.\> |
    \time 4/2
    af1\! c,1 |
    f1 bf,1 |
    c\breve |
    
    \mark \default
    g'1 r2\p c,2\< |
    d1 ef1 |
    f1 g1\! |
    af2\mf\< d,4 f'4\! f1~ |
    f1 f,1 |
    
    % Page 3
    
    e1\p f |
    g1 f1 |
    \time 6/2
    c1. af'1. |
    \time 4/2
    df,1 af'2. f4 |
    \mark \default
    g1 g'1~\p\< |
    g4 fs( g a fs g a g |
    a4 bf g a bf a bf c)\! |
    
    \time 5/2
    a1.\mf a1\> |
    \time 4/2
    g1~\!\p g4 g( a bf |
    g4\< f ef d c bf a bf |
    c4 d ef f\! g f\< d ef |
    d1)\p g1~\< |
    
    % Page 4
    g4 fs( g a fs g a g |
    a4 bf g a bf a bf c)\! |
    \mark \default
    a\mf ef'4 ef1. |
    d1 f,,1~ |
    f1 ef1 |
    
    d1\< c1 |
    bf\breve\!\f |
    \time 3/2
    ef1. |
    \time 4/2
    ef'1~ ef4 c2 c4 |
    
    fs,1 g |
    a1\cresc bf |
    d1 ef~ |
    ef1 f\! |
    
    % Page 5
    
    g1.\< af2 |
    bf1\!\fff ef1~ |
    ef1 c1 |
    df\breve~ |
    df1\fermata r2\fermata c2\ppp \bar "||" |
    \mark \default
    df1. af2 |
    b1. gs2 |
    a1 d,1 |
    
    r1 r2 c2\p |
    d\breve~ |
    d2\< ef1. |
    \time 5/2
    f1.\! r2\> d2 |
    \time 4/2
    ef\breve\! |
    
    c\breve~ |
    c\breve |
    d1\p r2 c2 |
    d\breve |
    d1 r2 c2\pp |
    d\breve~ |
    
    % Page 6
    d\breve \breathe |
    d\breve \bar "|."
}


scoreAClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  midiInstrument = "clarinet"
} \transpose bf bf \scoreAClarinetI

scoreAClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  midiInstrument = "clarinet"
} \transpose bf ef \scoreAClarinetII

scoreAClarinetIIIPart = \new Staff \with {
  instrumentName = "Clarinet III"
  midiInstrument = "clarinet"
} \transpose bf bf \scoreAClarinetIII

scoreABassClarinetPart = \new Staff \with {
  instrumentName = "Bass clarinet"
  midiInstrument = "clarinet"
} \transpose bf ef \scoreABassClarinet

xtitle = "Adagio for Strings"
xcomposer = "Samuel Barber"
xarranger = "arr Jasmine Mills"


\bookpart { 
    \header {
      title = \xtitle
      instrument = "for Clarinet Quartet"
      composer = \xcomposer
      arranger = \xarranger
      tagline = ##f
    }
    
    \score {
      <<
        \scoreAClarinetIPart
        \scoreAClarinetIIPart
        \scoreAClarinetIIIPart
        \scoreABassClarinetPart
      >>
      \layout { }
      \midi { }
    }
}

\paper {
    raggied-bottom = ##t
}

\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bb Clarinet 1"
      tagline = ##f
    }
    \score { \scoreAClarinetIPart }
}


\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bb Clarinet 2"
      tagline = ##f
    }
    \score { \scoreAClarinetIIPart }
}

\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bb Clarinet 3"
      tagline = ##f
    }
    \score { \scoreAClarinetIIIPart }
}

\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bass Clarinet"
      tagline = ##f
    }
    \score { \scoreABassClarinetPart }
}
