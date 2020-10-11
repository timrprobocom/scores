\version "2.16.0"
\include "english.ly"

\paper {
  #(set-paper-size "letter")
}

simile = \markup { \italic simile }
subMp = \markup { sub \dynamic mp }
rall = \markup { \italic rall. }


prefix = {
  \time 4/4
  \tempo "With movement" 4=180
  \clef treble \key c \major
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \compressFullBarRests
  \set Score.markFormatter = #format-mark-box-letters
}

skeleton = {
    s1*4 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*8 \bar "||" \mark \default
    s1*4 \mark \default
    \repeat volta 2 {
        s1*9 \bar "||" \mark \default
        s1*8 \bar "||" \mark \default
    } \alternative {{
        s1*4 
    }{
        s1*4 
    }}
    \bar "|."
}

% Don't think parallel works here.

clarA = {
    R1*3 |
    r2 r8 e-.\mf f-. fs-. |

    % Bar 5 [A] first theme.

    g4 e'8 g, e' d r cs~ |
    cs2 r8 a af g |
    fs4 d'8 fs,8 d' c r b~ |
    b2 r8 g fs f 
    e8\< g c a r c d4 |
    g,8 bf ef c r ef f4 |
    g1~\fp\< |
    g8\! r8 g-. g-. a-. g-. ds-- e-. |

    % Bar 13 [B] repeat theme.

    \repeat volta 2 {
        c4 e8 g, e' d r cs~ |
        cs2 r8 a af g |
        fs4 d'8 fs,8 d' c? r b~ |
        b2 r8 g fs f 
        e8\< g c a r c d4 |
        g,8 bf ef c r ef f4 |
        g1~\!\fp\< |
        g8\! r8 g-. g-. a-. g-. ds-- e-. |

        % Bar 21 bridge.
        
        c8 r8 r4 r2 |
        R1*2 |
        r4 c4->\mf d e |

        % Bar 25 [C] second theme.

        f2 r8 f g f |
        a8 g4 f8 r ef d c |
        bf4 bf4 c8 cs4 d8~ |
        d2 r8 bf a af |
        g4 ef'8 ef r ef f ef |
        g8\< f4 ef8 r df c bf |
        af4\!\f af bf8 c4. |
        b8-. c4 d8~->\fp\! d2~ |
        d2 r8\! e,8\f f fs |

        % Bar 34 [D] back to first theme.

        g4 e'8 g, e' d r cs~ |
        cs2 r8 a af g |
        fs4 d'8 fs,8 d' c? r b~ |
        b2 r8 g fs f 
        e8\< g c a r c d4 |
        g,8 bf ef c r ef f4 |
        g1~\!\fp\< |
        g8\! r8 g-. g-. a-. g-. ds-- e-. |
    } \alternative {{
        c8 r8 r4 r2 |
        R1*2 |
        r4 c-> d-> e-> |
    }{
        R1*3 |
        c,4-. r4 r2 |
    }}
}

clarB = {
    R1*4 |

    % Bar 5 [A] first theme.

    R1*4 |
    c4.\p\! f8 r2 |
    ef4. ef8 r2 |
    r4\! d8\f d8 d4 d8 d8 |
    d8 r g-. g-. a-. g-. ds-- e-. |

    % Bar 13 [A] repeat theme.

    \repeat volta 2 {
        g4 g8 e gs8 gs r a8~ |
        a2 r8 a,8 b cs |
        d4 fs8 d fs e r d8~ |
        d2 r8 e ef d |
        c8\p\< e? g f~f a bf4 |
        ef,8 g bf af~af c df4 |
        b1\!\fp\< | 
        r4\! g8-.\mf g-. a-. g-. ds-- e-. |

        % Bar 21 bridge.
        
        c8 r8 r4 r2 |
        R1*2 |
        r4 c'4->\mf b bf |

        % Bar 25 [C] second theme.

        a2 r8 a b? a |
        c8 bf4 a8 r g f e |
        d4 d4 e8 e4 f8~ |
        f1 |
        ef4 g8 g8 r g af g |
        bf8\< af4 g8 r ef d df |
        ef4\!\f ef f8 g4. |
        g8-. a4 b!8~->\fp\< b2~ |
        b2 r8\! e,8\f f fs |

        % Bar 34 [D] third theme.

        g4 g8 e gs8 gs r a8~ |
        a2 r8 a,8 b cs |
        d4 fs8 d fs e r d8~ |
        d2 r8 e ef d |
        c8\p\< e? g f~f a bf4 |
        ef,8 g bf af~af c df4 |
        b1\!\fp\< | 
        r4\! g8-.\mf g-. a-. g-. ds-- e-. |
    } \alternative {{
        c8 r8 r4 r2 |
        R1*2 |
        r4 c'-> b-> bf-> |
    }{
        R1*3 |
        c,4-. r4 r2 |
    }}
}

