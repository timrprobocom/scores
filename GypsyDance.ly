\version "2.16"
\include "english.ly"

\header {
    title = "Gypsy Dance from Carmen"
    composer = "Georges Bizet"
    arranger = "Arr T Roberts"
    tagline = ##f
}

piu = \markup { \italic "piu mosso" }
rit = \markup { \italic rit. }
mpmf = \markup { \italic mp-mf  }
rall= \markup { \italic rall. }

common = {
    \time 3/4
    \tempo 4 = 110
    \key c \minor
    \override MultiMeasureRest #'expand-limit = 1
    \set Score.skipBars = ##t
    \set Score.markFormatter = #format-mark-box-alphabet
    \compressFullBarRests
    \override Score.BarNumber #'break-visibility = #'#(#f #t #t)
}

notation = {
    s2.*4 
    \mark \default
    s2.*18
    \mark \default
    s2.*18
    \mark \default
    s2.\f s2.
    s2.\p s2.
    s2.\f s2.
    s2.\p
    s2.*3
    \mark \default
    s2.*10
    \mark \default
    s2.*8
    s2._\rall
    \mark \default
    \tempo "A Tempo"
    s2.*20
    \mark \default
    s2.*11
    \mark \default
    s2.*8
    s2._\rall
    \mark \default %% J
    \tempo "Animato" 4 = 126
    s2.*20
    \mark \default %% K
    s2.*11
    \mark \default %% L
    s2.*9
    \mark \default %% M
    s2.\ff
    s2.*19
    \mark \default %% N
    \tempo "Presto" 4 = 152
    s2.\ff
}

