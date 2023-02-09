%{
    Comments
%}
\version "2.12.3"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    ragged-last-bottom = ##t
}

\header {
    title = "Ave Maria" 
    subtitle = "(Angelus Domini)"
    subsubtitle = "(ver 2)"
    poet = "Franz Biebl"
    arranger = "Arr Tim Roberts"
}

gap = {
  \cadenzaOn
  s1 r1\fermata  s4 s1.
  \cadenzaOff 
}

endintro = {
  \bar "||" \break
  \time 4/4
  \tempo "Ave" 4 = 72
}

prefix = {
  \time 4/4
  %% \tempo 4 = 72
  \override Staff.TimeSignature #'stencil = ##f
  \override Staff.TimeSignature #'style = #'()
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1

  \once \override Score.BreakAlignment #'break-align-orders =
      #(make-vector 3 '(instrument-name
                        left-edge
                        ambitus
                        span-bar
                        breathing-sign
                        clef
                        key-signature
                        time-signature
                        staff-bar
                        custos
                        span-bar))
  \bar "|:"
}

% Soprano I

sopranoIasolo = {

  \repeat volta 3 
  {
    \tempo "Chant"
    \cadenzaOn
    s2.. g'8^\markup { \italic "Solo, play 3rd time only" }
    c d e f e c d4 c4 \breathe 
    d8 e f g e e c e d4 c4
    \cadenzaOff \bar "||"
    \endintro

    % page 1
    r1 | c,4( \p \< d) e f\! | g2\> g2 \! | a4(\< b c) d8 f8\! | e\> d c4 r2\! |
    r4 af4( c4) bf8 af8 | c2 c4 r4 | r4 c(\< d) e8 f8\! | g2.\mp e4 | e2. c4 |
    % page 2
    c4( f4~ f8 e) d c | b4( d c8\> a8) b4 | c2\! r2 |
    c,4(\p d) e f | g2 g2 | a4( b c) d8 f8 | e d c4 r2 |
    r4 d(\< e f\! | g2.)\mp e4 | d1 |
  }
  \alternative { { c2. r4 } { c4 r4 r2 } }
}

sopranoIalt = {
  \repeat volta 3 
  {
    \tempo "Chant"
    \gap
    \endintro

    % page 1
    R1*5 | 
    r4\p af4( c4) bf8 af8 | c2 c4 r4 | r4 c(\< d) e8 f8\! | g2.\mp e4 | e2. c4 |
    % page 2
    c4( f4~ f8 e) d c | b4( d c8\> a8) b4 | c2\! r2 |
    R1*4
    r4\p d(\< e f\! | g2.)\mp e4 | d1 |
  }
  \alternative { { c2. r4 } { c4 r4 r2 } }
}

sopranoIb = {
  \tempo "Sancta Maria"
  % page 3
  r4\mf c2 d8 e8 | f4( g) f r | r4 c2 d8 f8 | e8 d8 c4 r2 |
  r4 a4 a a | a e' d c | b( d c8 a8) b4 | c r4 r2 | r4 g'4(\f a4) g8 f8 |
  % page 4
  f2 c2 | r4 f4( g4) f8 e8 | e2 c4 r4 | r1 | c4( d) e f |
  g( a g) e | d( e d) c | e2(\> d2) \bar "||"
  % Amen
  \tempo "Amen"
  c2\! r2 | r1 | f,4(\mp\< g a bf | c\! d) e( f) | 
  r1 | c4(\mf\< d e f | g a)\! g( f) | g1\f |
  g1 \fermata \bar "|."
}


% Alto I

altoIa = {
  \repeat volta 3 
  {
    \tempo "Chant"
    \gap
    \endintro

    % page 1
    r1 | c4(\p \< d) e f\! | g2\> g2\! | f4(\< g a) b8 c8\! | c\> g g4 r2\! |
    r4 f2 g8 af8 | af2 af4 r4 | r4 af4(\< bf4) c8 d8\! | c2.\mp b4 | a2. g4 |
    % page 2
    a2(~a8 g8) a8 e8 | g2.\> g4 | g2\! r2 |
    c,4(\p d) e f | g2 g2 | f4( g a) b8 c8 | c g g4 r2 |
    r4 bf4(\< c d~ | d\!\mp e2) c4 | c2( b2) |
  }
  \alternative { { c2. r4 } { c4 r4 r2 } }
}