clarC = {
    c4\mf g'8 g g,4 g'8 g |
    c,4 g'8 g,8~g g g'4 |
    c,4 g'8 g g,4 g'8 g |
    c,4-. r4 r2 |

    % Bar 5 [A] first theme.

    c2\mf d4. e8~ |
    e1 |
    d2 c4. b8~ |
    b1 |
    g4.\p\< c8 r c d4 |
    bf4. af8 r2 |
    r4\! b8\f b b4 b8 b |
    b8 r8 r4 r2 |

    % Bar 13 [B] repeat theme.

    \repeat volta 2 {
        e2\mf d8 d r cs~ |
        cs4 e8 e8 r a,8 b cs |
        d4 c? b8 a r g~ |
        g4 d'8 d r2 |
        c4.\p\< c8~c8 c f4 |
        ef4. ef8~ef ef af4 |
        g4\!\f g8 g8 g4 g8 g8 |
        g8 r8 r4 r2 |

        % Bar 21 bridge.

        c,4\mf g'8 g g,4 g'8 g |
        c,4 g'8 g,8~g g g'4 |
        c,4 g'8 g g,4 g'8 g |
        c,4-. r4 r2 |

        % Bar 25 [C] second theme.

        r4 c8\mf c8 r4 c4-. |
        r4 c8 c8 r4 c4-. |
        R1 |
        r8 bf8( c)-. d-. c-. bf-. a-. af-. |
        g4 bf8 bf r4 bf-. |
        r4 bf8\< bf r4 bf-. |
        c4-.\!\f r c-. r |
        d8-. e4 f!8->\fp\< f2~ |
        f2\! r2 |

        % Bar 34 [D] third theme.

        r4 c4\f d4. e8~ |
        e8 e d cs8~cs2 |
        r4 d4 c?4. b8~ |
        b8 d c b~b2 |
        c4.\p\< c8~c8 c f4 |
        ef4. ef8~ef ef8 af4 |
        g4\!\f g8 g8 g4 g8 g8 |
        g8 r8 r4 r2 |
    } \alternative {{
        c,4 g'8 g g,4 g'8 g |
        c,4 g'8 g,8~g g g'4 |
        c,4 g'8 g g,4 g'8 g |
        c,4-. c4-> d-> e-> |
    }{
        c4 g'8 g g,4 g'8 g |
        c,4 g'8 g,8~g g g'4 |
        c,4 g'8 g g,4 g'8 g |
        c,4-. r4 r2 |
    }}
}

clarBass = {
    c4.\mf r8 g4. r8 |
    c4. r8 g4. r8 |
    c4. r8 g4. r8 |
    c4-. r4 r2 |

    % Bar 5 [A] first theme.

    c4.\mf c8 e2 |
    a4. a8 e2 |
    d4. d8 d2 |
    g8 g f4 e d |
    c4\p\< r8 f8~f4 bf,4 |
    ef4 r8 af,8~af4 cs4 |
    g4.\!\f g8 d'4. d8 |
    g8 g f4 e4 d4 |

    % Bar 13 [B] repeat theme.

    \repeat volta 2 {
        c4.\mf c8 e2 |
        a4. a8 e2 |
        d4. d8 d2 |
        g8 g f4 e d |
        c4\p\< r8 f8~f4 bf,4 |
        ef4 r8 af,8~af4 cs4 |
        g4.\!\f g8 d'4. d8 |
        g8 g f4 e4 d4 |

        % Bar 21 bridge
        
        c4. r8 g4. r8 |
        c4. r8 g4. r8 |
        c4. r8 g4 b4 |
        c4-. r4 r2 |

        % Bar 25 [C] second theme.
        
        f4. f8 c4. c8 |
        f4. f8 g4 a4 |
        bf4. bf8 f4. f8 |
        bf4. bf,8 c4 d |
        ef4. ef8 bf4. bf8 |
        ef4.\< ef8 bf'4 ef,4 |
        af4-.\! r4 af4 r4 |
        g4-. r4 g4 d4 |
        g f e d |

        % Bar 34 [D] back to first theme.

        c4.\f c8 e2 |
        a4. a8 e2 |
        d4. d8 d2 |
        g8 g f4 e d |
        c4\p\< r8 f8~f4 bf,4 |
        ef4 r8 af,8~af4 cs4 |
        g4.\!\f g8 d'4. d8 |
        g8 g f4 e4 d4 |
    } \alternative {{
        c4. r8 g4. r8 |
        c4. r8 g4. r8 |
        c4. r8 g4. r8 |
        c4-. r4 r2 |
    }{

        % Bar 46.

        c4. r8 g4. r8 |
        c4. r8 g4. r8 |
        c4. r8 g4. r8 |
        c4-. r4 r2 |
    }}
}





\header {
  title = "Spanish Flea"
  instrument = "Clarinet quartet"
  composer = "Julius Wechter"
  arranger = "Arr T Graf"
  tagline = ##f
}



%
% Define the parts.
%

% Clarinet I

clarI = {
  \set Staff.instrumentName = #"Bb Clar I "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  << \skeleton \relative c' \clarA >>
}

% Clarinet II

clarII = {
  \set Staff.instrumentName = #"Bb Clar II "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  << \skeleton  \relative c' \clarB >>
}

% Clarinet III

clarIII = {
  \set Staff.instrumentName = #"Bb Clar III "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  << \skeleton  \relative c' \clarC >>
}

% Bass Clarinet

bassClar = {
  \set Staff.instrumentName = #"Bass Clar "
  \set Staff.midiInstrument = #"clarinet"

  \prefix
  << \skeleton  \relative c' \clarBass >>
}


%
% Put them all together.
%

parts = {
  <<
     \tag #'clr1  \new Staff  \transpose c  c  \clarI
     \tag #'clr2  \new Staff  \transpose c  c  \clarII
     \tag #'clr3  \new Staff  \transpose c  c  \clarIII
     \tag #'bass  \new Staff  \transpose c  c  \bassClar
  >>
}


%
% Define the things that print.
%

\score {
  % Do I need << >> around this line?
  \context StaffGroup = "quartet" \parts 
  \midi { 
    \context { 
      \Score tempoWholesPerMinute = #(ly:make-moment 160 8) 
    }
  }
  \layout { }
}

\bookpart { \score { \keepWithTag #'clr1 \parts } }
\bookpart { \score { \keepWithTag #'clr2 \parts } }
\bookpart { \score { \keepWithTag #'clr3 \parts } }
\bookpart { \score { \keepWithTag #'bass \parts } }

