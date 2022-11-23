%{
    Comments
%}
\version "2.10.33"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    ragged-last-bottom = ##t
}

\header {
    title = "8 Gaston"
}

moltoRall = \markup { \italic { molto rall. } }
% cresc = \markup { \italic cresc }
bendWithLip = \markup { \italic { bend with lip } }


clarinet = \relative c'' {
  \clef treble \key d \major
  \override Staff.TimeSignature #'style = #'()
  \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
  \override MultiMeasureRest #'expand-limit = #1
  \override BreathingSign #'text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \compressFullBarRests

  \time 3/4
  \tempo "In 1, forcefully"

  \set Score.currentBarNumber = #184

  R2.*3 r4 b(\mf cs) |
  d(_\moltoRall b cs) | gs'(\< d gs)\! |
    g!2.\f \fermata \breathe

  \mark \markup{ \box 191 }
  a2.\mp\fermata\< | as2.\fermata | \tempo "A tempo" b4->-. \sfz \! r4 r4 |
  r4 a( \< as |  b->-.)\sfz \! r4 r4 |
  r4 cs,( \p \cresc d | e fs \< g | a b cs) \! |
  bf->-. \sfz r r | r e,8( \f g bf c) | d4-> a-> af-> | g-> r r \bar "||" |
  \time 2/2


  \set Score.currentBarNumber = #218
  \mark \markup{ \box 218 }

  b,4-. fs2-> a8(as8 | b4-.) cs,4-. d2-> | fs'8(-> es fs d') c(-> a f c) |
    b'8(-> as b) r8 a2 |
  e'4-. b2-> d8( ds | e4-.) fs,-. g2-> | d8(-> cs d as') gs( e es cs) | 
    g'!4-. a!4-. g2-> |
  R1*3 r4 d4-.-> d2-.-> |

  % 230 on p45

  r4 d,8-> d8-> d2-> | r4 \times 2/3 { d'8( \mf e8 fs8) } g4-. b-. |
    c4. b8( c b a4) |
  d4-. g,-. b-. d-. | ds1~ \ff \startTrillSpan | 
    ds2 \times 2/3 { fs,8( \stopTrillSpan g gs } a16[ as b bs] \bar "||" |

  \mark \markup{ \box 236 }
  \key e \major
  cs4)-. gs!2-> b8( bs | cs4)-. e4-> \sfz r2 | cs4-. gs2-> b8( bs |
      cs4)-. r4 r4 b!8( bs |
  cs4)-. gs2-> r4 | as4.-> as8--  as4-. as4-. |
  \set Score.currentBarNumber = #260

  \times 2/3 { b4(_\bendWithLip  as b } 
    \times 2/3 { as b as) } | b4 b4-^ e4-^ r4 \bar "||"

  \set Score.currentBarNumber = #311
  \mark \markup{ \box 311 }
  \tempo "Tempo I in 2"
  \key ef \major 
  
  r1 | r2 f,8( g! af!4-.) | f-^ r4 r2 | \times 2/3 { a8(-> g gf } f4)-. c'-> a 
  \bar "||"
  \mark \markup{ \box 315 }
  \key b \major
  \repeat tremolo 16 { gs!32->( fs! } | \repeat tremolo 16 { gs32 fs) } |
    r4 \times 2/3 { b,8( cs ds } e4-.) es-. |
    fs-.-> r r r \bar "||"

  \set Score.currentBarNumber = #339
  \mark \markup{ \box 339 }
  \key d \major
  \tempo "More energetically"
  d4-^ b2-> a8( as | b4)-. cs?-. d2-> | d4-^ b2-> a8( as | b4)-. bs-. cs2-> |
  d4-^ b!2-> cs8-. d-. | gs4.-> gs8 gs4-. gs4-. |

  \set Score.currentBarNumber = #351
  \time 3/2 
  \tempo "In 3"
  b!4-> fs-. fs-> fs-. b-> d-. | fs-> d-. d-> b-. d-> fs-. |

  \set Score.currentBarNumber = #355
  \mark \markup{ \box 355 }
  \time 3/4
  \tempo "In 1"
  cs2.->~cs2. | cs2.->~cs2. \bar "||"

  \mark \markup{ \box 359 }
  b4->( fs) fs-. | fs-. a-.-> as-.-> | b4->( cs,) cs-. | cs-. r4 r4 |
  R2.*2
  R2. | r4 \breathe \tempo "Poco meno mosso" r4 r4 |
  R2. | r4 r4 \times 4/5 { d,16( \mp fs a d fs) } | gs2.(-> \> | d2.) \! \bar "||"

  \mark \markup{ \box 371 }
  \tempo "A tempo"
  R2. | r4 \times 2/3 { a8[ \f b cs] } \times 2/3 { d[ e fs] } | g4(-> d) d-. |
     b'(-> g) g-. |
  b(-> g b) | a( b bs) | cs4-> r4 r4 | r2. \bar "||"

  \mark \markup{ \box 379 }
  r8 a8( fs[ a fs a]) | r8 a8( fs[ a fs a]) | 
  r8 fs8( d[ fs d fs]) | r8 fs8( d[ fs d fs]) |
  af4-> r8 af8-. af4-. | g4-^ g-^ g-^ | fs-^ r8 d,8-> d4-> | d4-> r4 r4 
  \bar "|."
}




\score {
  \clarinet
  \layout {
    \context { 
      \RemoveEmptyStaffContext 
    }
    \context {
      \Score
      \override SpacingSpanner
          #'base-shortest-duration = #(ly:make-moment 1 32)
    }
  }
}
