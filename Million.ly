%{
    Comments
%}
\version "2.10.33"
\include "english.ly"

\paper {
    #(set-default-paper-size "letter" )
    ragged-last-bottom = ##t
}

\header {
    title = "If I Had a Million Dollars"
}

upper = \relative c' {
    \clef treble \key a \major
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \partial 8*5
    r8 r2
    r4 <e cs>8  a,  r4 <e' cs>8 a,
    r4 <e' b>8   gs, r4 <e' b>8 gs,
    r4 <d' a>8   fs, r4 <d' a>8 fs,
    r4 <d' a>8   fs, r4 <d' a>8 fs,

    r4 <e' cs>8 a,   r4 <e' cs>8 a,
    r4 <e' b>8   gs, r4 <e' b>8 gs,
    r4 <d' a>8   fs, r4 <d' a>8 fs,
    r1 \bar "||"

    % Page 2

    \mark \markup { \musicglyph #"scripts.coda" }
    r4 <e' cs>8  a,  r4 <e' cs>8 a,
    r4 <e' b>8   gs, r4 <e' b>8 gs,
    r4 <d' a>8   fs, r4 <d' a>8 fs,
    r4 <d' a>8   fs, r4 <d' a>8 fs,

    r4 <e' cs>8 a,   r4 <e' cs>8 a,
    r4 <e' b>8   gs, r4 <e' b>8 gs,
    r4 <d' a>8   fs, r4 <d' a>8 fs,
    r1 \bar "||"

}

