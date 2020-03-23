%{
    Comments
%}
\version "2.14.2"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    #(set-paper-size "letter")
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    print-all-headers = ##t
}


prefix = {
  \time 6/8
  \tempo 8 = 120
  \mark \markup { Slow & smooth }
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
}

subMp = \markup { sub \dynamic mp }
ten = \markup { \italic ten }


%
% Define the parts.
%

notation = {
  \clef treble \key c \major
  \prefix

  s2.*2
  \bar "||" \mark \markup{ \box A }
  s2.*26
  \bar "|."
}



% Clarinet I

clarI = \relative c'' {
  \set Staff.instrumentName = #"Bb Clar I "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix

  R2.  R2.  

  c8--\mp c-- c-- e4( b8) | a4. g4. |
  c8( d e) c4 c'8^\ten | g4.~g4 e8 |
  g4( d8) f4( e8) | c2. |
  c8( d e) c4 b8 | d2. |

  c8-- c-- c-- e( c b) | a4. g4. |
  c8( d e) c4 c'8\fermata | g4.~g4 a8 |
  c4 a8 g4 f8 | g4. e4. |
  c8 d e c4 a8 | c4.~c4 a'8 |
  c4(\mf a8) g4( f8) | c'4( g8) f4( e8) |
  a2.~ | a4 f8 e4( d8) | c4 r8 r4. |
  R2. |
  c,8( d e) c4 g'8\fermata |
  c2.\fermata  |
  c8 d e  c4 a8 | 
  c2.\fermata
}

% Clarinet II

clarII = \relative c' {
  \set Staff.instrumentName = #"Bb Clar II "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix

  % I
  c2.\p  | 
  c2.  |
  c'8( g e) c'( g e) |
  a( e a)  g( e c) |
  c'( g a) e( a g) |
  c( g' e) c( g e) |
  % V   ii
  d( g d) f( d e) |
  % vi
  a4. e4. |
  % II7
  a8( b c)  a4 fs8 | 
  % V7
  g4. g'8 f d |

  % I
  c8( g e) c'( g e) |
  a( e a)  g( e c) |
  c'( g a) e( a g)\fermata |
  c,( e g c4.) |

  % 15: IV  V7
  f8( c f) g( d g) |

  % iii vi
  e( b e)  a( e c) | 
  % IV ii
  a( b c  a4.)  |
  % vi
  e4.~e4 r8 |
  d'4.\mp b4. | 
  e4 c8 c4. | 
  e2.~ |
  e4. b4 r8 | 
  c8--\mf^\markup { \italic melody } c-- c-- e4( b8) | a4.( g4.) |
  c8( d e) c4( c'8)\fermata |
  g2.\fermata |
  f4\mp r8 r4 f8 | 
  e4. g4.\fermata
}
% Clarinet III

clarIII = \relative c' {
  \set Staff.instrumentName = #"Bb Clar III "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix

  c8\p r r   e'16( g e c g e | 
  c8) r r   e'16( g e c g e | 
  c8) r r   e'16( g e c g e | 
  c8) r r   e'16( g e c g e | 
  c8) r r   e'16( g e c g e | 
  c8) r r   e'16( g e c g e | 
  % V   ii
  g8) r r   d16( f a d a f |
  % vi
  a8) r r   e'16( c a e c a |
  % II7
  d8) r r   d16( a d fs a d |
  % V7
  g8) r r   g16( f d g, f d |
  % I
  c8) r r   e'16( g e c g e | 
  c8) r r   e'16( g e c g e | 
  c8) r r   e'16( g e c g8\fermata | 
  e8) r r   c16( g c e g a | 
  % IV V7
  c8) r r   g16( d f g b d | 
  % iii VI
  e8) r r   a16( e c a e d |
  % IV ii7
  c8) r r   d'16( f d a f d |
  % vi
  a8) r r   e''16( a e c a c |
  % 19: ii V7
  d8)\mp r r   b,16( d f g b d |
  % I vi
  e8) r r   a16( e c a e c |
  % ii7
  a8) r r   f'16( a c f a c |
  % ii7 V7
  a8) r r   d,4. |
  % I
  c8 r4     c16( g e g e g |
  e8) r r   g'16( e c g e g |
  c4.)       g4.\fermata |
  c4.       c16( g c e g8)\fermata |

  a4 r8 r4 a,8 | 
  g4. e4\fermata
}

