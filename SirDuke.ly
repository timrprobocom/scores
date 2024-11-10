\version "2.18.1"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    #(set-default-paper-size "letter" )
    #(set-paper-size "letter" )
    ragged-last-bottom = ##t
}

\header {
    title = "Sir Duke"
    composer = "Stevie Wonder"
    arranger = "Arr T Roberts"
    tagline = #f
}

common = {
    \numericTimeSignature 
    \override Score.BarNumber #'break-visibility = #all-visible
    \override Score.BarNumber #'self-alignment-X = #0
    \override Score.BarNumber #'self-alignment-Y = #1
    \override MultiMeasureRest #'expand-limit = #1
    \set Score.markFormatter = #format-mark-box-letters
    \key f \major
    \time 4/4
    \tempo 4 = 120
}

% intro 8 bars
% verse 12 vars
% chorus 8 bars
% break 8 bars

spacing = {
    s1*8 \bar "||" \mark \default
    s1*12 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*12 \mark \default
    \repeat volta 2 {
        s1*8 
    } \mark \default
    s1*8 \mark \default
    \repeat volta 2 {
        s1*8 
    }
    s1*8 \bar "||" \mark \default
    s1*8 
    \bar "|."
}


%% The introduction.


introN = {
    f4 a c8. f16 r4 |
    d,8 d f16 e f r a16 gs a d16 r4 |
    df,8 df f f af16 g af8 df8. c16 |
    R1 |

    f,4 a c8. f16 r4 |
    d,8 d f16 e f r a16 gs a d16 r4 |
    df,8 df f f af16 g af8 df8. c16 |
    R1 |
}

introW = \lyricmode {
    Doo doo doo dat
    Doot doot did -- dle -- it did -- dle -- it dat 
    Doot doot doot doot did -- dle -- it doo dat

    Doo doo doo dat
    Doot doot did -- dle -- it did -- dle -- it dat 
    Doot doot doot doot did -- dle -- it doo dat
}


%% The chorus


chorusN = {
    r4 a8 c c a c( a) |
    e'8( d e) d~d2 |
    r4 d8 c c a d( c) |
    a4 g16( f d8) f4 d8( c) |

    r4 a'8 c c a c( a) |
    e'8( d e) d~d2 |
    r4 d8 c c a d( c) |
    a4 g16( f d8) f4 d8( c) |
}

chorusA = \lyricmode {
    You can feel it all o -- ver 
    You can feel it all o -- ver peo -- ple 
}

chorusB = \lyricmode {
    They can feel it all o -- ver 
    They can feel it all o -- ver peo -- ple 
}

chorusC = \lyricmode {
    Can't you feel it  all o -- ver 
    Ev -- ery -- bo -- dy all o -- ver peo -- ple
    Ev -- ery -- bo -- dy all o -- ver 
    Ev -- ery -- bo -- dy all o -- ver peo -- ple
}


%% The break.


breakN = {
    f8 r8   r16 f a g   r g d' c  r8 c,16 d |
    f8 g16 af   a c d f  r g af a r4 |
    d8. a16   r8 c8~c8 g8~g8 a8 |
    g16 f d c  g' f d f~f4 r4 |

    a8 g16 f   g f d f  d c d8   r16 c a c |
    a16 g a g   f g f d~d8 c8  r4 |
    c16 d f g  a c d f   r d f8 r16 d8 c16 |
    d8 r16 c8 a16 c8 r8 c16 c r4 |
}

breakW = \lyricmode {
    Doot dah dee doot dah dee doot  do bah
    Doot do bah doo -- dle -- ee doot ba dah doot 
    doo dah doo dah de doo -- dle -- ee -- dle -- doo -- dle -- ee doo
    doot dee -- dle -- oo -- dle -- ee -- dle -- oo -- dle -- ee
       ba dee da doo -- dle -- ee -- dle -- doo -- dle -- ee -- doo bah
    doo -- dle -- ee -- dle doo -- dle -- ee doo ba doo  doo ba doo doo ba doo
    wab -- bat
}