altoIalt = {
  \repeat volta 3 
  {
    \tempo "Chant"
    \gap
    \endintro

    % page 1
    R1*5 |
    r4\p f2 g8 af8 | af2 af4 r4 | r4 af4(\< bf4) c8 d8\! | c2.\mp b4 | a2. g4 |
    % page 2
    a2(~a8 g8) a8 e8 | g2.\> g4 | g2\! r2 |
    c,4(\p d) e f | g2 g2 | f4( g a) b8 c8 | c g g4 r2 |
    r4 bf4(\< c d~ | d\!\mp e2) c4 | c2( b2) |
  }
  \alternative { { c2. r4 } { c4 r4 r2 } }
}

altoIb = {
  \tempo "Sancta Maria"
  % page 3
  r4\mf a2 c8 c8 | c2 c4 r4 | r4 g2 c4 | c8 g8 g4 r2 | 
  r4 a a a | a c a f | g2. g4 | g4 r4 r2 | r4 c2 c8 c8 |
  % page 4
  c2 a2 | r4 c2 c8 c8 | c2 g4 r4 | R1 | c2 c4 c4 |
  c2. c4 | a2. a4 | c2( b2) \bar "||"
  \tempo "Amen"
  g2 r2 | r1 | f4(\mp\< g a bf | c\! bf) c2 | 
  R1 | g4(\mf\< c2. | e2)\! d2 | d4(\f f e d) | 
  << e1\fermata c1 >> \bar "|."
}

% Alto II

altoIIa = {
  \repeat volta 3 
  {
    \tempo "Chant"
    \gap
    \endintro

    % page 1
    r1 | c4(\p \< d) e f\! | g2\> g2\! | c,2(\< f4) g8 a8\! | g8\> f e4 r2\! |
    r4 d2 ef8 f8 | f2 f4 r4 | r4 f2\< g8 af8\! | g2.\mp g4 | e2. e4 |
    % page 2
    c4( d8 e f g) f4 | d4( f e)\> d | e2\! r2 |
    c4(\p d) e f | g2 g2 | c,4 c4 f4 g8 a8 | g8 f e4 r2 |
    r4 f(\< g af | g2.)\!\mp g4 | f( a g f) |
  }
  \alternative { { c2. r4 } { c4 r4 r2 } }
}

altoIIalt = {
  \repeat volta 3 
  {
    \tempo "Chant"
    \gap
    \endintro

    % page 1
    R1*5 |
    r4\p d2 ef8 f8 | f2 f4 r4 | r4 f2\< g8 af8\! | g2.\mp g4 | e2. e4 |
    % page 2
    c4( d8 e f g) f4 | d4( f e)\> d | e2\! r2 |
    c4(\p d) e f | g2 g2 | c,4 c4 f4 g8 a8 | g8 f e4 r2 |
    r4 f(\< g af | g2.)\!\mp g4 | f( a g f) |
  }
  \alternative { { c2. r4 } { c4 r4 r2 } }
}

altoIIb = {
  \tempo "Sancta Maria"
  % page 3
  r4\mf f2 f8 g8 | a2 a4 r4 | r4 c,4( e4) f8 a8 | g f e4 r2 |
  r4 a a a | a g fs d | d( f e8 c8) d4 | e4 r4 r2 | r4 a( f) g8 a8 |
  % page 4
  a2 f2 | r4 g( e) f8 g8 | g2 e4 r4 | R1 | g2 g4 f4 |
  e2. g4 | f2. f4 | g2.( f4 \bar "||" 
  \tempo "Amen"
  e2) r2 | R1 | f4(\mp\< g a bf | c\! bf) a( f) | 
  R1 | e4(\mf\< f g a | c2)\! a2 | a2(\f g4 f) |
  g1 \fermata \bar "|."
}

% Tenor I

