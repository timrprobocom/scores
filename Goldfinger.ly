\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

global = {
  \key d \major
  \time 4/4
  \tempo "Boldly" 4=112
  \set Score.markFormatter = #format-mark-box-alphabet
}

scoreAClarinetI = \relative c' {
    \global
    \transposition c'
    % Music follows here.
    r2 r4 r8 g'8-.-^\f |
    b4.-> g8~g2\> |
    d'4.->\f bf8~->bf2~ |
    bf1\> \bar "||" |
    % Bar 5
    \mark \default
    d,2\mf a'8 g4. |
    R1 |
    a2( d2 |
    g,2.) r4 |

    % Page 2

    fs'1~ |
    fs8 r8 r4 r2 |
    r4 r8 d,8\mf( ef8 d4) ef8( |
    d2) a'2 |

    r2 r4 r8 g8-.-^\mf |
    b4.-> g8->~ g2\> |
    a2\!\mp( d2 |
    e2.) r4 |

    fs1~ |
    fs8 r8 bf,4-> bf-> bf-> |
    b!4-> r8 bf8( a4.) d,8 |
    \times 2/3 { f4( fs8~ } fs4.) r8 cs'8(\mf b) |

    % Page 3
    
    \repeat volta 2 {
        % Bar 21
        \mark \default
        \times 2/3 { a4 a fs } \times 2/3 { a a b  } |
        cs2. cs8( b) |
        \times 2/3 { a4 a fs } \times 2/3 { a a cs  } |
        e2. e8( d) |

        cs4 cs8 cs8~cs2 |
        \times 2/3 { cs4 d e } d8 a4. |
        b1( |
        bf1)  \bar "||"  |

        % Bar 29
        \mark \default
        r2 r4 r8 g8-.-^\mf |
        b4.-> g8~-> g2\> |
        a2(\!\mp d2 |
        e2.) r4 |

        % Page 5

        fs1~ |
        fs8 r8 bf,4->\f bf4-> bf4-> |
    } \alternative {
        { b1-> | r2 r4 cs8(\mf bf8) | }
        { b1-> | r4 r8 b8-> \times 2/3 { d4-> cs4-> a-> } | }
    }
    b1-> |
    r2 cs4-> a-> |
    b1~-> |
    b4 r4 d4-> e4-> |
    fs1-> \bar "|."
}





scoreAClarinetII = \relative c'' {
    \global
    \transposition c'
    % Music follows here.
    b4.->\f g8~->g2~ |
    g1\> |
    b4.->\!\f g8~->g4 r8 g8-.-> |
    b4.-> g8~\>g2 \bar "||" |
    % Bar 5
    \mark \default
    r2\! r8 bf,8-.\mf bf-. bf-. |
    ef4 ef8-. ef-. r8 ef8-. g16->( f ef f) |
    r4 a8 f g4. d8 |
    e4 e8 e8 c'4 b |

    % Page 2

    cs1~ |
    cs8 r8 bf4 bf4 fs4 |
    a1 |
    r2 d,4. d8 |

    d2 a'8 g4. |
    ef4 ef8-. ef-. r ef-. g16->( f ef f) |
    d4 a'8 f8 g4. d8 |
    \times 2/3 { e4 e4 e4 } c'4 b4 |

    cs1~ |
    cs8 r8 r4 r2 |
    fs,2\f( g2 |
    af2 g2) |

    % Page 3

    \repeat volta 2 {
        % Bar 21
        \mark \default
        fs1\mf |
        f4~->f8 f8~->f4 f4-.-^ |
        fs1 |
        f4~->f8 f8~->f4 f4-.-^ |

        e'2.( cs4 |
        f2.) f8( d) |
        e1(\fp |
        c1) \bar "||"
        
        % Bar 29
        \mark \default
        d,2\mf a'8 g4. |
        ef4 ef8-. ef-. r8 ef8-. g16(-> f e f) |
        d4 a'8 f8 g4. d8 |
        \times 2/3 { e4 e e } c'4 b |

        % Page 5
        
        cs1~ |
        cs8 r8 r4 r2 |
    } \alternative {
        { fs,2\f( g2 | af2 g2) | }
        { fs2\f( g2 | af2 g2) | }
    }
    fs2( g2 |
    af2 g2) |
    fs2( g2 |
    af2 g2) |
    cs1-> \bar "|."
}

