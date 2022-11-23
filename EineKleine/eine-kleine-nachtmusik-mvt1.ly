\version "2.10.0"

\include "clar1.ly"
\include "clar2.ly"
\include "clar3.ly"
\include "bassclar.ly"

mvtOne = \new StaffGroup <<
    \tag #'clr1 \namedStaff "Clar 1" \violinOne
    \tag #'clr2 \namedStaff "Clar 2" \violinTwo
    \tag #'clr3	\namedStaff "Clar 3" \viola
    \tag #'bass	\namedStaff "Bass Clar" \cello
>>

\book {
  \header {
    \include "headers.ly"
  }
  \score {
    \mvtOne
    \layout {}
  }
  \paper {
    ragged-bottom = ##f
    ragged-last-bottom = ##f
  }
}

\book {
  \score {
    \iftop \unfoldRepeats \mvtOne
    \midi {
      \context { \Score tempoWholesPerMinute = #(ly:make-moment 144 4) }
    }
  }
}

%\book {
%  \header {
%    \include "headers.ly"
%  }
%  \pageBreak
%  \score {
%    \nomidi \keepWithTag #'clr1 \mvtOne
%    %\header {}
%    \layout {}
%  }
%  \pageBreak
%  \score {
%    \nomidi \keepWithTag #'clr2 \mvtOne
%    %\header {}
%    \layout {}
%  }
%  \pageBreak
%  \score {
%    \nomidi \keepWithTag #'clr3 \mvtOne
%    %\header {}
%    \layout {}
%  }
%  \pageBreak
%  \score {
%    \nomidi \keepWithTag #'bass \mvtOne
%    %\header {}
%    \layout {}
%  }
%}