lower = \relative c, {
    \clef bass \key a \major
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \partial 8*5
    fs8 fs4 gs
    a r cs d      e r b r
    d r a r       d r fs, gs

    a r cs d      e r b r
    d r a r8 d    r4 \times 2/3 { cs'8 d cs } b8 a e16 fs a8

    a,4 r cs d    e r b r
    d r a r       d r fs, gs

    a r cs d      e r b r
    d r a r8 d    r2 fs,4 gs
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
}

%{

[stave 1 "    " treble 1]
[nocheck]
  r-rr || 
  r (e-c-)a`- r (e-c-)a`- | r (e-b`-)g`- r (e-b`-)g`- |
  r (d-a`-)g`- r (d-a`-)g`- | r (d-a`-)f`- r (d-a`-)f`- |
  r (e-c-)a`- r (e-c-)a`- | r (e-b`-)g`- r (e-b`-)g`- |
  r (d-a`-)g`- r (d-a`-)g`- | R! ||
  @ p2
  "\mf\d"/a12 
  r (e-c-)a`- r (e-c-)a`- | r (e-b`-)g`- r (e-b`-)g`- |
  r (d-a`-)g`- r (d-a`-)g`- | r (d-a`-)f`- r (d-a`-)f`- |
  r (e-c-)a`- r (e-c-)a`- | r (e-b`-)g`- r (e-b`-)g`- |
  r (d-a`-)g`- r (d-a`-)g`- | R! ||

  r- e`-;(e-c-)e`-;c-(e.a`.) | 
  e(e-b`-)g`-;f-a-_;(a-eb`) a-_|
  a(fd) d'-d'-_(d'fd)|
  d'(d'fd)c'(bfd) |

  @ p3 m22
  c'(aec)r-c-(ea`) | 
  e(e-b`-)g`-;f-a-_;(a-eb`) a-_|
  a(afd)a-fa-_ | a(d-a`-)f-_f e-e-_ |

  e(ca`) e-e. | e(e-b`-)g`-;f-a-_(aeb`)_ |
  a (fd) d'-d'-_(d'fd) |
  d'(d'fd)c'(bfd) |
  
  @ p4 m30
  c'(aec)r-c-(ea`) | 
  e-e-;(e-b`-)g`-;f-a-_(aeb`)_ |
  a (afd) a-f- (afd) |

  a(a-d-a`-)f-_;f-e-;e-f- | e-e-(ca`) e-e. | e(e-b`-)g`-;f-a-_;(a-eb`)a-_ |
  
  @ p5 m36
  a (fd) d'-d'-_(d'fd) |
  d'(d'fd)c'(bfd) |
  c'(aec)r-c-(ea`) | 

  e(e-b`-)g`-;f-a-_;(a-eb`)b-_ |
  b(afd) r (d-f-) a-_ | a-f-;(a-d-)f-;a-a-;f-a-_ |

  @p6 m42
  a (eca`) e-e. |
  e(e-b`-)g`-;f-a-_;(a-eb`) a-_| a (fd) r f |
  (d'.a.f.e.) (d'-a-f-e-)_ (d'afe) (bge)_ |
  (bge)  (e-b`-)g`-;r- g`-(e-b`-)g`- |
  r- g`-(e-b`-)g`-;r- g`-(e-b`-)g`- |
  r- g`-(e-b`-)g`-;r- g`-(e-b`-)g`- |

  @p7 m49
  r- g`-(e-b`-)g`-;
  r- g`-(eb`) 
  "3rd time to Coda\mf\c"/a4/e ||
  "Chorus:"/a
  r (fd) d'-d'-_(d'fd) | c'-d' (e-g-c'-)_(e-g-c'-) b (e-c'-)_ |
  (e-c'-) a- (e'ae) e'-c'-_ (c'ae) |

  e'-e'-_(e'af)d' (c'-af)a-_ | a (fd) d'-d'-_(d'fd) |
  c'-d'(c'-e-g-)_(c'-e-g-) b (c'-e-)_ | (c'-e-)a- (e'ae) e'-c'-_(c'ae) |

  @ p8 m57
  e'-e'-; (e'-a-f-)e'-;c'-e'(a-f-)_ | (af) (fd) d'-d'-_(d'fd) | 
      c'- d' (c'-g-e-)_(c'-g-e-) b (c'-e'-)_ ||
  [1st]
  (c'-e-)a-; (e'-ae)c'-;e'-c'-;(e'-ae)c'- | 
  e'-e'-;(e'-af)c'-_;c'-a-;(a-fc)a- | (a+.f+.d+.a`+.) (afda`) 
      | (g++e++b`++) :) || 

  @ p9 m64
  [2nd]
  (c'-e-)a- (e'ge) e'-c'-_(c'-ae) e'-_ |
  e' (e'+.a+.f+.) | (d'+.f+.d+.) (afd) | (b++g++e++) 
  "D.S. al coda"/a/e || [all][newline]

  "\mf\c"/a12 "Coda"/a2
  r (fd) d'_(d'fd) |
  (c'-g-e-) d' (c'-g-e-)_(c'-g-e-) b (c'-e-)_ |
  (c'-e-)a-_(ae) e' (e'c'ae) |

  @ p10 m71
  e'-e'-_(e'af) d'-c'd'-_ | d'-a-_(afd) d'-d'-_(d'fd) | 
  (c'-g-e-) d' (c'-g-e-)_(c'-g-e-) b (c'-e-)_ |

  (c'-e-)a-_(ae) e' (e'c'ae) |
  e'-e'-_(e'af) d'-c'f'-_ | f'-d'-_(d'af) d'-d'-_(d'fd) | 

  @ p11 m77
  (c'-g-e-) d' (c'-g-e-)_(c'-g-e-) b (c'-a-e-)_ |
  (c'+a+e+) (b-g-)(c'-a-) (bg) | (a+f+c+) (g-e-b`-)(a-f-c-) (geb') | (f+.d+.a`+.) (fda`) |

  (egb`) r f a-a- | [bass 0] rcea | c-d-;e-f-; {c'-d'-c'-;} b-a- | 
  [treble 1]  (e++\ar\a++) ||



[endstave]

[stave 2 "    " bass 0]
[nocheck]
  f`-f`g` || 
  a` r c d | e r b` r | dra`r | dr f`g` | a`rcd | 
  erb`r | dra`r-d- | r {c'-d'-c'-}; b-a-; e--f--a- ||
  @ p2
  a` r c d | e r b` r | dra`r | dr f`g` | a`rcd | 
  erb`r | dra`r-d- | r+  f`g` ||
  a` r c d | e r b` r | dra`r | dr f`g` | 
  @ p3 m22
  a` r c d | e r b` r | dra`r | dr f`g` | 
  a` r c d | e r b` r | dra`r | dr f`g` | 
  @ p4 m30
  a` r c d | e r b` r | dra`r | dr f`g` | 
  a` r c d | e r b` r | 
  @ p5 m36
                        dra`r | dr f`g` | 
  a` r c d | e r b` r | dra`r | dr f`g` | 
  @ p6 m42
  a` r c d | e r b` c | dra`r | 
  dr a`r | er a`r | er a`r | er a`r | 
  @ p7 m49
  er b`c  ||
  dra`e | erb`r | a`rg`r |
  f`rb`c | dra`e | erb`r | a`rg`r |
  @ p8 m57
  f`rb`c | dra`e | erb`r ||
  a`rg`r | f`rb`c | d+. r | e+f`g` :) ||
  @ p9 m64
  a`rg`r | f`rb`c | d+. r | e+f`g` ||
  dra`r | erb`r | a`rg`r |
  @ p10 m71
  f`rb`c | dra`r | erb`r |
  a`rg`r | f`rb`c | dra`r |
  @ p11 m77
  erb`r | a`rg`r | f`re`r | d`ra`r |
  err+ | (a``++a`++) | d`+ f``g`` | (a++\ar\e++c++a`++a``++) ||


[endstave]

%}
