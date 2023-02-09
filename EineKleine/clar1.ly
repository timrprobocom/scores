\version "2.10.0"

\include "functions.ly"

violinOne = \new Voice {
  \set Staff.midiInstrument = "clarinet"
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override MultiMeasureRest #'expand-limit = 1

  \clef treble
  \key g \major
  \time 4/4

  \relative g'' {
    \repeat volta 2 {

      %% primary theme

      g4\f r8 d g4 r8 d |
      g d g b d4 r |
      c4 r8 a c4 r8 a |
      c a fis a d,4 r |
      g8 r g4. b8( a) g-. %% "rocket theme"
      g\trill(  fis8) fis4. a8( c) fis,-.
      a( g) g4. b8( a) g-.
      g\trill(  fis8) fis4. a8( c) fis,-.
      g-. g-. \appoggiatura g16 fis8( e16 fis) g8-. g-. \appoggiatura b16 a8( g16 a)
      b8-. b-. \appoggiatura d16 c8( b16 c) d4 r
      d,2\p( e) %% piano
      \acciaccatura d8 c4 c \acciaccatura c8 b4 b
      \acciaccatura b8 a4 a g8( fis) e-. fis-.
      g8 r a r b r r4
      d2( e)
      d8( c) c-. c-. c( b) b-. b-.
      b( a) a-. a-. g( fis e fis)
      g2~\sf g8 g16\p\trill(  fis32 g a8 fis) %% sforzando
      b2~\sf b8 b16\p\trill(  a32 b c8 a)
      d8 d d d e e fis fis |
      g g a a b b cis cis \endcresc |
      d4.\f a8 cis8.( a16) cis8.( a16) %% \forte
      d4.( a8) cis8.( a16) cis8.( a16)
      d8 d4 d d d8~ |
      d8 d4 d d d8 |
      cis8 a d a cis a d a
      cis a, a a a4 r

      %% secondary theme

      \break \mark \default
      a'4.\p( \times 2/3 { g16 fis e } d8) r b' r
      g r e r a r r4
      fis4.( \times 2/3 { e16 d cis } b8)  r g' r
      fis2( e4) r
      r8 a-. a-. a-. a-. a-. a-. a-.
      a-. a-. a-. a-. a-. a-. b-. cis-.
      cis( d) r b b( a) r cis,
      d4 r8 a'-. d( cis b a)
      \pitchedTrill b\trill( cis  a8) r a-. a-. a-. a-. a-.
      \pitchedTrill b\trill( cis  a8) r a d( cis b a)
      \pitchedTrill b\trill( cis  a8) r a-. a-. a-. a-. a-.
      \pitchedTrill b\trill( cis  a8) r4 b4.\f \times 2/3 { a16( g fis }
      g4) r a4. \times 2/3 { g16( fis e }
      fis4) r b8( cis16 d cis8) b-.
      b( a) fis-. a-. a( g) fis-. e-.
      d4 r8 a'\p d( cis b a)
      \pitchedTrill b\trill( cis  a8) r a-. a-. a-. a-. a-.
      \pitchedTrill b\trill( cis  a8) r a d( cis b a)
      \pitchedTrill b\trill( cis  a8) r a-. a-. a-. a-. a-.
      \pitchedTrill b\trill( cis  a8) r4 b4.\f \times 2/3 { a16( g fis }
      g4) r a4. \times 2/3 { g16( fis e }
      fis4) r b8( cis16 d cis8) b-.
      b( a) fis-. a-. a( g) fis-. e-.
      d a b cis d-. d-. e\trill(  d16 e %% tutti
      fis8) cis d e fis fis g\trill(  fis16 g
      a8) a ais\trill(  gis16 ais b4) r
      b,4.\p( e8) d( cis b a)
      d r fis r d r r4

    }

    %% development

    \break \mark \default
    d4\f r8 a d4 r8 a
    d a d fis a4 r
    a4 r8 fis a4 r8 fis
    a fis dis fis b,4 r

    r r8 g'8\p c( b a g)
    a\trill(  g8) r g-. g-. g-. g-. g-.
    a\trill(  g8) r g c( b a g)
    a\trill(  g8) r g g g g g
    a\trill(  g8) r g c( b a g)
    a\trill(  gis8) r gis gis gis gis gis
    b\trill(  a8) r a c( bes a g)
    g\trill(  fis8) r fis fis fis fis fis
    a\trill(  g8) r es g( f es d)
    d\trill(  cis8) r cis cis cis cis cis
    e\trill(  d8) r d,\f( e fis g a %% forte
    c bes) r fis( g a bes cis
    e d) r d\p( e fis g a
    bes4 b c cis)
    d1(
    d2) fis,4.\trill(  e16 fis)

    %% recapulation
    %% primary theme

    \mark \default %% no break (no rest)
    g4\f r8 d g4 r8 d
    g d g b d4 r
    c4 r8 a c4 r8 a
    c a fis a d,4 r
    g8 r g4. b8( a) g-. %% "rocket theme"
    g\trill(  fis8) fis4. a8( c) fis,-.
    a( g) g4. b8( a) g-.
    g\trill(  fis8) fis4. a8( c) fis,-.
    g-. g-. \appoggiatura g16 fis8( e16 fis) g8-. g-. \appoggiatura b16 a8( g16 a)
    b8-. b-. \appoggiatura d16 c8( b16 c) d4 r
    d,2\p( e) %% piano
    \acciaccatura d8 c4 c \acciaccatura c8 b4 b
    \acciaccatura b8 a4 a g8( fis) e-. fis-.
    g8 r a r b r r4
    d2( e)
    d8( c) c-. c-. c( b) b-. b-.
    b( a) a-. a-. g( fis e fis)
    g2~\sf g8 g16\p\trill(  fis32 g a8 fis) %% sforzando
    b2~\sf b8 b16\p\trill(  a32 b c8 a)
    d8 d d d e e fis fis |
    g g a a b b cis cis \endcresc |
    d4.\f a8 cis8.( a16) cis8.( a16) %% \forte
    d4.( a8) cis8.( a16) cis8.( a16)
    d8-. a-. cis-. a-. d-. a-. cis-. a-.
    d d,, d d d4 r

    %% secondary theme

    \break \mark \default
    d'4.\p( \times 2/3 { c16 b a } g8) r e' r
    c r a r d r r4
    b'4.( \times 2/3 { a16 g fis } e8)  r c' r
    b2( a4) r
    r8 d-. d-. d-. d-. d-. d-. d-.
    d-. d-. d-. d-. d( c a fis)
    fis( g) r e e( d) r fis,
    g4 r8 d'-. g( fis e d)
    e\trill(  d8) r d-. d-. d-. d-. d-.
    e\trill(  d8) r d g( fis e d)
    e\trill(  d8) r d-. d-. d-. d-. d-.
    e\trill(  d8) r4 e4.\f \times 2/3 { d16( c b }
    c4) r d4. \times 2/3 { c16( b a }
    b4) r e8( fis16 g fis8) e-.
    e( d) b-. d-. d( c) b-. a-.
    g4 r8 d'-. g( fis e d)
    e\trill(  d8) r d-. d-. d-. d-. d-.
    e\trill(  d8) r d g( fis e d)
    e\trill(  d8) r d-. d-. d-. d-. d-.
    e\trill(  d8) r4 e'4.\f \times 2/3 { d16( c b }
    c4) r <d d,>4. \times 2/3 { c16( b a }
    b4) r e,8( fis16 g fis8) e-.
    d-. g-. b-. d-. d( c) b-. a-.
    g d, e fis g g a\trill(  g16 a %% tutti
    b8) fis g a b b c\trill(  b16 c
    d8) d dis\trill(  cis16 dis e4) r
    e,4.\p( a8) g( fis e d)
    d'( cis c b d cis c b)
    e,4.( a8) g( fis e d)
    d'( e fis g d e fis g)
    a4 r d\f r %% forte
    \break \mark \default
    g, r8 d b g b d %% coda theme
    g d g b d4 fis,
    g  r8 d b g b d
    g d g b d4 fis,
    g  r g r
    g  g,8. g16 g4 r

    \bar "|."
  }
}

\book {
	\header {
		\include "headers.ly"
		instrument = "Clarinet 1"
	}
	\score {
		\iftop {
			\set Score.skipBars = ##t
			\new Staff \nomidi \violinOne
		}
		\layout {}
	}
	\paper {
		ragged-bottom = ##f
		ragged-last-bottom = ##f
	}
}
