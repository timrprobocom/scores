\version "2.16.0"
\include "english.ly"
\include "indents.ly"

#(set-default-paper-size "letter" )
% #(set-global-staff-size 24)

\paper {
    #(set-paper-size "letter")
    ragged-last-bottom = ##t
}

piu = \markup { \italic "piu mosso" }
rit = \markup { \italic rit. }
moltorit = \markup { \italic "molto rit". }
segno = \markup { \musicglyph "scripts.segno" }
tocoda = \markup { \musicglyph "scripts.coda" "To Coda" }
dsal = \markup { \bold "D.S. al Coda" }

prefix = {
  \time 2/2
  \key c \major
  \set Score.markFormatter = #format-mark-box-barnumbers
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \set Score.skipBars = ##t
  \override MultiMeasureRest #'expand-limit = #1
  \numericTimeSignature
}

% Transpose from C to D

notation = {
    \prefix
    s1 * 9
    \mark \default
    s1 * 8
    \mark \default
    s1 * 10
    \bar "||" 
    \mark \default 
    s1 * 8
    \mark \default
    s1 * 10 \bar "||"
    s1 * 2
    \mark \default
    s1 * 8  % 56
    \mark \default
    s1 * 8 \bar "||"
    \break  \pseudoIndent 15
    s1 * 2 % 66
    \mark \default
    s1 * 8 % 74
    \mark \default
    s1 * 13
    \bar "|."
}


