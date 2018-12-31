%{
    Comments
%}

\version "2.16.0"
\include "english.ly"

#(set-default-paper-size "letter" )
% #(set-global-staff-size 24)

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

prefix = {
  \key d \minor
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
  \override Staff.TimeSignature #'style = #'()
}


notation = {
% Option 1 -- do the whole thing in 5/4
%    \time 5/4
%    s4 * 100
%

% Option 2 -- split 2/4 3/4
    \time 5/4
    s2 s2.
    \omit Score.TimeSignature
    \repeat unfold 19 { \time 2/4 s2 \bar "!" \time 3/4 s2. }
    \undo \omit Score.TimeSignature
%
    \time 2/4
    s2 *2
    \time 3/4
    s2. *2
    \bar "|."
}


righthand = \relative c' {
    \prefix
    \clef treble
    r2 \clef bass << a2. \\ { f8( e16 d f4 e4) } >> 
    |
    d16 a' e a f a e d   f b e, d f b f b    e, cs' e, cs' 
    |
    \times 2/3 { d,16 a' d }
        \times 2/3 { e,16 a e' }
        \times 2/3 { f,16 a f' }
        e,16[ d] 
    % Page 3 bar 3.4
        \times 2/3 { f16 gs f' } e,[ d] 
        a' a'  a, a'  a, a, a' a, 
    |
        
    % Bar 4

    d16 a' e a f a e d   f b e, d f b f b    e, cs' e, cs' 
    |

    % Bar 5

    \times 2/3 { d,16 a' d }
        \times 2/3 { e,16 a e' }
        \times 2/3 { f,16 a f' }
        e,16[ d] 

    % Page 4
        \times 2/3 { gs16 f' gs }
        \times 2/3 { gs,16 f' gs }
        a, a' a, a'   a, a, a' a, |
 
    % Bar 6
 
    \clef treble
 
    \times 2/3 { bf'16 g' bf }
    \times 2/3 { g,16 e' g }
    \times 2/3 { e,16 cs' e }
    \times 2/3 { g,16 e' g }
    % Page 5
    \times 2/3 { bf,16 g' bf }
    \times 2/3 { d,16 bf' d }
    \times 2/3 { e,16 gs e' }
    \times 2/3 { b, gs' b }
    \times 2/3 { cs, a' cs }
    \times 2/3 { a, cs a' } 
    |
    \times 2/3 { bf,16 g' bf }
    \times 2/3 { d,16 bf' d }
    \times 2/3 { e,16 gs e' }
    \times 2/3 { b, gs' b }
    % Page 5
    \times 2/3 { d, a' d }
    \times 2/3 { a, f' a }
    r8
    bf,32 d f d
    r8
    a32 cs e cs 
    |
    % Bar 8
    r2 \clef bass << a2. \\ { f8( e16 d f4 e4) } >> 
    |
    % Bar 9
    d16 a' e a f a e d   f bf! ef, d f bf f bf    ef,? bf' ef, bf' 
    |
    % Page 6 Bar 10
    bf,16 e? c e   df e c bf  df f c bf  df g df g  c, bf' c, bf' 
    |
    \times 2/3 { c,16 a' c }
    \times 2/3 { ef,16 c' ef }
 
    \times 2/3 { g,16 ef' g }
    \times 2/3 { ef,16 c' ef }
    
    \times 2/3 { c,16 a' c }
    \times 2/3 { d,16 b' d }
 
    \times 2/3 { f,16 d' f }
    \times 2/3 { ef,16 c' ef }
 
    \times 2/3 { d,16 bf' d }
    \times 2/3 { c,16 bf' c }
    |
    % Page 7
    \clef treble
    \times 2/3 { c16 a' c }
    \times 2/3 { d,16 b' d }
 
    \times 2/3 { f,16 d' f }
    \times 2/3 { ef,16 c' ef }
 
    \times 2/3 { d,16 bf' d }
    \times 2/3 { c,16 bf' c }
 
    \times 2/3 { d,16 bf' d }
    \times 2/3 { bf,16 d bf' }
 
    \times 2/3 { bf,16 e bf' }
    \times 2/3 { e,,? bf' e }
    |
    % Bar 13
    \clef bass
    \times 2/3 { f,16 a c }
    \times 2/3 { f, b d }
 
    \times 2/3 { g, d' f }
    \times 2/3 { g, c ef }
 
    \times 2/3 { g, bf d }
    \times 2/3 { g, bf c }
 
    \times 2/3 { f, a d }
    \times 2/3 { f, a d }
 
    \times 2/3 { f, a d }
    \times 2/3 { ef, a c }
    |
    % Bar 14
    << { bf4 a4 } \\ { d,8 e f e16 d16 } >>
    \clef treble
    << { f'8 e16 d f4 e4 } \\ { gs,4 a2 } >>
    |
    % Page 8 bar 15
    \clef bass
    d,16 a' e a f a e d   f b e, d f b f b    e, cs' e, cs' 
    |
    \times 2/3 { d,16 a' d }
        \times 2/3 { e,16 a e' }
        \times 2/3 { f,16 a f' }
        e,16[ d] 
    % Bar 16
        \times 2/3 { f16 gs f' } e,[ d] 
        a' a'  a, a'  a, a, a' a, 
    |
    % Bar 17
    \clef treble
    \times 2/3 { ef''16 g ef' }
    \times 2/3 { c,16 ef c' }
    \times 2/3 { a,16 fs' a }
    \times 2/3 { c,16 a' c }
    \times 2/3 { ef,16 c' ef }
    \times 2/3 { g,16 ef' g }
    \times 2/3 { a, cs a' }
    \times 2/3 { e, cs' e }
    \times 2/3 { fs,? d' fs }
    \times 2/3 { d, fs d' }
    % Bar 18
    \times 2/3 { ef,16 c' ef }
    \times 2/3 { g,16 ef' g }
    \times 2/3 { a, cs a' }
    \times 2/3 { e, cs' e }
    \times 2/3 { f,? cs' f }
    \times 2/3 { cs, g' cs }
    \times 2/3 { d, fs d' }
    \times 2/3 { a, ef' a }
    \times 2/3 { bf, d bf' }
    \times 2/3 { g, ef' g }
    % Bar 19 page 10
    \times 2/3 { f, d' f }
    \times 2/3 { g, e' g }
    \times 2/3 { a, f' a }
    \times 2/3 { a, f' a }
    \times 2/3 { a, f' a }
    \times 2/3 { gs, e' gs }
    \times 2/3 { a, f' a }
    \times 2/3 { a, f' a }
    \times 2/3 { a, f' a }
    \times 2/3 { gs, e' gs }
    |
    % Bar 20
    \times 2/3 { a,16 f' a }
    \times 2/3 { a,16 f' a }
    r8
    \times 2/3 { a,16 f' a }
    r8
    bf,32 e g e
    r8
    bf32 d f d 
    r8
    a32 cs e cs
    |
    % Bar 21
    \time 2/4
    r2 
    |
    \clef bass
    << a2 \\ { d,8( e f e16 d) } >>
    |
    \time 3/4
    << <bf' bf,>2. \\ { f4( e2) } >>
    |
    << <a a,>2.\fermata \\ { g4( fs2)\fermata } >>
    \bar "|."
}

lefthand = \relative c {
    \prefix
    \clef bass
    % Bar 1
    << { a2 ~ a2. } \\ { d,8 e f e16 d~ d4 a2 } >>
    |
    % Bar 2
    <a' d,>2  <af af,>4 <g g,>2
    |
    % Bar 3
    <f f,>4  d4  <bf' bf,>4 <a a,>4 a,4 
    |
    % Bar 4
    <a' d,>2  <af af,>4 <g g,>2
    | 
    % Bar 5
    <f f,>4 d4  <bf' bf,>4 <a a,>4 a,4
    |
    % Bar 6
    g8 g' a a, g g' e e, a a'
    | 
    % Bar 7
    g8( f e e')  f, f, g g' a a, 
    |
    % Bar 8
    << { a'2 ~ a2. } \\ { d,8 e f e16 d~ d4 a2 } >>
    |
    % Bar 9
    <a' d,>2 <af af,>4( <g g,>2)
    |
    % Bar 10
    <gf gf,>2  <f f,>4( <e e,>2) 
    |
    % Bar 11
    f8( f, ef ef') f( d c4 e4) 
    |
    % Bar 12
    f8( d <c' c,>4) e,4( f g)
    |
    % Bar 13
    f8( d8 c4)  (e4 f f,)
    |
    % Bar 14
    <bf' bf,>2  << { d2 a4 } \\ { bf4( a4) a,4 } >>
    |
    % Bar 15
    <a' d,>2  <af af,>4 <g g,>2
    |
    % Bar 16
    <f f,>4  d4  <bf' bf,>4 <a a,>4 a,4 
    |
    % Bar 17
    c8 c' d d, c c' a a, d d'
    |
    % Bar 18
    <c c,>8 <bf bf,>8 <a a,>4 a,8 a' bf, bf' g, g'
    | 
    % Bar 19
    <a a,>4.( d,8-.) <a' a,>4.( d,8-.) <a' a,>4~
    |
    % Bar 20
    <a a,>4( <d, d,>4) <g g,>2 <a a,>4 
    |
    % Bar 21
    \time 2/4
    r4 << a4~ \\ {d,8( e) } >>
    |
    << a2 \\ { f4 d4 } >>
    |
    \time 3/4
    <g g,>2.
    |
    <d d,>2.
    \bar "|."
}

soprano = \relative c'' {
    \prefix
    \clef treble
    r2 r2. |
    a4( a b2 cs4) |
    a4( a f'2 e4) |
    a,4( a b2 cs4) |
    a4( a d2 cs4) |
    % Bar 6
    r2 r2. |
    % Bar 7
    bf8( d e b) d a f4.( e8) |
    % Bar 8
    d4 r4 r2 a'8( a8 |
    % Bar 9
    a4. a8) bf8 bf8 bf4 g4 |
    % Bar 10
    e4. e8 f8 f8  g8 g8 bf4 |
    % Bar 11
    a4 r4 r2. |
    % Bar 12
    c8( d f ef) d c d4.( c8) |
    % Bar 13
    c4 r4 bf8 g f4.( ef8) |
    % Bar 14
    d4 r4 r2.
    % Bar 15
    r4 a'8 a b b d d cs cs |
    % Bar 16
    r4 a8 a d d f f e e |
    % Bar 17
    ef8 c a c c ef cs4 d4 |
    % Bar 18
    ef8 g a( e) f cs d( a) bf( g) |
    % Bar 19
    f8 g a4~a8 gs8 a4. d8 |
    % Bar 20
    a2~( a8 g f4. e8) |
    \time 2/4
    d2 | r2 |
    \time 3/4
    r2. | r2. 
    \bar "|."
}

alto = \relative c' {
    \prefix
    \clef treble
    r2 r2. |
    r2 r2. |
    r2 r2. |
    d8\( e f e16 d    f8 e16 d   f4 e4 \) |
    d8\( e f e16 d    f8 e16 d   a'4 a,4 \) |
    bf'8\( g e g bf( d) e( b) cs( a) \) |
    bf8 a gs4  a8 f d4( cs4) |
    d4 r4 r2. |
    d8\(  e f  e16( d)  f8 ef16( d) f4 ef4\) |
    bf8\( c df c16( bf) df8 c16( bf) d4 c4\) |
    r2 r2. |
    a'8( b b c)  g8 g f4 e4 |
    c8 d f ef   d c d4.( c8) |
    bf4 r4 r2. |

    d8( e f e16 d    f8 e16 d   f4 e4 ) |
    d8( e f e16 d    f8 e16 d   a'4 a,4 ) |
    g'8 g fs fs g ef e( a) a( fs) |
    ef'8 d cs4 a8 g f( ef) d( ef) |
    d8 e f4~f8 e f4. e8 |
    f2~f8 e d4 cs4 |
    \time 2/4
    d2 | r2 | 
    \time 3/4
    r2. | r2.\fermata
    \bar "|."
}

tenor = \relative c'' {
    \prefix
    \clef treble
    r2 r2. |
    a4( a b2 cs4) |
    a4( a d2 cs4) |
    a4( a b2 cs4) |
    a4( a f'2 e4) |
    % Bar 6
    r2 r2. |
    % Bar 7
    d8( d b b) a a bf4( a8 g) |
    % Bar 8
    f4 r4 r2 a8( a8 |
    % Bar 9
    a4. a8) bf8 bf8 bf4 g4 |
    % Bar 10
    e4. e8 f4  g4 r4 |
    % Bar 11
    c8\( ef g ef c d f( ef) d( c) \) |
    % Bar 12
    c8( f d c) bf2 bf4 |
    % Bar 13
    a8 b g c   g bf a2 |
    % Bar 14
    f4 r4 r2. |
    % Bar 15
    r4 a8 a d d b b cs cs |
    % Bar 16
    r4 a8 a f' f d d cs cs |
    % Bar 17
    c8 ef d d ef g a( e) fs( d) |
    % Bar 18
    g8 d e4 cs8 e d( c) bf4 |
    % Bar 19
    a8 g f4~f8 d' a4. gs8 |
    % Bar 20
    a2( bf2 a4) |
    \time 2/4
    a2 | r2 |
    \time 3/4
    r2. | r2.\fermata
    \bar "|."
}

bass = \relative c {
    \prefix
    \clef bass
    r2 r2. |
    r2 r2. |
    r2 r2. |
    d8\( e f e16( d) f8 e16( d) f4 e4\) |
    % Bar 5
    d8\( e f e16( d) f8 e16( d) a'4 a,4\) |
    % Bar 6
    g'8( e cs e g bf gs4 a) |
    % Bar 7
    g8 f e4 a8 f g4( a4) |
    % Bar 8
    d,4 r4 r2. |
    % Bar 9
    d8\( e f e16( d) f8 ef16( d) f4 ef4\) |
    % Bar 10
    bf8\( c df c16( bf) df8 c16( bf) d4 c4\) |
    % Bar 11
    a'8\( c ef c a b g( c) bf( e,) \) |
    % Bar 12
    f8( d) g( c,) e4( f) g |
    % Bar 13
    f8 d c c e e f2 |
    % Bar 14
    bf,4 r4 r2. |

    % Bar 15
    d8\( e f e16( d) f8 e16( d) f4 e4\) |
    % Bar 16
    d8\( e f e16( d) f8 e16( d) a'4 a,4\) |
    % Bar 17
    c8 c' d d, c c' a4 d,4 |
    % Bar 18
    c'8 bf a4 a8 a8 bf4 g4 |
    % Bar 19
    a8 a, d4~d8 e8 d4. e8 |
    % Bar 20
    d2( g2 a4) |
    \time 2/4
    d,2 | r2 |
    \time 3/4
    r2. | r2.\fermata \bar "|."
}

    

\header {
    title = "Nachtens"
    composer = "Johannes Brahms"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  <<
%    \new ChoirStaff <<
%      \new Staff = "soprano" << \notation \soprano >>
%      \new Staff = "alto"    << \notation \alto >>
%      \new Staff = "tenor"   << \notation \tenor >>
%      \new Staff = "bass"    << \notation \bass >>
%    >>
    \new PianoStaff <<
      \new Staff = "upper" \transpose f f << \notation \righthand >>
      \new Staff = "lower" \transpose f f << \notation \lefthand >>
    >>
  >>
  \layout { 
    \context {
      \Score
      \override SpacingSpanner
          #'base-shortest-duration = #(ly:make-moment 1 16)
    }
  }
%  \midi {}
}