tenorIasolo = {
  \repeat volta 3 
  {
    \tempo "Chant"
    \cadenzaOn
    c8[^\markup { \italic "Solo, play 1st time only" }
    d e f] g g g4 \breathe
    g8 g a4 g8 f g4 g4 \breathe
    g8[ g g g] g[ a a c] g f g4
    \cadenzaOff \bar "||"
    \endintro

    % page 1
    r4 \p c b c | a1 | g4 c b c | a1 | g4 g a b | 
    c2 c4 r4 | r4 c\< d e\! | f2 f2 | e4(\mp f e) d | c4( d c) b |
    % page 2
    a2 a2\> | b2\! r2 |
    r4 \p c b c | a1 | g4 c8 c b4 c | a1 | g4 c(\< d e | f2)\!\mp d2 |  
    f4( e d c | d1) 
  }
  \alternative { { c2. r4 } { c4 g'4\mf g g } }
}

tenorIa = {
  \repeat volta 3 
  {
    \tempo "Chant"
    \gap
    \endintro

    % page 1
    r4 \p c b c | a1 | g4 c b c | a1 | g4 g a b | 
    c2 c4 r4 | r4 c\< d e\! | f2 f2 | e4(\mp f e) d | c4( d c) b |
    % page 2
    a2 a2\> | b2\! r2 |
    r4 \p c b c | a1 | g4 c8 c b4 c | a1 | g4 c(\< d e | f2)\!\mp d2 |  
    f4( e d c | d1) 
  }
  \alternative { { c2. r4 } { c4 g'4\mf g g } }
}

tenorIb = {
  \tempo "Sancta Maria"
  % page 3
  g2 f2 | r4 f2 f4 | f2 e4 r4 | r4 e e e |
  e d e f | c2. d4 | d2 r2 | r4 g g g | g2 f2 |
  % page 4
  r4 f f f | f2 e2 | r4 e2. | e4( d) e( f) | g2. f4 |
  e2 c2 | d( c~ | c) b | 
  \tempo "Amen"
  c,4(\mp\< d e f | g a\! b c) | c2. bf4 |
  a2.( bf4) | c(\mf\< d e f | g a)\! g( f) | e2( d2~ | d4\f f e d) | 
  e1 \fermata \bar "|."
}

% Tenor I for alto sax; one measure was too low.

tenorAb = {
  \tempo "Sancta Maria"
  % page 3
  g2 f2 | r4 f2 f4 | f2 e4 r4 | r4 e e e |
  e d e f | c2. d4 | d2 r2 | r4 g g g | g2 f2 |
  % page 4
  r4 f f f | f2 e2 | r4 e2. | e4( d) e( f) | g2. f4 |
  e2 c2 | d( c~ | c) b | 
  \tempo "Amen"
  c4(\mp\< d e f | g, a\! b c) | c2. bf4 |
  a2.( bf4) | c(\mf\< d e f | g a)\! g( f) | e2( d2~ | d4\f f e d) | 
  e1 \fermata \bar "|."
}

% Tenor II

tenorIIasolo = {
  \repeat volta 3
  {
    \tempo "Chant"
    \cadenzaOn
    g8^\markup { \italic "Solo, play 2nd time only" }
    g a c b a g4 \breathe 
    d'4 d8 c b a b g g4 \breathe 
    d'4 d \times 2/3 { d8 d c } \times 2/3 { b g a } \times 2/3 {c b a } g4
    \cadenzaOff \bar "||"
    \endintro

    % page 1
    r4 \p g g g | f1 | e4 g g g | f1 | e4 g g g | 
    af2 af4 r4 | r4 af\< bf c\! | d2 d2 | c2.\mp b4 | a2. g4 |
    % page 2
    f2 f2\> | g2\! r2 |
    r4 \p g g g | f1 | e4 g8 g g4 g | f1 | e4 g2(\< c4 | d2)\!\mp bf2 |
    d4( c b a | c2 b2)
  }
  \alternative { { c2. r4 } { c4 g\mf c b } }
}

tenorIIa = {
  \repeat volta 3
  {
    \tempo "Chant"
    \gap
    \endintro

    % page 1
    r4 \p g g g | f1 | e4 g g g | f1 | e4 g g g | 
    af2 af4 r4 | r4 af\< bf c\! | d2 d2 | c2.\mp b4 | a2. g4 |
    % page 2
    f2 f2\> | g2\! r2 |
    r4 \p g g g | f1 | e4 g8 g g4 g | f1 | e4 g2(\< c4 | d2)\!\mp bf2 |
    d4( c b a | c2 b2)
  }
  \alternative { { c2. r4 } { c4 g\mf c b } }
}

tenorIIb = {
  \tempo "Sancta Maria"
  % page 3
  a2 a2 | r4 a2 c4 | c2 c4 r4 | r4 c c b | 
  a a a a | a2 c2 | b2 r2 | r4 g c b | a2 a2 |
  % page 4
  r4 a a c | c2 c2 | r4 c2( b4) | a2 a4( c) | c2. c4 |
  c2 a2 | a2~a2~ | a2 g2 \bar "||"
  \tempo "Amen"
  c,4(\mp\< d e f | g a)\! g2 | f2.( g4) | f1 | 
  g2(\mf c2) | c1 | c1~\f | c1 |
  c1 \fermata \bar "|."
}

% Bass I

bassIa = {
  \repeat volta 3
  {
    \tempo "Chant"
    \gap
    \endintro

    r4\p e d e | c1 | c4 e d e | c1 | c4 e e e |
    d2 d4 r4 | r4 d(\< f) g\! | af2 af2 | g2.\mp f4 | e2. d4 |
    % page 2
    c2 c2\> | d2\! r2 |
    r4\p e d e | c1 | c4 e8 e d4 e | c1 | c4 e\< f g\! | af2\mp f2 |
    g1~ | g1 |
  }
  \alternative { { g2. r4 } { g4 e\mf e e } }
}

bassIb = {
  \tempo "Sancta Maria"
  % page 3
  f2 f2 | r4 c2-- f4 | g2 g4 r4 | r4 g g g |
  f f e d | e2 fs2 | g2 r2 | r4 e e e | f2 f2 |
  % page 4
  r4 c c f | g2 g2 | r4 g2. | f2 e4( a) | g2. g4 |
  e2 e2 | f1( | d2) d2 \bar "||" 
  \tempo "Amen"
  c2.(\mp\< d4 | e f)\! d( e) | d1 | d1 | 
  e4(\mf\< f g f | e f)\! g( a) | a1( | f4\f a g f) |
  g1 \fermata \bar "|."
}

% Bass II

bassIIa = {
  \repeat volta 3
  {
    \tempo "Chant"
    \gap
    \endintro

    % page 1
    r4\p c c c | f,1 | c'4 c c c | f,1 | c'4 c c c | 
    bf2 bf4 r4 | r4 bf2\< bf4\! | bf2 bf2 | c2.\mp g4 | a2. e4 |
    % page 2
    f2 d2\> | g2\! r2 | 
    r4\p c c c | f,1 | c'4 c8 c c4 c | f,1 | c'4 c2.\< | bf2\!\mp bf2 | 
    c2 e2 | g1 | 
  }
  \alternative { { c,2. r4 } { c4 c\mf c c } }
}

bassIIb = {
  \tempo "Sancta Maria"
  % page 3
  << f,2 c'2 >> << f,2 c'2 >> | r4 f,2-- a4 | c2 c4 r4 | r4 c c c |
  d d a d | a2. a4 | g2 r2 | r4 c c c | << f,2 c'2 >> << f,2 c'2 >> |
  % page 4
  r4 f, f a | c2 c2 | r4 c2( a4) | d2 a4( f4) | e2. g4 |
  a2 a2 | d2( f2 | g2) g,2 \bar "||"
  \tempo "Amen"
  c1~\mp\< | c2 c2 | bf1\! | bf1 | a1~ | a2\mf\< a2 | f2.\! a4 | c1\f |
  c1 \fermata \bar "|."
}



%
% Define the parts.
%




flute = \relative c'' {
  \set Staff.instrumentName = #"Flute "
  \set Staff.shortInstrumentName = #"Fl "
  \set Staff.midiInstrument = #"flute"

  \clef treble \key c \major
  \prefix
  \sopranoIalt
  \sopranoIb
}

clarinetone = \relative c'' {
  \set Staff.instrumentName = #"Clarinet 1 "
  \set Staff.shortInstrumentName = #"Cl1 "
  \set Staff.midiInstrument = #"clarinet"

  \clef treble \key c \major
  \prefix
  \sopranoIalt
  \sopranoIb
}

clarinettwo = \relative c' {
  \set Staff.instrumentName = #"Clarinet 2 "
  \set Staff.shortInstrumentName = #"Cl2 "
  \set Staff.midiInstrument = #"clarinet"

  \clef treble \key c \major
  \prefix
  \altoIalt
  \altoIb
}

clarinetthree = \relative c' {
  \set Staff.instrumentName = #"Clarinet 3 "
  \set Staff.shortInstrumentName = #"Cl3 "
  \set Staff.midiInstrument = #"clarinet"

  \clef treble \key c \major
  \prefix
  \altoIIalt
  \altoIIb
}

altoclarinet = \relative c'' {
  \set Staff.instrumentName = #"Alto Clar "
  \set Staff.shortInstrumentName = #"ACl  "
  \set Staff.midiInstrument = #"clarinet"

  \clef treble \key c \major
  \prefix

  \tenorIa
  \tenorIb
}

bassclarinet = \relative c'' {
  \set Staff.instrumentName = #"Bass Clarinet "
  \set Staff.shortInstrumentName = #"BCl "
  \set Staff.midiInstrument = #"clarinet"

  \clef treble \key c \major
  \prefix

  \tenorIIa
  \tenorIIb
}

altosax = \relative c'' {
  \set Staff.instrumentName = #"Alto Sax "
  \set Staff.shortInstrumentName = #"ASx  "
  \set Staff.midiInstrument = #"saxophone"

  \clef treble \key c \major
  \prefix

  \tenorIa
  \tenorAb
}

tenorsax = \relative c'' {
  \set Staff.instrumentName = #"Tenor Sax "
  \set Staff.shortInstrumentName = #"TSx "
  \set Staff.midiInstrument = #"saxophone"

  \clef treble \key c \major
  \prefix

  \tenorIIa
  \tenorIIb
}

barisax = \relative c'' {
  \set Staff.instrumentName = #"Bari Sax "
  \set Staff.shortInstrumentName = #"BSx "
  \set Staff.midiInstrument = #"saxophone"

  \clef treble \key c \major
  \prefix

  \bassIa
  \bassIb
}

trumpetone = \relative c' {
  \set Staff.instrumentName = #"Trumpet 1 "
  \set Staff.shortInstrumentName = #"Tp1 "
  \set Staff.midiInstrument = #"trumpet"

  \clef treble \key c \major
  \prefix

  \sopranoIasolo
  \sopranoIb
}

trumpettwo = \relative c' {
  \set Staff.instrumentName = #"Trumpet 2 "
  \set Staff.shortInstrumentName = #"Tp2 "
  \set Staff.midiInstrument = #"trumpet"

  \clef treble \key c \major
  \prefix
  \altoIa
  \altoIb
}