%                                       
%  ___  ___  _ __  _ __ __ _ _ __   ___  
% / __|/ _ \| '_ \| '__/ _` | '_ \ / _ \ 
% \__ \ (_) | |_) | | | (_| | | | | (_) |
% |___/\___/| .__/|_|  \__,_|_| |_|\___/ 
%          |_|                          
%

soprano = \relative c' {
    \clef treble 
    \common
    \set Staff.midiInstrument = #"flute"

    \introN

    % A 9 - Music is a world

    r8 a16 r r a r r a2 |
    r8 a16 r r a r r a2 |
    r8 af16 r r af r r af2 |
    R1 |

    r8 a16 r r a r r a2 |
    r8 a16 r r a r r a2 |
    r8 af16 r r af r r af2 |
    g4 g4 fs4 fs4 |

    % Just because 

    a8 a af af g g gf gf |
    g?8 g af af16 a16 r2 |
    a8 a af af g g gf gf |
    g?8 af a bf16 b16 r2 |

    % B 21 You can feel it ...

    \chorusN

    % C 29

    \breakN

    % D 37 Music knows it is

    r8 a16 r r a r r a2 |
    r8 a16 r r a r r a2 |
    r8 af16 r r af r r af2 |
    R1 |

    r8 a16 r r a r r a2 |
    r8 a16 r r a r r a2 |
    r8 af16 r r af r r af2 |
    g4 g4 f4 f4 |

    % Well there's Basie

    a8 a af af g g gf gf |
    g?8 g af af16 a16 r2 |
    a8 a af af g g gf gf |
    g?8 af a bf16 b16 r2 |

    % E 49

%    \repeat volta 2 {
        \chorusN
%    }

    \breakN

%    \repeat volta 2 {
        \chorusN
%    }
    \relative c'' \chorusN

    \breakN
}

soplyrics = \lyricmode {
    \introW

    % Music is a world

    Doot doot bah
    Doot doot bah
    Doot doot bah

    Doot doot bah
    Doot doot bah
    Doot doot bah
    wah wah wah wah

    % Just because

    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot
    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot

    \chorusA
    \chorusA

    \breakW

    % Music knows it is

    Doot doot bah
    Doot doot bah
    Doot doot bah

    Doot doot bah
    Doot doot bah
    Doot doot bah
    wah wah wah wah

    % Well there's Basie

    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot
    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot

%    \repeat volta 2 {
        \chorusB
        \chorusB
%    }

    \breakW

%    \repeat volta 2 {
        \chorusB
        \chorusB
%    }

    \chorusC

    \breakW
}

%         _ _        
%    __ _| | |_ ___  
%   / _` | | __/ _ \ 
%  | (_| | | || (_) |
%   \__,_|_|\__\___/ 
%                    

altoChorus = {
    r8 a16 r r a r r a2 |
    r8 a16 r r a r r a2 |
    r8 bf16 r r bf r r bf2 |
    bf4 bf g g |
    r8 a16 r r a r r a2 |
    r8 a16 r r a r r a2 |
    r8 bf16 r r bf r r bf2 |
    bf4 bf g g |
}

alto = \relative c' {
    \clef treble 
    \common
    \set Staff.midiInstrument = #"clarinet"

    \introN

    r8 f,16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    R1 |

    r8 f16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    e4 e4 ds4 ds4 |

    % Just because 

    f8 f e e ef ef d d   |
    ef8 ef e e16 f16 r2 |
    f8 f e e ef ef d d   |
    ef8 e f fs16 g16 r2 |

    % Chorus 1

    \altoChorus

    \relative c' \breakN

    % Music knows it is and always will

    r8 f16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    R1 |

    r8 f16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    r8 f16 r r f r r f2 |
    e4 e4 ds4 ds4 |

    % Well there's Basie Miller Satchmo

    f8 f e e ef ef d d   |
    ef8 ef e e16 f16 r2 |
    f8 f e e ef ef d d   |
    ef8 e f fs16 g16 r2 |

    % Chorus 2

%    \repeat volta 2 
    \altoChorus

    \relative c' \breakN

    % Chorus 3

%    \repeat volta 2 {
    \altoChorus

    % Chorus 3c

    \altoChorus

    \relative c' \breakN
}

altolyrics = \lyricmode {
    \introW

    Doot doot bah
    Doot doot bah
    Doot doot bah

    Doot doot bah
    Doot doot bah
    Doot doot bah
    wah wah wah wah

    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot
    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot

    % Chorus 1
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 

    \breakW

    Doot doot bah
    Doot doot bah
    Doot doot bah

    Doot doot bah
    Doot doot bah
    Doot doot bah
    wah wah wah wah

    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot
    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot

    % Chorus 2
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 

    \breakW

    % Chorus 3
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 
    % Chorus 3c
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 

    \breakW
}

% 
%  _                        
% | |_ ___ _ __   ___  _ __ 
% | __/ _ \ '_ \ / _ \| '__|
% | ||  __/ | | | (_) | |   
%  \__\___|_| |_|\___/|_|   
%                           
% 

tenor = \relative c {
    \clef bass
    \common
    \set Staff.midiInstrument = #"trombone"

    \introN

    r4 a8 c d c a f |
    f8 g4 f8 r c d f |
    af8 g f df f af4 g8~ |
    g2 r2 |

    r4 a8 c d c a f |
    f8 g4 f8 r c d f |
    af8 g f df f af4 g8~ |
    g2 r4 r8 f16 f |

    f8 f e e ef ef16 d16~d8 d |
    ef ef e e16 f16 r4 r16 f f f | 
    f8 f16 f16 e8 e16 ef16 r ef d8 r8 d16 d |
    ef8  e f8 gf16 g16 r2 |

    \chorusN

    \relative c, \breakN 

    % D 37 Music knows it is

    r4 a'8 c d c a f |
    f8 g4 f8 r c d f |
    af8 g f df f af4 g8~ |
    g2 r2 |

    r4 a8 c d c a f |
    f8 g4 f8 r c d f |
    af8 g f df f af4 g8~ |
    g2 r4 r8 f16 f |

    f8 f e e ef ef16 d16~d8 d16 d16 |
    ef8 ef e e16 f16 r4 r16 f f f | 
    f8 f e e ef ef16 d16~d8 d16 d16 |
    ef8  e f8 gf16 g16 r2 |
    
%    \repeat volta 2 
    \chorusN

    \relative c, \breakN 
    
%    \repeat volta 2
    \relative c' \chorusN

    \chorusN

    \relative c, \breakN 
}


tenorlyrics = \lyricmode {
    \introW

    Mu -- sic is a world with --
    in it -- self  it is a 
    lang -- uage we all un -- der --
    stand

    With an e -- qual op -- por --
    tun -- i -- ty for all to
    sing and dance and clap their
    hands

    Just be -- cause a rec -- ord has a groove don't
    make it in the groove
    And you can tell right a -- way at let -- ter 'A' when the
    Peo -- ple start to move

    \chorusA
    \chorusA

    \breakW

    Mu -- sic knows it is and
    al -- ways will be one of 
    the things that life just won't 
    quit
    Here are some of mu  --  sic's 
    pi  --  o  --  neers that time will
    not al -- low us to for  --  get.
    Well there's Ba  --  sie, Mil -- ler, Satch  --  a  --  mo,
    and the king of all Sir Duke.
    And with a voice like El -- las ring -- ing out,
    there's no way the band could lose

%    \repeat volta 2 {
        \chorusB
        \chorusB
%    }

    \breakW

%    \repeat volta 2 {
        \chorusB
        \chorusB
%    }

    \chorusC

    \breakW

}


%  
%   _                   
%  | |__   __ _ ___ ___ 
%  | '_ \ / _` / __/ __|
%  | |_) | (_| \__ \__ \
%  |_.__/ \__,_|___/___/
%                       
%  


bassChorus = {
    r8 f16 r r f r r f2 |
    r8 d16 r r d r r d2 |
    r8 bf16 r r bf r r bf2 |
    g4 g c c |
    r8 f16 r r f r r f2 |
    r8 d16 r r d r r d2 |
    r8 bf16 r r bf r r bf2 |
    g4 g c c |
}

bass =  \relative c,  {
    \clef bass
    \common
    \set Staff.midiInstrument = #"tuba"

    %%% \introN

    f4 a c8. f16 r4 |
    d,8 d f16 e f r a16 gs a d16 r4 |
    df,8 df f f af16 g af8 df8. c16 |
    R1 |

    f,4 a c8. f16 r4 |
    d,8 d f16 e f r a16 gs a d16 r4 |
    df,8 df f f af16 g af8 df8. c16 |
    r8 c8 c8 r16 c16 r c bf8 a8 g8 |

    % Music is a world within itself

    f8 r c' r f r c cs |
    d8 r a r d r a r |
    df8 r af r df r af r |
    r8 c8 c8 r16 c16 r c bf8 a8 g8 |

    f8 r c' r f r c cs |
    d8 r a r d r a r |
    df8 r af r df r af r |
    c4 c4 b4 b4 |

    % Just because 

    c8 c b b bf bf a a |
    bf8 bf b b16 c16 r2 |
    c8 c b b bf bf a a |
    bf8 b c cs16 d16 r2 |

    % Chorus 1

    \bassChorus

    \relative c, \breakN

    % Music knows it is and always will

    f8 r c' r f r c cs |
    d8 r a r d r a r |
    df8 r af r df r af r |
    r8 c8 c8 r16 c16 r c bf8 a8 g8 |

    f8 r c' r f r c cs |
    d8 r a r d r a r |
    df8 r af r df r af r |
    c4 c4 b4 b4 |

    % Well there's Basie Miller Satchmo

    c,8 c b b bf bf a a |
    bf8 bf b b16 c16 r2 |
    c8 c b b bf bf a a |
    bf8 b c cs16 d16 r2 |

    % Chorus 2

%    \repeat volta 2 
    \bassChorus

    \relative c, \breakN

    % Chorus 3

%    \repeat volta 2 
    \bassChorus

    % Chorus 3c

    \bassChorus

    \relative c, \breakN
}

basslyrics = \lyricmode {
    \introW

    bop bop bop ba doo bop bop

    doot doot doot doo bee
    doot doot doot doot
    doot doot doot doot
    bop bop bop ba doo bop bop

    doot doot doot doo bee
    doot doot doot doot
    doot doot doot doot
    wah wah wah wah

    % Just because...

    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot
    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot

    % Chorus 1
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 

    \breakW

    doot doot doot doo bee
    doot doot doot doot
    doot doot doot doot
    bop bop bop ba doo bop bop

    doot doot doot doo bee
    doot doot doot doot
    doot doot doot doot
    wah wah wah wah

    % Just because...

    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot
    Doo pah doo pah doo pah doo pah
    doo pah doo ba doot

%    \repeat volta 2 {
    % Chorus 2
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 
%    }

    \breakW

%    \repeat volta 2 {
    % Chorus 3
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 
%    }
    % Chorus 3c
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 
    Bah bah bah
    Bah bah bah
    Bah bah bah
    wah wah wah wah 

    \breakW
}


\score {
    <<
        \new Voice = "soprano" <<
            \set Staff.instrumentName = #"Soprano"
            \spacing
            \soprano
        >>
        \new Lyrics \lyricsto soprano \soplyrics

        \new Voice = "alto" <<
            \set Staff.instrumentName = #"Alto"
            \spacing
            \alto
        >>
        \new Lyrics \lyricsto alto \altolyrics

        \new Voice = "tenor" <<
            \set Staff.instrumentName = #"Tenor"
            \spacing
            \tenor
        >>
        \new Lyrics \lyricsto tenor \tenorlyrics

        \new Voice = "bass" <<
            \set Staff.instrumentName = #"Bass"
            \spacing
            \bass
        >>
        \new Lyrics \lyricsto bass \basslyrics
    >>
        \midi { }
    \layout { }
}