righthand = \relative c' {
    \prefix
    \clef treble
    r4 c\mp e g |
    <c, f a>4 a'8 <c, f a>8~<c f a>8 a'4. |
    <c, f a>4. <d g b>8~<d g b>4 <c f a> |
    <b e g>2 <d g b>2 |
    <c e a>2 <g b e>4 d'8 c |
    <f, a c>4 r4 r4 <a c e>4 |
    <g b d>4. <g c>8~<g c>4 <g b>4 |
    <g c e>4. <a c f>8~<a c f>4 c4 |
    <g c e>2. r8 c |
    \repeat volta 2 {
        <c f a>2. g'4 |
        <g, c e>1 |
        % Page 4 bar 12
        <<  {d'2~d8 e4.} \\ <g, b>1 >> |
        <a c>1 |
        <c f a>2. g'4 |
        <g, c e>1 |
        <g b d>2~<g b d>8 <g c e>4. |
        <g b d>1 |
        % Page 5 bar 18
        <c f a>2. g'4 |
        <g, c e>1 |
        <g b d>2~<g b d>8 g'4. |
        <a, c e>2 <g b e>2\p |
        <f a c>4 r4 r4 <a c e>4 |
        <g b d>4. <g c>8~<g c>4 <g b>4 |
    }
    % Page 6 bar 24
    \alternative {
        {
            <g c e>4. <a c f>8~<a c f>4 c4 |
            <g c e>2. r8 c8 |
        }
        { c1 }
    }
    r4 c <c e> <c e g> \bar "||" |
    <c f a>2^\segno <c f a>2 |
    <c f a>4 b'8 <f a c>8~<f a c>2 |
    <g, c e>4. <a c f>8~<a c f>2 |
    % Page 7 bar 31
    <g c e>2 <c e g>2 |
    <g c d>2 <g b d>2 |
    <g b d>4. <g b e>8~<g b e>2 |
    <c e>2 <c e a>2 |
    <e a c>2 <d g b>2 |
    <c f a>4. <c f a>8~<c f a>2 |
    % Page 8 bar 37
    <c f a>4. <d g b>8~<d g b>4 <c f a>8 g'8 |
    <b, e g>2 <d g b>2 |
    <c e a>2 <g b e>4 d'8 c |
    <f, a c>4 r r <a c e>4 |
    <g b d>4. <g c>8~<g c>4 <g b>4 |
    <a c e>2 <c e a>2 |
    % Page 9 bar 43
    <d a' c>2 <a c e>4\p d8 c |
    <f, a c>4 r r <a c e> |
    <g b d>4. <g c>8~<g c>4 <g b>4^\tocoda |
    <g c e>4. <a c f>8~<a c f>4 c4 |
    <g c e>2. r8 c8 |
    % Bar 48
    <f a c>4.\mp <f a c>8~<f a c>4 g4 |
    % Page 10 bar 49
    <c, e g>4. <c e g>8~<c e g>4 c4 |
    <b d g>4. <b d g>8~<b d g>4 g'4 |
    <a, c e>4 a c e |
    <f a c>4. <f a c>8~<f a c>4 g |
    <c, e g>4. <c e g>8~<c e g>4 c4 |
    <b d g>4. <b d g>8~<b d g>8 <c e g>4. |
    % Page 11 bar 55
    <b d g>2 << { a'4 b } \\ <d, g>2 >> |
    <f a c>4.\mp <f a c>8~<f a c>4 g4 |
    <c, e g>4. <c e g>8~<c e g>4 c4 |
    <b d g>4. <b d g>8~<b d g>4 g'4 |
    <a, c e>2 <g b d e>2 |
    <f a c>4 r r <a c e> |
    % Page 12 bar 61
    <g b d>4. <g c>8~<g c>4 <g b>4 |
    c1 |
    r4\< c^\dsal <c e> <c e g>\! |
    % Coda
    
    c2^\coda\< <g b d>2 |
    <a c>2 <g c e> |
    <c f a>2\! <c f a> |
    % Page 13 bar 67
    <c f a>4 b'8 <f a c>8~<f a c>2 |
    <g, c e>4. <a c f>8~<a c f>2 |
    <g c e>2 <c e g> |
    <g c d>2 <g b d> |
    <g b d>4. <g b e>8~<g b e>2 |
    <c e>2 <c e a>2 |
    % Page 14 bar 73
    <e a c>2 <d b g>2 |
    <c f a>4. <c f a>8~<c f a>2
    <c f a>4. <d g b>8~<d g b>4 <c f a>8 g'8 |
    <b, d g>2 <d g b>2 |
    <c e a>2 <g b e>4 d'8 c |
    <f, a c>4 r r <a c e> |
    % Page 15 bar 79
    <g b d>4. <g c>8~<g c>4 <g b>4 |
    <a c e>2_\rit <c e a>2 |
    <d a' c>2 <a c e>4 d8 c8 |
    <f, a c>4 r r <a c e> |
    <g b d>4._\moltorit <g c>8~<g c>4 <g b>4 |
    c1

}
    

lefthand = \relative c {
    \prefix
    \clef bass
    R1 |
    f2 f2 |
    f2 f2 |
    e2 e2 |
    a,2 g2 |
    f4 r4 f2 |
    g4. g8 g4 g4 |
    c2 c2 |
    c2 c,4 r4 |
    \repeat volta 2 {
        f2 f2 |
        c'2 c2 |
        % Page 4 bar 12
        g2 g2 |
        << e'1 \\ {a,2 a2} >> |
        f2 f2 |
        c'2 c2 |
        g2 g2 |
        g2 g2 |
        % Page 5 bar 18
        f2 f2 |
        c'2 c2 |
        g2 g2 |
        a2 g2\p |
        f4 r r f |
        g4. g8~g4 g4 |
    }
    % Page 6 bar 24
    \alternative {
        {
            c2 c2 | 
            c2 c4 c,4 |
        }
        { c'1} 
    }
    c,4 c' c c \bar "||" |
    f,2. f4 |
    f2. f4 |
    c2. c4 |
    % Page 7 bar 31
    c4 c e e |
    g2. g4 |
    g2. g4 |
    <a e'>2. e'4 |
    a,2 e2 |
    f2. f4 |
    % Page 8 bar 37
    f2. f4 |
    e2. e4 |
    a2 g |
    f4 r r f |
    g4. g8~g4 g4 |
    a2 g2 |
    % Page 9 bar 43
    fs2 fs2 |
    f4 r r f |
    g4. g8~g4 g4 |
    c2 c2 |
    c2 c2 |
    % Bar 48
    f2\mp f2 |
    % Page 10 bar 49
    c2 c2 |
    g2 g2 |
    << e'1 \\ { a,2 a2 } >> |
    f2 f2 |
    c'2 c2 |
    g2 g2 |
    % Page 11 bar 55
    g4 g' g,2 |
    f2 f2 | 
    e2 e2 | 
    g2 g2 | 
    a2 g2 |
    f4 r r f |
    % Page 12 bar 61
    g4. g8~g4 g4 |
    c,1 |
    c'2 e,2 |

    % Coda
    c'2 b2 |
    <a e'>2 e2 |
    f2. f4 |
    % Page 13 bar 67
    f2. f4 |
    c2. c4 |
    c4 c e e |
    g2. g4 |
    g2. g4 |
    <a e'>2. e'4 |
    % Page 14 bar 73
    a,2 e2 |
    f2. f4 |
    f2. f4 |
    e2. e4 |
    a2 g2 |
    f4 r r f |
    % Page 15 bar 79
    g4. g8~g4 g4 |
    a2 g2 |
    fs2 fs |
    f4 r r f |
    g4._\moltorit g8~g4 g4 |
    c1
}


\header {
    title = "That's Christmas to Me"
    composer = "Pentatonix"
    tagline = ""
}


%
% Define the things that print.
%

\score {
  \new PianoStaff <<
    \new Staff = "upper" \transpose c d  << \notation \righthand >>
    \new Staff = "lower" \transpose c d  << \notation \lefthand >>
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