trumpetthree = \relative c' {
  \set Staff.instrumentName = #"Trumpet 3 "
  \set Staff.shortInstrumentName = #"Tp3 "
  \set Staff.midiInstrument = #"trumpet"

  \clef treble \key c \major
  \prefix
  \altoIIa
  \altoIIb
}

euphoniumtc = \relative c' {
  \set Staff.instrumentName = #"Euphonium TC "
  \set Staff.shortInstrumentName = #"ET "
  \set Staff.midiInstrument = #"trombone"

  \clef treble \key c \major
  \prefix
  \tenorIasolo
  \tenorIb
}

euphoniumbc = \relative c {
  \set Staff.instrumentName = #"Euphonium BC"
  \set Staff.shortInstrumentName = #"EB "
  \set Staff.midiInstrument = #"trombone"

  \clef bass \key c \major
  \prefix
  \tenorIasolo
  \tenorIb
}

% Tenor II

tromboneone = \relative c' {
  \set Staff.instrumentName = #"Trombone 1 "
  \set Staff.shortInstrumentName = #"Tb1 "
  \set Staff.midiInstrument = #"trombone"

  \clef bass \key c \major
  \prefix
  \tenorIIa
  \tenorIIb
}

hornone = \relative c'' {
  \set Staff.instrumentName = #"Horn 1 "
  \set Staff.shortInstrumentName = "Hn1 "
  \set Staff.midiInstrument = #"horn"

  \clef treble \key c \major
  \prefix
  \tenorIIasolo
  \tenorIIb
}