% Bass Clarinet

bassClar = \relative c {
  \set Staff.instrumentName = #"Bass Clar "
  \set Staff.shortInstrumentName = #""
  \set Staff.midiInstrument = #"clarinet"

  \prefix

  c'16(\p g c e g c    e8) r r |
  c,16( g c e g c   e8) r r |
  c,16( g c e g c   e8) r r |
  c,16( g c e g c   e8) r r |
  c,16( g c e g c   e8) r r |
  c,16( g c e g c   e8) r r |
  % V   ii
  g,,16( b d g b g  d8) r r |
  % vi
  a16( e' a c e a   e8) r r |
  % II7
  d,16( a d fs a d  fs8) r r |
  % V7
  g,,16( d' g b d f g8) r r |
  % I
  c,,16( g c e g c   e8) r r |
  c,16( g c e g c   e8) r r |
  c,16( g c e g c   e8) r r\fermata |
  c,16( g c e g c   e8) r r |
  % IV V7
  f,,16( a c f a c  b8) r r |
  % iii VI
  e,16( b e g b e   a8) r r |
  % 17: IV ii7
  f,,16( a c f a c  d8) r r |
  % vi
  a,16( c e c e a   c8) r r |
  % 19: ii V7
  d,16(\mp a d f a d   g8) r r |
  % I vi
  c,,16( g c e g c   a8) r r |
  % ii7
  d,16( a d f a d   f8) r r |
  % IV  V7
  f16( c a f c a    g8) r r |
  % I
  c16( g' e' g, e' g,  c,8) r r |
  % I
  e16( c e g c e   g8) r r |
  % I
  c,,16( g' e' g, e' g,  g,8) r r\fermata |
  % I
  e16( g c e g c  e,4.)\fermata |
  
  f4 e8 d4 r8 |

  c2\fermata
}



music = {
  <<
    \new Staff  \transpose c c << \notation \clarI >>
    \new Staff  \transpose c c << \notation \clarII >>
    \new Staff  \transpose c c << \notation \clarIII >>
    \new Staff  \transpose c c << \notation \bassClar >>
  >>
}


parts = {
  <<
    \tag #'clr1  \new Staff  \transpose c c  << \notation \clarI >>
    \tag #'clr2  \new Staff  \transpose c c  << \notation \clarII >>
    \tag #'clr3  \new Staff  \transpose c c  << \notation \clarIII >>
    \tag #'bass  \new Staff  \transpose c c << \notation \bassClar >>
  >>
}

\header {
  tagline = ""
}

\score {
  \music
  \header {
    title = "O Mio Babbino Caro"
    arranger = "Arr Tim Roberts"
  }
  \midi { }
  \layout {
    \context { \RemoveEmptyStaffContext }
  }
}
\pageBreak
\score {
  \keepWithTag #'clr1 \parts
  \header {
    title = "O Mio Babbino Caro"
    arranger = "Arr Tim Roberts"
  }
}
\pageBreak
\score {
  \keepWithTag #'clr2 \parts
  \header {
    title = "O Mio Babbino Caro"
    arranger = "Arr Tim Roberts"
  }
}
\pageBreak
\score {
  \keepWithTag #'clr3 \parts
  \header {
    title = "O Mio Babbino Caro"
    arranger = "Arr Tim Roberts"
  }
}
\pageBreak
\score {
  \keepWithTag #'bass \parts
  \header {
    title = "O Mio Babbino Caro"
    arranger = "Arr Tim Roberts"
  }
}
