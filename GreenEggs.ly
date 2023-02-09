%{
    Comments
%}
\version "2.12.3"
\include "english.ly"

#(set-default-paper-size "letter" )
%% #(set-global-staff-size 14 )

\paper {
    ragged-last-bottom = ##t
    #(set-paper-size "letter" )
    system-system-spacing #'basic-distance = #20
}

\header {
    title = "30 Green Eggs"
    subtitle = "Keyboard 1"
}


upper = \relative c'' {
  \clef treble \key af \major
  \time 4/4

  \set Score.currentBarNumber = #29
  \mark \markup{ \box 29 }
  \repeat unfold 3 {
    %% Db7 2nd inversion
    <bf df f af>4 <bf df f af>4 
    %% Do7 2nd inversion
    <b d f af>4 <b d f af>4 |
    %% Ab6/Eb
    <c ef f af>4 <c ef f af>4
    %% Ab13
    <c ef f af>4 <c ef f af>4 |
  }
  %% Bb7(b9)
  <d f af cf>4 r4 r2 |
  r2 r4 <a c fs a>~-> \bar "||"
  \mark \markup{ \box 37 }
  \key a \major
  <a c fs a>4 <fs fs'> <a c fs a> <fs fs'> |
  <a cs e fs a>4. <cs cs'>8-^ r4 <a c fs a>4~ |
  <a c fs a>4 <fs fs'> <a c fs a> <fs fs'> |
  <a cs e fs a>4. <fs fs'>8-^ r4 <a c fs a>4~ |
  <a c fs a>4 <fs fs'> <a c fs a> <fs fs'> |
  <a cs e fs a>4. <cs cs'>8-^ r4 <b ds gs b>4-> |
  r4 b, b b8 e8 | r8 e8 d4 cs b |
  %% Bar 45
  r4 <a c fs a>-> r <a c fs a>-> | r4 <a cs e a>-> r <cs fs a> |
  r4 <a c fs a>-> r <a c fs a>-> | r4 <a cs e a>-> r <cs fs a> |
  r4 <a c fs a>-> r <a c fs a>-> | r4 <a cs e a>-> r8 <c e a c>4. |
  <a ef' gs b>4-^ r4 r2 |
  %% Page 240
  r2 r4 <cs fs a>-> \bar "||"
  \mark \markup{ \box 53 }
  \key bf \major
  \repeat unfold 3 {
    %% Eb7
    <c ef g bf>4 <c ef g bf>4
    <cs e g bf>4 <cs e g bf>4 |
    <bf f' g bf>4 <bf f' g bf>4 
    <bf f' g bf>4 <bf f' g bf>4 |
  }
  <bf ff' af c>4-^ r4 r2 | r2 r8 f8->\( g4-.\) \bar "||"
  \mark \markup{ \box 61 }
  \repeat unfold 3 {
    <c ef g bf>4 <c ef g bf>4
    <cs e g bf>4 <cs e g bf>4 |
    <bf f' bf>4 <bf f' bf>4 
    <bf f' bf>4 <bf f' bf>4 |
  }
  <c e bf' c>4-^ r4 r2 | R1 \bar "||"
  \mark \markup{ \box 69 }
  R1*8
  \mark \markup{ \box 77 }
  \repeat unfold 3 {
    %% Eb7
    <c ef g bf>4 <c ef g bf>4
    <cs e g bf>4 <cs e g bf>4 |
    <d f g bf>4 <d f g bf>4 
    <d f g bf>4 <d f g bf>4 |
  }
  r4 <bf e g bf>4-^ r4 <bf e g bf>4-^ |
  <df df'>8-> <ef ef'>8-. r8 <ff ff'>-. r4 <f f'>8 <gf bff ef gf>8-.~
  \bar "||"
  \mark \markup{ \box 85 }
  \key gf \major
  <gf bff ef gf>4 
  <gf bff ef gf>4 
  <a c ef gf>4
  <a c ef gf>8
  <bf df ef gf>8 |
  <bf df ef gf>4 <bf df ef gf>4 <bf df ef gf>4 <bf df ef gf>4 |
  <gf bff ef gf>4 
  <gf bff ef gf>4 
  <a c ef gf>4
  <a c ef gf>8
  <bf df ef gf>8 |
  <bf df ef gf>4 <bf df ef gf>4 <bf df ef gf>4 <bf df ef gf>4 |
  <gf bff ef gf>4 
  <gf bff ef gf>4 
  <a c ef gf>4
  <a c ef gf>4 |
  <bf df ef gf>4 <bf df ef gf>4 <bf df ef gf>4 <bf df ef gf>4 |
  <c ef f af>4 r4 r2 |
  %% Page 242
}

lower = \relative c, {
  \clef bass \key af \major
  \time 4/4

  \set Score.currentBarNumber = #29
  \mark \markup{ \box 29 }
  df4 df d d | ef ef af af, | 
  df4 df d d | ef ef af af, | 
  df4 df d d | ef e f f, | 
  bf-^ r4 r2 | 
  <af af'>4-^ r8 <af af'>8~<af af'>4 <d d'>4~
  \bar "||" \mark \markup{ \box 37 }
  \key a \major
  <d d'>4 d ds ds | e e a <d, d'>~ | <d d'>4 d ds ds | e e a <d, d'>~ |
  <d d'>4 d ds ds | e e a <b a'>-> | r4 b, b b8 e8 | r8 e d4 cs b |
  %% Bar 45
  r4 <d d'>-> r <ds ds'>-> | r <e e'>-> r <a g'>-> |
  r4 <d, d'>-> r <ds ds'>-> | r <e e'>-> r <a g'>-> |
  r4 <d, d'>-> r <ds ds'>-> | r <e e'>-> r8 <fs e>4.-> |
  <f ef>4-^ r4 r2 |
  %% Page 240
  r2 r4 <a g>-> \bar "||"

  \mark \markup{ \box 53 }
  \key bf \major
  ef4 ef e e | f f bf bf, | 
  ef4 ef e e | f f bf bf, | 
  ef4 ef e e | f fs g g, |
  <gf' ff'>4 r4 r2 | r2 r8 f8->\( g4-.\) \bar "||"
  \mark \markup{ \box 61 }
  ef4 ef e e8 f8 | r4 bf4 f bf, | 
  ef4 ef e e8 f8 | r4 bf4 f bf, | 
  ef4 ef e e8 f8 | r4 bf4 f bf, |  gf4-> r4 r2 | R1 \bar "||"
  \mark \markup{ \box 69 }
  bf4 r d r | ef r e r | f r g r | c, r f r |
  %% Page 241
  bf,4 r d r | ef r e <f, f'>-^ | R1 | r2 r4 <bf bf'>4-> \bar "||"
  \mark \markup{ \box 77 }
  ef4 ef e e | f f bf bf, | 
  ef4 ef e e | f f bf bf, | 
  ef4 ef e e | f fs g g, |
  r <c c'> r <c c'> | df af gf bf8-- cf8->~ \bar "||"
  \mark \markup{ \box 85 }
  \key gf \major
  cf4 cf c c8 df8 | r4 gf4 df gf,8 cf8~ | cf4 cf c c8 df8 | r4 gf df gf,8 cf~ |
  cf4 cf c c | df df ef ef | af, r4 r2 |
  %% Page 242
}



\score {
  <<
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { \RemoveEmptyStaffContext }
  }
}