horntwo = \relative c'' {
  \set Staff.instrumentName = #"Horn 2 "
  \set Staff.shortInstrumentName = "Hn2 "
  \set Staff.midiInstrument = #"horn"

  \clef treble \key c \major
  \prefix
  \altoIIa
  \altoIIb
}

% Bass I

trombonetwo = \relative c {
  \set Staff.instrumentName = #"Trombone 2 "
  \set Staff.shortInstrumentName = #"Tb2 "
  \set Staff.midiInstrument = #"trombone"

  \clef bass \key c \major
  \prefix

  \bassIa
  \bassIb
}

% Bass II

basstrombone = \relative c {
  \set Staff.instrumentName = #"Bass Trombone "
  \set Staff.shortInstrumentName = #"BT "
  \set Staff.midiInstrument = #"tuba"

  \clef bass \key c \major
  \prefix

  \bassIIa
  \bassIIb
}

tuba = \relative c {
  \set Staff.instrumentName = #"Tuba "
  \set Staff.shortInstrumentName = #"Tba "
  \set Staff.midiInstrument = #"tuba"

  \clef bass \key c \major
  \prefix

  \bassIIa
  \bassIIb
}

music = {
  <<
    \new Staff  \transpose d  c   \flute
    \new StaffGroup <<
     \new Staff  \transpose c  c   \clarinetone
     \new Staff  \transpose c  c   \clarinettwo
     \new Staff  \transpose c  c   \clarinetthree
     \new Staff  \transpose f  c   \altoclarinet
     \new Staff  \transpose c  c   \bassclarinet
    >>
    \new StaffGroup <<
     \new Staff  \transpose f  c   \altosax
     \new Staff  \transpose c  c   \tenorsax
     \new Staff  \transpose f  c   \barisax
    >>
    \new StaffGroup <<
     \new Staff  \transpose g  c   \hornone
     \new Staff  \transpose g  c   \horntwo
    >>
    \new StaffGroup <<
     \new Staff  \transpose c  c   \trumpetone
     \new Staff  \transpose c  c   \trumpettwo
     \new Staff  \transpose c  c   \trumpetthree
    >>
    \new StaffGroup <<
     \new Staff  \transpose d  c   \tromboneone
     \new Staff  \transpose d  c   \trombonetwo
    >>
    \new Staff  \transpose d  c   \basstrombone
    \new StaffGroup <<
     \new Staff  \transpose c  c   \euphoniumtc
     \new Staff  \transpose d  c   \euphoniumbc
    >>
    \new Staff  \transpose d  c   \tuba
  >>
}