scoreAClarinetIII = \relative c' {
    \global
    \transposition c'  
    % Music follows here.
    g'4.->\f bf8~-> bf2~ |
    bf1\> |
    g4.->\!\f ef8~->ef2~ |
    ef1\> \bar "||" |
    % Bar 5
    \mark \default
    b2\!\mf r8 g'8-. g-. g-. |
    g4 g8-. g8-. r8 g8-. g4 |
    f2( b,2 |
    c2.) g4 |

    % Page 2

    bf'1~ |
    bf8 r8 r4 r2 |
    fs1~ |
    fs1 |

    b2 r8 bf8-. bf-. bf-. |
    g4 g8-. g8-. r8 g8-. g4 |
    f2( b2 |
    c2.) g4 |

    bf1~ |
    bf8 r8 r4 r2 |
    d,1\f( |
    d2.) r4 |

    % Page 3

    \repeat volta 2 {
        % Bar 21
        \mark \default
        cs'1 |
        r4 r8 b,16(\f cs d8) \acciaccatura fs16( gs4.) |
        a2.(\> fs4) |
        cs4~->\!\mf cs8 cs8~-> cs4 cs4-.-^ |

        bf'2.( fs4 |
        a2.) r4 |
        r4 a8\f a gs4 fs4 |
        c'4 r8 a8-.-^ fs4( ef4) \bar "||" |

        % Bar 29
        \mark \default
        b'2\mf r8 bf8-. bf-. bf-. |
        g4 g8-. g8-. r8 g8-. g4 |
        f2( b2 |
        c2.) g4 |

        % Page 5
        
        bf1~ |
        bf8 r8 r4 r2 |
    } \alternative {
        { d,4.\f bf'8( a4.) d,8 | \times 2/3 { f4( fs8~} fs2) r4 }
        { d 4.\f bf'8( a4.) d,8 | \times 2/3 { f4( fs8~} fs2) r4 }
    }
    d4.\f bf'8( a4.) d,8 | \times 2/3 { f4( fs8~} fs2) r4 |
    d4.\f bf'8( a4.) d,8 | \times 2/3 { f4( fs8~} fs2) r4 |
    d1-> \bar "|."    
}

scoreABassClarinet = \relative c' {
    \global
    \transposition c
    % Music gfollows here.
    g4->\f d'8-> ef8~->ef8 ef-. ef-. ef-. |
    ef4-> ef8-. ef8~->ef8 ef-. ef-. ef-. |
    g,4->  d'8-> ef8~->ef8 ef-. ef-. ef-. |
    ef4-> ef8-.\> ef8~->ef8 ef-. ef-. ef-.  \bar "||" |

    % Bar 5
    \mark \default
    g,4\!\mf r8 d'8 ef4 r4 |
    bf4 r8 bf8 ef4 r8 ef8 |
    d4 r8 d8 g,4 r8 g8 |
    c4 r8 g8 c4 r8 c8 |

    % Page 2

    fs4 r8 fs8 cs4 r8 cs8 |
    fs8 r8 r4 r2 |
    d4 r8 d8 a4 r8 a8 |
    d4 c4 bf4 a4 |

    g4 r8 d'8 ef4 g8-. g-. |
    bf,4 r8 bf8 ef4 r8 ef8 |
    d4 r8 d8 g,4 r8 g8 |
    c4 r8 c8 g4 r8 c8 |
    
    fs4 r8 cs8 fs4 r8 cs8 |
    fs8 r8 r4 r2 |
    r4 b,4\f r4 b4 |
    r4 b4 r4 b4 |

    % Page 3

    \repeat volta 2 {
        % Bar 21
        \mark \default
        fs'4\mf r8 fs8 cs4 r8 fs8 |
        cs4 r8 cs8 gs'4 r8 cs,8 |
        fs4\mf r8 fs8 cs4 r8 fs8 |
        cs4 r8 cs8 gs'4  cs,4 |

        fs4\mf r8 fs8 cs4 r8 fs8 |
        d4 r8 d8 d4 r8 d8 |
        a4-> a8-> c8-> e4.-> e8-.-^ |
        ef1-> \bar "||" |

        % Bar 29
        \mark \default
        g,4\mf r8 d'8 ef4 g8-. g-. |
        bf,4 r8 bf8 ef4 r8 ef8 |
        d4 r8 d8 g,4 r8 g8 |
        c4 r8 c8 g4 r8 c8 |

        % Page 5
        
        f4 r8 cs8 f4 r8 cs8 |
        f8 r8 r4 r2 |
    } \alternative {
      { r4 b,4\f r4 b4 | r4 b4 r4 b4 }
      { r4 b 4\f r4 b4 | r4 b4 r4 b4 | }
    }
    r4 b4 r4 b4 | r4 b4 r4 b4 |
    r4 b4 r4 b4 | r4 b4 r4 b4 |
    b1-> \bar "|."
}


scoreAClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  midiInstrument = "clarinet"
} \scoreAClarinetI

scoreAClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  midiInstrument = "clarinet"
} \scoreAClarinetII

scoreAClarinetIIIPart = \new Staff \with {
  instrumentName = "Clarinet III"
  midiInstrument = "clarinet"
} \scoreAClarinetIII

scoreABassClarinetPart = \new Staff \with {
  instrumentName = "Bass clarinet"
  midiInstrument = "clarinet"
} \scoreABassClarinet

\bookpart { 
    \header {
      title = "Goldfinger"
      instrument = "for Clarinet Quartet"
      composer = "John Barry"
      arranger = "Arr Roberts"
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
      title = "Goldfinger"
      instrument = "Bb Clarinet 1"
      composer = "John Barry"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIPart }
}


\bookpart {
   \header {
      title = "Goldfinger"
      instrument = "Bb Clarinet 2"
      composer = "John Barry"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIIPart }
}

\bookpart {
   \header {
      title = "Goldfinger"
      instrument = "Bb Clarinet 3"
      composer = "John Barry"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreAClarinetIIIPart }
}

\bookpart {
   \header {
      title = "Goldfinger"
      instrument = "Bass Clarinet"
      composer = "John Barry"
      arranger = "Arr Roberts"
      tagline = ##f
    }
    \score { \scoreABassClarinetPart }
}