\parallelMusic #'(clari clarii clariii clarb)
{
    \grace s8 R2. |
    \grace s8 R2. |
    \acciaccatura fs8 g2.~\mp |
    \acciaccatura fs8 g2.~\mp |

    \acciaccatura fs8 g2.(\mp\< |
    \acciaccatura fs8 g2.(\mp\< |
    g2\< \times 2/3 { g8 a b } |
    g2\< \times 2/3 { g8 a b } |
%    g4~g8 g a b |
%    g4~g8 g a b |

    c8)\! r8 r4 r4 |
    c8)\! r8 r4 r4 |
    c8\! ef8 r ef r ef |
    c8\! g' c, g' c, g' |

    R2.  \bar "||" |
    R2.  \bar "||" |
    r8 ef8 r ef r ef  \bar "||" |
    c,8 g' c, g' c, g'  \bar "||" |

    %% "A" Bar 5 -- 1st melody

    \acciaccatura fs8 g8 r8 \acciaccatura fs8 g8 r8 \acciaccatura fs8 g8 r8 |
    \acciaccatura d'8 ef8 r8 \acciaccatura d8 ef8 r8 \acciaccatura d8 ef8 r8 |
    \grace s8 r8 ef r ef r ef |
    \grace s8 c,8 g' c, g' c, g' |

    \acciaccatura fs8 g16( f ef f g f ef f g f ef f |
    \acciaccatura d8 ef16( d c d ef d c d ef d c d |
    r8 ef8 r ef r ef |
    c,8 g' c, g' c, g' |

    g8) a-. b-. c-. d-. ef-. |
    ef) f-. g-. a-. b-. c-. |
    r8 ef8 r ef r ef |
    c,8 g' c, g' c, g' |

    d-. c-. b-. a-. g-. c-. |
    b-. a-. g-. f-. ef-. c-. |
    r8 ef8 r ef r ef |
    c,8 g' c, g' c, g' |


    \acciaccatura e,8 f8 r8 \acciaccatura e8 f8 r8 \acciaccatura e8 f8 r8 |
    \acciaccatura c8 df8 r8 \acciaccatura c8 df8 r8 \acciaccatura c8 df8 r8 |
    r8 df8 r df r df |
    bf,8 f' bf, f' bf, f' |

    \acciaccatura e8 f16( ef df ef f ef df ef f ef df ef |
    \acciaccatura c8 df16( c bf c df c bf c df c bf c |
    r8 df8 r df r df |
    bf,8 f' bf, f' bf, f' |

    f8) g-. a-. bf-. c-. df-. |
    df8) ef-. f-. g-. a-. bf-. |
    r8 df8 r df r df |
    bf,8 f' bf, f' bf, f' |

    c8-. bf-. a-. g-. f-. bf-. |
    a8-. g-. f-. ef-. df-. bf-. |
    r8 df8 r df r df |
    bf,8 f' bf, f' bf, f' |


    \acciaccatura d,8 ef8 r8 \acciaccatura d8 ef8 r8 \acciaccatura d8 ef8 r8 |
    \acciaccatura b8  c8 r8 \acciaccatura b8  c8 r8 \acciaccatura b8  c8 r8 |
    r8 c8 r c r c |
    af,8 ef' af, ef' af, ef' |

    \acciaccatura d8 ef16( df c df ef df c df ef df c df |
    \acciaccatura b8  c16( bf af bf c bf af bf c bf af bf |
    r8 c8 r c r c |
    af,8 ef' af, ef' af, ef' |

    ef8) f-. g-. af-. bf-. c-. |
    c8) df-. ef-. f-. g-. af-. |
    r8 c8 r c r c |
    af,8 ef' af, ef' af, ef' |

    bf-. af-. g-. f-. ef-. af-. |
    g8-. f-. ef-. df-. c-. af-. |
    r8 c8 r c r c |
    af,8 ef' af, ef' af, ef' |

    d,8-. d8~d8 c16 d16 ef8 f16 ef16 |
    b8-. b8~b8 a16 b16 c8 d16 c16 |
    r8 b r b r c |
    g,8 d' g, d' c ef |

    d8-. d8~d8 c16 b16 a8 b16 c16 |
    b8-. b8~b8 a16 g16 fs8 g16 a16 |
    r8 b r b r c |
    g,8 d' g, d' c ef |

    d8-. d8~d8 c16 d16 ef8 f16 ef16 |
    b8-. b8~b8 a16 b16 c8 d16 c16 |
    r8 b r b r c |
    g,8 d' g, d' c ef |

    d8-. d8~d8 c16 b16 a8 b16 c16 |
    b8-. b8~b8 a16 g16 fs8 g16 a16 |
    r8 b r b r c |
    g,8 d' g, d' c ef |


    d2.~ |
    b2.~ |
    r8 b r b r b |
    g,8 d' g, d' g, d' |

    d2 r4  \bar "||" |
    b2 r4  \bar "||" |
    r8 b r b r b  \bar "||" |
    g,8 d' g, d' g, d'  \bar "||" |

    %% "B" Bar 24 -- 2nd melody

    \grace s8 r8 bf, r bf r bf |
    \acciaccatura cs8 d8 r8 \acciaccatura cs8 d8 r8 \acciaccatura cs8 d8 r8 |
    \acciaccatura a'8 bf8 r8 \acciaccatura a8 bf8 r8 \acciaccatura a8 bf8 r8 |
    \grace s8 g,8 d' g, d' g, d' |

    r8 bf r bf r bf |
    \acciaccatura cs8 d16( c bf c d c bf c d c bf c |
    \acciaccatura a8 bf16( a g a bf a g a bf a g a |
    g,8 d' g, d' g, d' |

    r8 bf r bf r bf |
    d8) e-. fs-. g-. a-. bf-. |
    bf) c-. d-. e-. fs-. g-. |
    g,8 d' g, d' g, d' |

    r8 bf r bf r bf |
    a-. g-. fs-. e-. d-. g-. |
    fs-. e-. d-. c-. bf-. g-. |
    g,8 d' g, d' g, d' |

    r8 af8 r af r af |
    \acciaccatura b,8 c8 r8 \acciaccatura b8 c8 r8 \acciaccatura b8 c8 r8 |
    \acciaccatura g8 af8 r8 \acciaccatura g8 af8 r8 \acciaccatura g8 af8 r8 |
    f,8 c' f, c' f, c' |

% whole steps melody, hw wh hw in harmony

    r8 af8 r af r af |
    \acciaccatura b8 c16( bf af bf c bf af bf c bf af bf |
    \acciaccatura g8 af16( g f g af g f g af g f g |
    f,8 c' f, c' f, c' |

% w w h w h
% w w w w h

    r8 af8 r af r af |
    c8) d-. e-. f-. g-. af-. |
    af8) bf-. c-. d-. e-. f-. |
    f,8 c' f, c' f, c' |

    r8 af8 r af r af |
    g8-. f-. e-. d-. c-. f-. |
    e8-. d-. c-. bf-. af-. f-. |
    f,8 c' f, c' f, c' |

    r8 bf8 r bf r bf |
    \acciaccatura a,8 bf8 r8 \acciaccatura a8 bf8 r8 \acciaccatura a8 bf8 r8 |
    \acciaccatura fs8  g8 r8 \acciaccatura fs8 g8 r8 \acciaccatura fs8 g8 r8 |
    ef,?8 r ef r ef r |

% wh hw in melody, ww in harmony

    r8 bf8 r bf r bf |
    \acciaccatura a8 bf16( af g af bf af g af bf af g af |
    \acciaccatura fs8 g16( f ef f g f ef f g f ef f |
    ef8 r ef r ef r |

%% w w h w w
%% h w w w h

    r8 bf8 r bf r bf |
    bf8) c-. d-. ef-. f-. g-. |
    g8) af-. bf-. c-. d-. ef-. |
    ef8 r ef r ef r |

    r8 bf8 r bf r bf |
    f8-. ef-. d-. c-. bf-. ef-. |
    d8-. c-. bf-. af-. g-. ef-. |
    ef8 r ef r ef r |

    r8 fs r fs r d' |
    a,8-. a8~a8 g16 a16 bf8 c16 bf16 |
    fs8-. fs~fs e16 fs16 g8 a16 g16 |
    d'8 a' d, a' g bf |

    r8 fs, r fs r d' |
    a8-. a8~a8 g16 f16 e8 f16 g16 |
    fs8-. fs~fs e16 d16 cs8 d16 e16 |
    d,8 a' d, a' g bf |

    r8 fs, r fs r d' |
    a8-. a8~a8 g16 a16 bf8 c16 bf16 |
    fs8-. fs~fs e16 fs16 g8 a16 g16 |
    d,8 a' d, a' g bf |

    r8 fs, r fs r d' |
    a8-. a8~a8 g16 f16 e8 f16 g16 |
    fs8-. fs~fs e16 d16 cs8 d16 e16 |
    d,8 a' d, a' g bf |


    r8 fs, r fs r fs |
    a2.~ |
    fs2.~ |
    d,8 a' d, a' d, a' |

    r8 fs r fs r fs  \bar "||" |
    a2 r4  \bar "||" |
    fs2 r4  \bar "||" |
    d,8 a' d, a' d, a' \bar "||" |

    %% "C" Part 3   bar 41

%% in Em, it's bass f a c, top f a
%% in Cm  it's bass db f ab, top db f

%% Should be 1 and 3 of the II- maj chord. For Cm, that's Dd F

    \acciaccatura ef''8 f8 r8 \acciaccatura ef8 f8 r8 \acciaccatura ef8 f8 r8 |
    \acciaccatura c8 df8 r8 \acciaccatura c8 df8 r8 \acciaccatura c8 df8 r8 |
    \grace s8 df8 f  df f  df f  |
    \grace s8 df,8 af'? df, af' df, af' |

    \acciaccatura ef8 f16( ef df ef f ef df ef f8)-. r8 |
    \acciaccatura c8 df16( af f af df af f af df8)-. r8 |
    df8 f  df f  df f  |
    df,8 af' df, af' df, af' |

%% in Em, it's bass f# a# c#, top a# c#
%% in Cm, it's bass d f# a, top f# a

%% Should be 3 and 5 of the II chord.  d f a

    \acciaccatura gs,8 a8 r8 \acciaccatura gs8 a8 r8 \acciaccatura gs8 a8 r8 |
    \acciaccatura f,8 fs8 r8 \acciaccatura f8 fs8 r8 \acciaccatura f8 fs8 r8 |
    d?8 fs d fs d fs |
    d,?8 a' d, a' d, a' |

    \acciaccatura gs8 a16( g fs g a g fs g a8)-. r8 |
    \acciaccatura f8 fs16( e d e fs e d e fs8)-. r8 |
    d8 fs d fs d fs |
    d,8 a' d, a' d, a' |


    \acciaccatura ef'8 f8 r8 \acciaccatura ef8 f8 r8 \acciaccatura ef8 f8 r8 |
    \acciaccatura c8 df8 r8 \acciaccatura c8 df8 r8 \acciaccatura c8 df8 r8 |
    \grace s8 df8 f  df f  df f  |
    \grace s8 df,8 af'? df, af' df, af' |

    \acciaccatura ef8 f16( ef df ef f ef df ef f8)-. r8 |
    \acciaccatura c8 df16( af f af df af f af df8)-. r8 |
    df8 f  df f  df f  |
    df,8 af' df, af' df, af' |

%%% If this is based on the tonic minor triad, then the above chord are wrong.

    \acciaccatura fs,8 g8 r8 \acciaccatura fs8 g8 r8 \acciaccatura fs8 g8 r8 |
    \acciaccatura d8 ef8 r8 \acciaccatura d8 ef8 r8 \acciaccatura d8 ef8 r8 |
    r8 ef r ef r ef |
    c,8 g' c, g' c, g' |

    \acciaccatura fs8 g16( f ef f g f ef f g4~)  |
    \acciaccatura d8 ef16( d c d ef d c d ef4~)  |
    c8 ef c ef c ef |
    c,8 g' c, g' c, g' |

    g8 f ef f g4~ |
    ef8 d c d ef4~ |
    c8 ef c ef c ef |
    c,8 g' c, g' c, g' |

    g2 r4 |
    ef2 r4 |
    c8 ef c ef c ef |
    c,8 g' c, g' c, g-.\mf^solo |

    %% "D" bar 51.

    c,8 g' c, g' c, g' |
    r8 ef r ef r ef |
    R2. |
    c8-. d-. ef-. f-. g-. c-. |

    c,8 g' c, g' c, g' |
    r8 ef r ef r ef |
    g2. |
    g2~g8     g( |

    c,8 c' c, c' c, c' |
    r8 ef r ef r ef |
    af2. |
    af8)-. ef-. ef-. d-. ef-. af-. |

    c,8 b' c, b' c, b' |
    r8 d  r d  r d  |
    g2. |
    g16( fs g af g4) r8 g8( |

    c,8 bf' c, bf' c, bf' |
    r8 df r df r df |
    gf2. |
    gf8)-. df-. df-. c-. df-. gf8-. |

    c,8 af' c, af' c, af' |
    r8 c r c r c |
    f2. |
    f16( e f gf f4) r8 c16( d |

    c,8 g' c, g' c, g' |
    r8 ef r a, r b |
    R2. |
    ef8) ef16( f g8)-. g,-. d'-. ef-. |

    c4~ c8( d16 ef f8 ef16 d |
    c8 g' c, g' c, af' |
    c4~ c8( d16 ef f8 ef16 d |
    c2.~ |

    c4~) c8( d16 ef f8 ef16 d |
    c,8 g' c, g' c, af' |
    c4~) c8( d16 ef f8 ef16 d |
    c2.~ |

    c8)( d16 ef f8 ef16 f g8 f16 g  \bar "||" |
    c,8 r b r r ef' \bar "||" |
    c8)  r8     f8 r8     g8 r8     \bar "||" |
    c4 b bf  \bar "||" |

    %% "E" Bar 61, D in score

    af8) r8 r2 |
    af8 ef af ef af ef |
    ef8 r8 r2 |
    af8 c af ef' af, c |

    r4 r8 df,16 df g8 df'16 df |
    g2  r8 df8 |
    r8 df16 df g8 bf16 bf g8 df'16 df |
    af8 df af df af df |

    g,8-. r8 r2 |
    g8 df g df g df |
    g8-. r8 r2 |
    af8 df af df af df |

    r4 r8 c,16 c f8 a16 a |
    f2 r8 c8 |
    r8 c,,16 c f8 a16 a f8 c'16 c |
    af8 c af f' af, c |

    f8-. r8 r2 |
    f8 c f c f c |
    f8-. r8 r2 |
    af8 c af c af f' |

    R2. |
    e4~( e8 d16 e f8) (g16 f |
    r8 c16( b c2~ |
    c4 r8 e d d |

    r8 c16( b c2~ |
    e4~) e8( f16 g af8) (bf16 af |
    c8) r8 r2 |
    e4 r8 e f f |

    c8) r8 r2 |
    g4) r8 e f a, |
    R2. |
    e4 r4 d4 |

    R2.  \bar "||" |
    g8 c e g a8. b,16  \bar "||" |
    g,8 c e g a8. b,16  \bar "||" |
    g4 r4 g,4  \bar "||" |

    %% "F" bar 70.

    r8 e, r e r e |
    c2. |
    c2. |
    c8 g' c, g' c, g' |

    c''4(-- c4-- c4--) |
    R2. |
    r8 e r e r e |
    c,8 gs' c, gs' c, gs' |

    b16( a gs b a4)~a8 r8 |
    R2. |
    r8 f r f r f |
    c,8 a' c, a' c, a' |

    b4(-- b4-- b4--) |
    R2. |
    r8 df r df r df |
    c,8 f c f c f |

    a16( g fs a g4)~g8 r8 |
    R2. |
    r8 e r e r e |
    c8 g' c, g' c, g' |

    a4(-- a4-- a4)-- |
    R2. |
    r8 g r g r g |
    c,8 e c e c e |
    
    g16( f e g f4) r8 cs8(-. |
    r4 r4 r8 cs,8(-. |
    r8 a r a r a |
    c8 f c f c f |

    d8-. e-. f-. g-. a-. b-.) |
    d8-. e-. f-. g-. a-. b-.) |
    r8 f r f r f |
    c8 g' c, g' c, g' |

    \acciaccatura b8 g2->~g8 r8 |
    \acciaccatura b8 g2->~g8 r8 |
    r8 e r e r e |
    c,8 g' c, g' c, g' |

    % Move melody to 2nd

    r8 e, r e r e |
    c'4(-- c4-- c4--) |
    R2. |
    c,8 gs' c, gs' c, gs' |

    r8 f r f r f |
    e16( d c b a4)~ a8 r8 |
    R2. |
    c,8 a' c, a' c, a' |

    r8 ef r ef r ef |
    b4(-- b4-- b4--) |
    R2. |
    c,8 fs c fs c fs |

    r8 e r e r e |
    d16( c b a g4)~g8 r8 |
    R2. |
    c8 g' c, g' c, g' |

    r8 cs r cs r cs |
    a4(-- a4-- a4)-- |
    R2. |
    c,8 e c e c e |

    r8 d r d r d |
    c16( b a g f4) r8 cs8-. |
    r2 r8 cs8-. |
    c8 f c f c f |

    d-. e-. f-. g-. a-. b-. |
    d-. e-. f-. g-. a-. b-. |
    d-. e-. f-. g-. a-. b-. |
    c8 g' c, g' c, g' |

    c8-. r8 r4 r4 |
    c4(~c8 b16 c cs8)-. gs8-. |
    c8-. r8 r4 r4 |
    c,8 g' c, g' c, gs' |

    % Melody to 3rd

    R2. |
    c8-. r8 r4 r4 |
    c4(~c8 b16 c cs8)-. gs8-. |
    c,8 g' c, g' c, gs' |

    % Melody to Bass

    c,8 g' c, g' c, gs' |
    R2. |
    c8-. r8 r4 r4 |
    c4(~c8 b16 c cs8)-. gs8-. |

    c4(~c8 b16 c cs8)-. gs8-. |
    R2. |
    c,8 g' c, g' c, gs' |
    c8 g c, g' c, gs' |

    %% "G" bar 90.

    c8 g c, g' c, g' |
    r8 ef,,  r ef r ef |
    r8 c, r c r c |
    c,8 g' c, r r   g-.^solo |

    c,8 g' c, g' c, g' |
    r8 ef r ef r ef |
    R2. |
    c8-. d-. ef-. f-. g-. c-. |

    c,8 g' c, g' c, g' |
    r8 ef r ef r ef |
    g'2. |
    g2~g8     g( |

    c,8 c' c, c' c, c' |
    r8 ef r ef r ef |
    af2. |
    af8)-. ef-. ef-. d-. ef-. af-. |

    c,8 b' c, b' c, b' |
    r8 d  r d  r d  |
    g2. |
    g16( fs g af g4) r8 g8( |

    c,8 bf' c, bf' c, bf' |
    r8 df r df r df |
    gf2. |
    gf8)-. df-. df-. c-. df-. gf8-. |

    c,8 af' c, af' c, af' |
    r8 c r c r c |
    f2. |
    f16( e f gf f4) r8 c16( d |

    c,8 g' c, g' c, g' |
    r8 ef r a, r b |
    R2. |
    ef8) ef16( f g8)-. g,-. d'-. ef-. |

    % H in score

    c4~ c8( d16 ef f8 ef16 d |
    c8 g' c, g' c, af' |
    c4~ c8( d16 ef f8 ef16 d |
    c2.~ |

    c4~) c8( d16 ef f8 ef16 d |
    c,8 g' c, g' c, r   |
    c4~) c8( d16 ef f8 ef16 d |
    c2.~ |

    c8)( d16 ef f8 ef16 f g8 f16 g  \bar "||" |
    ef'2.\trill \bar "||" |
    c8)  r8     f8 r8     g8 r8     \bar "||" |
    c4 b bf  \bar "||" |

    %% "H" Bar 101

    af8) r8 r4 r4 |
    af8 ef af ef af ef |
    af8 r8 r4 r4 |
    af8 r af r af r |

    r8 ef,16( f g8)-. g16( af bf8)-. c16( df |
    g2 r8 df8 |
    r8 g16( af bf8)-. bf16( c df8)-. ef16( f |
    bf8 df bf df bf df |

    ef8) r8 r4 r4 |
    g8 df g df g df |
    g8) r8 r4 r4 |
    bf8 r bf r bf r |

    r8 f,16( g af8)-. af16( bf c8)-. df16( ef |
    f2 r8 c8 |
    r8 af,16( bf c8)-. c16( df ef8)-. f16( g |
    af8 c af c af c |

    f8) r8 r4 r4 |
    f8 c f c f c |
    af8) r8 r4 r4 |
    af8 r af r af r |

    c16( b c b c4)~c8 r |
    e4. d16( e f8) (g16 f |
    R2. |
    g8 r r g' af af |

    % J in score

    c16( b c b c8)-. r8 r4 |
    e4.) f16( g af8) bf16 af |
    c,16( b c b c4)~c8 r |
    g8 r r g f f |
    
    c16( b c b c8)-. r8 f4 |
    g8 g8 r8 e8( f) d |
    c16( b c b c8)-. r8 d4 |
    e8 r r4 d8 r8 |

    g4 a b8 r \bar "||" |
    g8 e a f b g \bar "||" |
    e4 f4 g8 r |
    g4 g4 g,8 r \bar "||" |

    %% "I" 110, faster

    c4 r2 |
    c2. |
    c,4 r2 |
    c8 g' c, g' c, g' |

    c4(-- c4-- c4--) |
    R2. |
    r8 e r e r e |
    c,8 gs' c, gs' c, gs' |

    b16( a gs b a4)~a8 r8 |
    R2. |
    r8 f r f r f |
    c,8 a' c, a' c, a' |

    b4(-- b4-- b4--) |
    R2. |
    r8 df r df r df |
    c,8 fs c fs c fs |

    a16( g fs a g4)~g8 r8 |
    R2. |
    r8 e r e r e |
    c8 g' c, g' c, g' |

    a4(-- a4-- a4)-- |
    R2. |
    r8 g r g r g |
    c,8 e c e c e |
    
    g16( f e g f4) r8 cs8(-. |
    r4 r4 r8 cs,8(-. |
    r8 a r a r a |
    c8 f c f c f |

    d8-. e-. f-. g-. a-. b-.) |
    d8-. e-. f-. g-. a-. b-.) |
    r8 f r f r f |
    c8 g' c, g' c, g' |

    \acciaccatura b8 g2->~g8 r8 |
    \acciaccatura b8 g2->~g8 r8 |
    r8 e r e r e |
    c,8 g' c, g' c, g' |

    % Move melody to 2nd
    % Bar 119

    r8 c,, e gs c e |
    c4(-- c4-- c4--) |
    c4(-- c4-- c4--) |
    c,8 gs' c, gs' c, gs' |

    r8 c, f a c f |
    e16( d c b a4)~ a8 r8 |
    e16( d c b a4)~ a8 r8 |
    c,8 a' c, a' c, a' |

    r8 b,, d g b d |
    b4(-- b4-- b4--) |
    b4(-- b4-- b4--) |
    c,8 fs c fs c fs |

    r8 c, e g c e |
    d16( c b a g4)~g8 r8 |
    d16( c b a g4)~g8 r8 |
    c8 g' c, g' c, g' |

    r8 a,, cs e a cs |
    a4(-- a4-- a4)-- |
    a4(-- a4-- a4)-- |
    c,8 e c e c e |

    r8 a, d f a d |
    c16( b a g f4) r8 cs8-. |
    c16( b a g f4) r8 cs'8-. |
    c8 f c f c f |

    r8 b, d f b d |
    d-. e-. f-. g-. a-. b-. |
    d-. e-. f-. g-. a-. b-. |
    c8 g' c, g' c, g' |

    r8 e, g c r df |
    c4(~c8 b16 c cs8)-. gs8-. |
    c8-. r8 r4 r4 |
    c,8 g' c, g' c, gs' |

    % Melody to 3rd

    r8 e, g c r df |
    c8-. r8 r4 r4 |
    c4(~c8 b16 c cs8)-. gs8-. |
    c,8 g' c, g' c, gs' |

    % Melody to Bass

    c,8 g' c, g' c, gs' |
    r8 e,, g c r df |
    c8-. r8 r4 r4 |
    c4(~c8 b16 c cs8)-. gs8-. |

    c4(~c8 b16 c cs8)-. gs8-.  \bar "||" |
    r8 e, g c r df  \bar "||" |
    c,,8 g' c, g' c, gs'  \bar "||" |
    c8 g c, g' c, gs'  \bar "||" |
    
    % "J" L in the score,  once more, solo in 2cl

    R2. |
    c8 r r4 r8  g,-.^solo |
    r8 ef r ef r ef |
    c8 g c, g' c, g' |

    R2. |
    c8-. d-. ef-. f-. g-. c-. |
    r8 ef r ef r ef |
    c,8 g' c, g' c, g' |

    % Starts on Im 3-5
    g16( f ef f g f ef f g8) c8-. |
    g2~g8     g( |
    ef16( d c d ef d c d ef8) g-. |
    c,8 g' c, g' c, g' |

    R2. |
    af8)-. ef-. ef-. d-. ef-. af-. |
    R2. |
    c,8 af' c, af' c, af' |

    % Starts on V 3-5
    d16( c b c d c b c d8)-. g-. |
    g16( fs g af g4) r8 g8( |
    b16( a g a b a g a b8)-. g-. |
    c,8 g' c, g' c, g' |

    R2. |
    gf8)-. df-. df-. c-. df-. gf8-. |
    R2. |
    c,8 gf' c, gf' c, gf' |

    % Starts on IV 3-5
    c,16( b a b c b a b c8)-. f-. |
    f16( e f gf f4) r8 c16( d |
    a16( g f g a g f g a8)-. f-. |
    c,8 f c f c f      |

    R2. |
    ef8) ef16( f g8)-. g,-. d'-. ef-. |
    R2. |
    c8 g' c, g' g, g' |

    c4~ c8( d16 ef f8 ef16 d |
    c2.~ |
    c'4~ c8( d16 ef f8 ef16 d |
    c,8 g' c, g' c, af' |

    c4~) c8( d16 ef f8 ef16 d |
    c8 r8 r2 |
    c4~) c8( d16 ef f8 ef16 d |
    c,8 g' c, g' c, r   |

    c8)( d16 ef f8 ef16 f g8 f16 g  \bar "||" |
    g''2.\trill \bar "||" |
    c8)  r8     f8 r8     g8 r8     \bar "||" |
    c4 b bf  \bar "||" |

    %% "K" Bar 141   M in score

    af8) r8 r4 r4 |
    af8 ef af ef af ef |
    af8 r8 r4 r4 |
    af8 r af r af r |

    df,16( c bf c df c bf c df8)-. g-. |
    g2 r8 df8 |
    bf16( af g af bf af g af bf8)-. g-. |
    bf8 df bf df bf df |

    R2. |
    g8 df g df g df |
    R2. |
    bf8 r bf r bf r |

    c,16( bf af bf c bf af bf c8)-. f-. |
    f2 r8 c8 |
    af16( g f g af g f g af8)-. f-. |
    af8 c af c af c |

    R2. |
    f8 c f c f c |
    R2. |
    af8 r af r af r |

    e,8 r r e8-. d-. d-. |
    e4. d16( e f8) (g16 f |
    g8 r r g-. f-. f-. |
    g2.~\startTrillSpan |

    e8 r r e-. f-. f-. |
    e8)-. g-. c4( bf8.) af16 |
    g8 r r g af af |
    g2.~ |

    g8 r8 r4 a4 |
    af4( g8) r8 f a, |
    g8 r8 r4 f8 a, |
    g2~ g8 r8\stopTrillSpan |

    c8 e g c e8.(\fermata d16) \bar "||" |
    c8 e g c e8.(\fermata d16) \bar "||" |
    c8 e g c e8.(\fermata d16) \bar "||" |
    r2 g4\fermata \bar "||" |

    %% "L" N-1 in score piu mosso 138

    c2. |
    c2. |
    c2. |
    c8 g' c, g' c, g' |

    c4(-- c4-- c4--) |
    c4(-- c4-- c4--) |
    r8 e, r e r e |
    c,8 gs' c, gs' c, gs' |

    b16( a gs b a4)~a8 r8 |
    b16( a gs b a4)~a8 r8 |
    r8 f r f r f |
    c,8 a' c, a' c, a' |

    b4(-- b4-- b4--) |
    b4(-- b4-- b4--) |
    r8 df r df r df |
    c,8 fs c fs c fs |

    a16( g fs a g4)~g8 r8 |
    a16( g fs a g4)~g8 r8 |
    r8 e r e r e |
    c8 g' c, g' c, g' |

    a4(-- a4-- a4)-- |
    a4(-- a4-- a4)-- |
    r8 g r g r g |
    c,8 e c e c e |
    
    g16( f e g f4) r8 cs8(-. |
    g16( f e g f4) r8 cs8(-. |
    r8 a r a r a |
    c8 f c f c f |

    d8-. e-. f-. g-. a-. b-.) |
    d8-. e-. f-. g-. a-. b-.) |
    r8 f r f r f |
    c8 g' c, g' c, g' |

    \acciaccatura b8 g2->~g8 r8 |
    \acciaccatura b8 g2->~g8 r8 |
    r8 e r e r e |
    c,8 g' c, g' c, g' |

    % Move melody to 2nd
    % O in score

    r8 c,, e gs c e |
    c4(-- c4-- c4--) |
    c4(-- c4-- c4--) |
    c,8 gs' c, gs' c, gs' |

    r8 c, f a c f |
    e16( d c b a4)~ a8 r8 |
    e16( d c b a4)~ a8 r8 |
    c,8 a' c, a' c, a' |

    r8 b,, d g b d |
    b4(-- b4-- b4--) |
    b4(-- b4-- b4--) |
    c,8 fs c fs c fs |

    r8 c, e g c e |
    d16( c b a g4)~g8 r8 |
    d16( c b a g4)~g8 r8 |
    c8 g' c, g' c, g' |

    r8 a,, cs e a cs |
    a4(-- a4-- a4)-- |
    a4(-- a4-- a4)-- |
    c,8 e c e c e |

    r8 a, d f a d |
    c16( b a g f4) r8 cs8-. |
    c16( b a g f4) r8 cs'8-. |
    c8 f c f c f |

    r8 b, d f b d |
    d-. e-. f-. g-. a-. b-. |
    d-. e-. f-. g-. a-. b-. |
    c8 g' c, g' c, g' |

    r8 e, g c r df |
    c4(~c8 b16 c cs8)-. gs8-. |
    c4(~c8 b16 c cs8)-. gs8-. |
    c,8 g' c, g' c, gs' |

    % Melody to 3rd

    r8 e, g c r df |
    c4(~c8 b16 c cs8)-. gs8-. |
    c4(~c8 b16 c cs8)-. gs8-. |
    c,8 g' c, g' c, gs' |

    % Melody to Bass

    c,8 g' c, g' c, gs' |
    r8 e,, g c r df |
    c4(~c8 b16 c cs8)-. gs8-. |
    c4(~c8 b16 c cs8)-. gs8-. |

    c4(~c8 b16 c cs8)-. gs8-.  \bar "||" |
    c4(~c8 b16 c cs8)-. gs8-.  \bar "||" |
    c4(~c8 b16 c cs8)-. gs8-.  \bar "||" |
    c8 g c, g' c, gs'  \bar "||" |

    %%% "M" Presto 152

    c2.\startTrillSpan |
    c2.\startTrillSpan |
    c2.\startTrillSpan |
    c8 r c8 r c8 r |

    \acciaccatura fs8\stopTrillSpan g8 r8 \acciaccatura fs8 g8 r8 \acciaccatura fs8 g8 r8 |
    \acciaccatura d'8\stopTrillSpan ef8 r8 \acciaccatura d8 ef8 r8 \acciaccatura d8 ef8 r8 |
    r8\stopTrillSpan ef, r ef r ef |
    c,8 g' c, g' c, g' |

    \acciaccatura fs8 g16( f ef f g f ef f g f ef f |
    \acciaccatura d8 ef16( d c d ef d c d ef d c d |
    r8 ef8 r ef r ef |
    c,8 g' c, g' c, g' |

    g8) a-. b-. c-. d-. ef-. |
    ef) f-. g-. a-. b-. c-. |
    r8 ef8 r ef r ef |
    c,8 g' c, g' c, g' |

    d-. c-. b-. a-. g-. c-. |
    b-. a-. g-. f-. ef-. c-. |
    r8 ef8 r ef r ef |
    c,8 g' c, g' c, g' |


    \acciaccatura e,8 f8 r8 \acciaccatura e8 f8 r8 \acciaccatura e8 f8 r8 |
    \acciaccatura c8 df8 r8 \acciaccatura c8 df8 r8 \acciaccatura c8 df8 r8 |
    r8 df8 r df r df |
    bf,8 f' bf, f' bf, f' |

    \acciaccatura e8 f16( ef df ef f ef df ef f ef df ef |
    \acciaccatura c8 df16( c bf c df c bf c df c bf c |
    r8 df8 r df r df |
    bf,8 f' bf, f' bf, f' |

    f8) g-. a-. bf-. c-. df-. |
    df8) ef-. f-. g-. a-. bf-. |
    r8 df8 r df r df |
    bf,8 f' bf, f' bf, f' |

    c8-. bf-. a-. g-. f-. bf-. |
    a8-. g-. f-. ef-. df-. bf-. |
    r8 df8 r df r df |
    bf,8 f' bf, f' bf, f' |


    \acciaccatura d,8 ef8 r8 \acciaccatura d8 ef8 r8 \acciaccatura d8 ef8 r8 |
    \acciaccatura b8  c8 r8 \acciaccatura b8  c8 r8 \acciaccatura b8  c8 r8 |
    r8 c8 r c r c |
    af,8 ef' af, ef' af, ef' |

    \acciaccatura d8 ef16( df c df ef df c df ef df c df |
    \acciaccatura b8  c16( bf af bf c bf af bf c bf af bf |
    r8 c8 r c r c |
    af,8 ef' af, ef' af, ef' |

    ef8) f-. g-. af-. bf-. c-. |
    c8) df-. ef-. f-. g-. af-. |
    r8 c8 r c r c |
    af,8 ef' af, ef' af, ef' |

    bf-. af-. g-. f-. ef-. af-. |
    g8-. f-. ef-. df-. c-. af-. |
    r8 c8 r c r c |
    af,8 ef' af, ef' af, ef' |

    d,8-. d8~d8 c16 d16 ef8 f16 ef16 |
    b8-. b8~b8 a16 b16 c8 d16 c16 |
    r8 b r b r c |
    g,8 d' g, d' c ef |

    d8-. d8~d8 c16 b16 a8 b16 c16 |
    b8-. b8~b8 a16 g16 fs8 g16 a16 |
    r8 b r b r c |
    g,8 d' g, d' c ef |

    d8-. d8~d8 c16 d16 ef8 f16 ef16 |
    b8-. b8~b8 a16 b16 c8 d16 c16 |
    r8 b r b r c |
    g,8 d' g, d' c ef |

    d8-. d8~d8 c16 b16 a8 b16 c16 |
    b8-. b8~b8 a16 g16 fs8 g16 a16 |
    r8 b r b r c |
    g,8 d' g, d' c ef |

    d16( e c e) d( e c e) d( e c e) |
    b16( c a c) b( c a c) b( c a c) |
    d16( e c e) d( e c e) d( e c e) |
    g,8 d' g, d' g, d' |

    d8-. r8 r4 r4 |
    b8-. r8 r4 r4 |
    d16( c) b-. c-. d-. e-. f-. g-. a-. b-. c-. d-. |
    g,8 r8 r4 r4 |

    g2.~\startTrillSpan |
    e2.~\startTrillSpan |
    e8-. r8 r2 |
    c2.~\startTrillSpan |

    \afterGrace g2. { fs16 g16\stopTrillSpan } |
    \afterGrace e2. { ds16 e16\stopTrillSpan } |
    \afterGrace c2.\startTrillSpan { b16 c16\stopTrillSpan } |
    c2.~ |

    c8 r8 r2 \bar "|." |
    g8 r8 r2 \bar "|." |
    e8 r8 r2 \bar "|." |
    c8\stopTrillSpan r8 r2 \bar "|." |
}
