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
    system-system-spacing #'basic-distance = #16
}

\header {
    title = "30 Green Eggs 137"
    subtitle = "Keyboard 1"
}


upper = \relative c'' {
  \clef treble \key f \major
  \time 4/4

  \set Score.currentBarNumber = #137
  \mark \markup{ \box 137 }

  <a c ef af>4->\ff f' <a, c f> d |
  <f, bf d f> <f f'>8\( <af af'>\) r4 <a c ef af>~-> |
  <a c ef af>4-> f' <a, c f> d |
  << {af'4 f8\( g\)} \\ {<cf, df>4.  <bf c>8} >> r4  <a c ef af>~-> |
  <a c ef af>4-> f' <a, c f> d |
  <f, bf d f> <f f'>8\( <af af'>\) r4 <bf df ff bff>~-> \bar "||"
  \mark \markup{ \box 143 }
  \key gf \major
  <bf df ff bff>4 gf' <bf, df gf> ef |
  <gf, cf ef gf> <gf gf'>8\( <bff bff'>8\) r4 <bf df ff bff>4~ |
  <bf df ff bff>4 gf' <bf, df gf> ef |
  << { a4 gf8 af8 } \\ {<c, d>4. <cf df>8 } >> r4 <bf df ff bff>4~ |
  <bf df ff bff>4 gf' <bf, df gf> ef |
  <gf, cf ef gf> <gf gf'>8\( <bff bff'>8\) r4 <bff bff'>4~ |
  %% Page 419
  <bff bff'>4\( <gf gf'>8\) r8 <bff bff'>4\( <gf gf'>8\) r8 |
  <bff cf f bff>2 <af cf f af>4.-> <gf bf df gf>8-> |
  r8 a, bf->\( df ef gf af bff~ | bff4\) af8\( bff\) af\( gf ef4\) |
  <c fs a>4 r4 r2 | s2. <gf gf'>4-^\sfz \bar "|."
}

lower = \relative c,, {
  \clef bass \key f \major
  \time 4/4

  \set Score.currentBarNumber = #137
  \mark \markup{ \box 137 }
  f4 f' a, a' | bf, bf' b, b' | c, c' d, d' | df, df' <c, c'> <f, f'>~-> |
  <f f'> f' a, a' | bf, bf' b, <gf gf'>4~-> \bar "||"
  \mark \markup{ \box 143 }
  \key gf \major
  <gf gf'>4 gf' bf, bf' | cf, cf' c, c' | df, df' ef, ef' | 
  d, d' <df, df'> <gf, gf'>~-> | <gf gf'> gf' bf, bf' |
  cf, cf'8 <c, c'>8 r4 <bff bff'>4~-> |
  %% Page 419
  <bff bff'>4 <gf gf'>8 r8 <bff bff'>4 <gf gf'>8 r8 |
  r4 <df df'>2-> <df df'>4-> |
  <gf gf'> <gf gf'> <bf bf'> <bf bf'> |
  <cf cf'> <cf cf'> <c c'> <df df'> |
  <d d'>4 r4 r2 |
  << { <c' fs a>8 <cf f af> r8 <bf df gf>~ <bf df gf>4 }
    \\
    { d,8 df r8 gf~ gf4 }
  >>
  <gf, gf'>-^ \bar "|."
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
