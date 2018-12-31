\version "2.16"
\include "english.ly"

#(set-global-staff-size 14)
#(set-default-paper-size "letter")

\include "GypsyDance.ly"

\bookpart {
    \score {
        \new StaffGroup <<
            \new Staff \with {midiInstrument = #"clarinet" } 
                << \notation { \common \relative c' \clari } >>
            \new Staff \with {midiInstrument = #"clarinet" } 
                << \notation { \common \relative c \clarii } >>
            \new Staff \with {midiInstrument = #"clarinet" } 
                << \notation { \common \relative c \clariii } >>
            \new Staff \with {midiInstrument = #"clarinet" } 
                << \notation { \common \relative c \clarb } >>
        >>

        \layout { }
        \midi { }
    }
}
