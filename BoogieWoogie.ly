%{
    Comments
%}
\version "2.12.3"
\include "english.ly"

#(set-default-paper-size "letter" )

\paper {
    #(set-default-paper-size "letter" )
    #(set-paper-size "letter" )
    ragged-last-bottom = ##t
}

\header {
    title = "Boogie Woogie Bugle Boy"
}

upper = \relative c' {
    \clef treble \key c \major
    \time 2/2

    \repeat unfold 4
    { r8 <g c e> r <g c e> r <g c e> r <g c e> | }
    \mark \markup{ \box A }
    \repeat unfold 3
    { r8 <g c e> r <g c e> r <g c e> r <g c e> | }
    r8 <bf c e> r <bf c e> r <bf c e> r <bf c e> |
    r8 <a ef' f> r <a ef' f> r <a ef' f> r <a ef' f> |
    r8 <a ef' f> r <a ef' f> r <a ef' f> r <a ef' f> |
    r8 <g c e> r <g c e> r <g c e> r <g c e> |
    %% Page 4
    r8 <g c e> r <g c e> r <g c e> r <g c e> |
    r8 <b d g> r <b d g> r <b d g> r <b d g> |
    r8 <a ef' f> r <a ef' f> r <a ef' f> r <a ef' f> |
    r8 <g c e> r <g c e> r <g c e> r <g c e> |
    r8 <g c e> r <g c e> r <g c e> r <g c e> |
    %% Page 5
    \bar "|:"
    \repeat volta 2 {
      \mark \markup{ \box B }
      \repeat unfold 3
      { r8 <g c e> r <g c e> r <g c e> r <g c e> | }
      r8 <bf c e> r <bf c e> r <bf c e> r <bf c e> |
      %% Page 6
      r8 <a ef' f> r <a ef' f> r <a ef' f> r <a ef' f> |
      r8 <a ef' f> r <a ef' f> r <a ef' f> r <a ef' f> |
      r8 <g c e> r <g c e> r <g c e> r <g c e> |
      r8 <g c e> r <g c e> r <g c e> r <g c e> |
      %% Page 7
      r8 <b d g> r <b d g> r <b d g> r <b d g> |
      r8 <a ef' f> r <a ef' f> r <a ef' f> r <a ef' f> |
      r8 <g c e> r <g c e> r <g c e> r <g c e> |
      r8 <g c e> r <g c e> r <g c e> r <g c e> \bar "||"
      \mark \markup { \box C }
      r8 <g c e> r <g c e> r <g c e> r <g c e> |
      r8 <g c e> r <g c e> r <g c e> r <g c e> |
      %% Page 8
      r8 <g c e> r <g c e> r <g c e> r <g c e> |
      r8 <bf c e> r <bf c e> r <bf c e> r <bf c e> |
      r8 <a ef' f> r <a ef' f> r <a ef' f> r <a ef' f> |
      r8 <a ef' f> r <a ef' f> r <a ef' f> r <a ef' f> |
      %% Page 9
      r8 <g c e> r <g c e> r <g c e> r <g c e> |
      r8 <g c e> r <g c e> r <g c e> r <g c e> |
      r8 <b d g> r <b d g> r <b d g> r <b d g> |
    }
    \alternative {
      { 
      r8 <a ef' f> r <a ef' f> r <a ef' f> r <a ef' f> |
      r8 <g c e> r <g c e> r <g c e> r <g c e> |
      r8 <g c e> r <g c e> r <d' e g c> <d e g c> <d e g c> |
      <d e g c>4->-. r4 r2 | R1 | r2 r8 g a g | c a g ds e c a g 
      }
      {
        r8 <a ef' f> r <a ef' f> r <a ef' f> r <a ef' f> |
      }
    }
    r8 <c e g>-> <c e g>4-> <c ef a>-> <c ef a>-> |
    <b ds f b>4-> <b ds f b>8 <c e g c>~-><c e g c>4
      <ef af cf ef>8-> <d g bf d>~-^ | <d g bf d>1\fermata 
      \bar "|."
}




lower = \relative c, {
    \clef bass \key c \major
    \time 2/2

    c4 e g a | c a g e | c e g a | c a g e | 
    \mark \markup { \box A }
    c4 e g a | c a g e | 
    %% Page 3
    c e g a | c a g e | f a c d | c a g f | c e g a |
    %% Page 4
    c a g e | g d' b g | f c' a f | c e g a | c a g e \bar "||"
    %% Page 5
    \bar "|:"
    \repeat volta 2 {
      \mark \markup { \box B }
      c4 e g a | c a g e | c e g a | c a g e | 
      %% Page 6
      f a c d | c a g f | c e g a | c a g e |
      %% Page 7
      g d' b g | f c' a f | c e g a | c a g e \bar "||"
      \mark \markup { \box C }
      c e g a | c a g e |
      %% Page 8
      c e g a | c a g e | f a c d | c a g f |
      %% Page 9
      c e g a | c a g e | g d' b g |
    }
    \alternative {
      { f c' a f | c e g a | c a g e | 
      %% Page 10
      c-.-> r4 r2 | R1 | r2 r8 g'' a g | c a g ds e c a g 
      }
      { f4 c' a f }
    }
    r8 c-> e4-> f-> fs-> | 
        g8-> a b c~c4 <df f cf'>8 <c e bf'>8-^~ | 
        << { <c e bf'>1\fermata } { s2 c,2\fermata } >> 
        \bar "|."

}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
}

