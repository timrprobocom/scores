%{
    Comments
%}
\version "2.12.3"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    between-system-padding = #3.0
    between-system-space = #3.0
    ragged-last-bottom = ##t
}

\header {
    title = "11A Wolf Chase #2"
}

moltoRit = \markup { \italic { molto rit. } }
pocoRit = \markup { \italic { poco rit. } }
moltoRall = \markup { \italic { molto rall. } }
bendWithLip = \markup { \italic { bend with lip } }
accelPoco = \markup { \italic { accel poco a poco } }
rallPoco = \markup { \italic { rall poco a poco } }


clarinet = \relative c'' {
  \clef treble \key d \major
  \override Staff.TimeSignature #'style = #'()
  \override Score.BarNumber #'break-visibility = #'#(#t #t #t)
  \override MultiMeasureRest #'expand-limit = #1
  \override BreathingSign #'text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \compressFullBarRests

  \time 4/4
  \tempo "L'istesso"

  fs16(-> \ff g fs e) d(-> e d cs) b(-> cs b a) g(-> a g fs) |
  e'(-> fs e d) cs(-> d cs b) a(-> g fs e d cs b a)-> | g4. cs'8( b4.) as8( |
  b2) g2-> | r4 r8 cs8( b4.) as8( | b2) fs'2-> | r4 r8 cs8( b4.) as8( | b2) es,2-> |
  fs8-> \tempo "Meno mosso" r8 r4 r2 | R1 | R1 _\moltoRit |
  \mark Flute
  b16( \tempo "Tempo I" d b d) d( f d f) f( g f g) g( b g b) | fs8 r8 r4 r2 | 
    \appoggiatura a8 bf4-^ \sfz r4 \appoggiatura ds,8 e4-> \sfz r4 |
  R1*2

  \set Score.currentBarNumber = #29
  cs'2-> d4-^ g,4-^ | cs1-> | 
  r8 ds,8-- _\rallPoco ds--[ es--] es--[ fs-- fs-- ds--] | gs4( fs ds as) |
  r8 ds8-- ds--[ es--] es--[ fs-- fs-- ds--] | 
  gs4( fs) fs,16( \< gs as b \times 4/5 { cs ds e fs gs) \! } | as8 \fff r8 r4 r2 |
  \tempo "(To Clar) Calmato"
  r2\fermata fs,4(\mp es4 \bar "||"

  \mark \markup{ \box 45 }
  \key fs \major
  ds?2.) fs4(~|fs2 ds2 | cs4 b4 gs2 | as2) fs'4( es4 | ds2 cs2) | b4( cs ds es  ) |

  \mark \markup{ \box 45 }
  \key e \major
  \tempo Espressivo
  r8\mf cs8( ds e gs fs e cs | ds2) r2 | r4 gs'4--\mp gs( as) | as( b) b( gs |
  e1~ | e4) e8( fs8 a?4. gs8 | fs2 \> d2~ | d2.)_\pocoRit \! r4 \bar "||"

  \mark \markup{ \box 45 }
  \key g \major
  \tempo "A tempo"
  R1 | r4 e8( d8 b4 \> a4) \!| a2(\p fs~ | fs) b | b(_\pocoRit g) | a( e) \fermata 
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
