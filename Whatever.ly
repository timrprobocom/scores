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
}

\header {
    title = "Whatever Happened"
}


vocal = \relative c'' {
  \clef treble \key a \major
  \override Staff.TimeSignature #'style = #'()
  \time 4/4

  b1~|b1| r8 cs cs cs d cs b cs | a2. r4 | r8 fs8 fs fs g fs e a |
  fs16( e16 d8~) d4 r8 b8 b8 cs8 |
  d8 d d e d4 r4 | b8 cs d8. fs16 a4 b4 | c8( b8 a4) r8 fs e d 
  \bar "||"
}

texta = \lyricmode {
  Spears!  What -- ev -- er hap -- pened to my
  show! I was a hit. Now, I don't know__  I'm with a
  bunch of Brit -- ish knights, pran -- cing round in wool -- y
  tights__ I might as
}


upper = \relative c'' {
  \clef treble \key a \major
  \time 4/4

  <<
    { <a b>8 d, fs b cs b a gs }
    \\
    { <d fs>4 d4 <d fs>2 }
  >> |
  <<
    { d'8 fs, a d <gs, b e>16 e fs gs a b cs d }
    \\
    { <d, fs a>2 s2 }
  >> |
  << 
    { e'2 fs,4 gs4 }
    \\
    { <a cs>8 e <a cs> e <b d>8 fs cs' gs }
  >> |
  %% Page 4
  <<
    { a'4. cs,8 cs' b a g }
    \\
    { fs8 cs fs cs cs4 e4 }
  >> |
  <<
    { fs2 b4 cs }
    \\
    { <d, fs>8 a <d fs> a <e' g> cs fs cs }
  >> |
  <<
    { d'4 b4 fs2 }
    \\
    { fs8 d fs d <d fs> b <d fs> b }
  >> |
  <<
    { g'2 a2 }
    \\
    { d,8 b d b d a d a }
  >> |
  <<
    { b'2. <a cs>4 }
    \\
    { d,8 b d b g' d g d }
  >> |
  <<
    { e'4 a8 g fs fs e d }
    \\
    { c8 g <c e>4 <a d>2 }
  >> 
  \bar "||"
}

lower = \relative c {
  \clef bass \key a \major
  \time 4/4

  <e, e'>4. <e e'>8 <e e'>2 |
  <e e'>2 <e e'>8 <d d'> <cs cs'> <b b'> |
  <a a'>4. a'8 gs4 f4 |
  %% Page 4
  fs4. fs8 fs4 e4 | d4. d'8 cs4 <as fs'>4 |
  b4. b8 a2 |
  g4. g8 fs4. fs8 | e4. e8 a4 a4 | d,4. d8 d d d d 
  \bar "||"
}





\score {
  <<
   \new Voice = "vocal"   \vocal
    \new Lyrics \lyricsto vocal \texta
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
  >>
  \layout {
    \context { \RemoveEmptyStaffContext }
  }
}