parts = {
  <<
     \tag #'flt   \new Staff  \transpose d  c   \flute
     \tag #'clr1  \new Staff  \transpose c  c   \clarinetone
     \tag #'clr2  \new Staff  \transpose c  c   \clarinettwo
     \tag #'clr3  \new Staff  \transpose c  c   \clarinetthree
     \tag #'clra  \new Staff  \transpose f  c   \altoclarinet
     \tag #'clrb  \new Staff  \transpose c  c   \bassclarinet
     \tag #'saxa  \new Staff  \transpose f  c   \altosax
     \tag #'saxt  \new Staff  \transpose c  c   \tenorsax
     \tag #'saxb  \new Staff  \transpose f  c   \barisax
     \tag #'tpt1  \new Staff  \transpose c  c   \trumpetone
     \tag #'tpt2  \new Staff  \transpose c  c   \trumpettwo
     \tag #'tpt3  \new Staff  \transpose c  c   \trumpetthree
     \tag #'tbn1  \new Staff  \transpose d  c   \tromboneone
     \tag #'tbn2  \new Staff  \transpose d  c   \trombonetwo
     \tag #'tbnb  \new Staff  \transpose d  c   \basstrombone
     \tag #'hrn1  \new Staff  \transpose g  c   \hornone
     \tag #'hrn2  \new Staff  \transpose g  c   \horntwo
     \tag #'eutc  \new Staff  \transpose c  c   \euphoniumtc
     \tag #'eubc  \new Staff  \transpose d  c   \euphoniumbc
     \tag #'tuba  \new Staff  \transpose d  c   \tuba
  >>
}
