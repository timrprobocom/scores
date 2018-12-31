\version "2.16"
\include "english.ly"
#(set-global-staff-size 20)
#(set-default-paper-size "letter")

\include "GypsyDance.ly"

\bookpart {
    \header {
        subtitle = "Clarinet 1"
    }
    \paper {
        evenHeaderMarkup = \markup {
            \on-the-fly \not-first-page "Gypsy Dance - Clar 1"
        }
        oddHeaderMarkup = \evenHeaderMarkup
    }
    \score {
        \new Staff << \notation { \common \relative c' \clari } >>
    }
}
\bookpart {
    \header {
        subtitle = "Clarinet 2"
    }
    \paper {
        evenHeaderMarkup = \markup {
            \on-the-fly \not-first-page "Gypsy Dance - Clar 2"
        }
        oddHeaderMarkup = \evenHeaderMarkup
    }
    \score {
        \new Staff << \notation { \common \relative c \clarii } >>
    }
}
\bookpart {
    \header {
        subtitle = "Clarinet 3"
    }
    \paper {
        evenHeaderMarkup = \markup {
            \on-the-fly \not-first-page "Gypsy Dance - Clar 3"
        }
        oddHeaderMarkup = \evenHeaderMarkup
    }
    \score {
        \new Staff << \notation { \common \relative c \clariii } >>
    }
}
\bookpart {
    \header {
        subtitle = "Bass Clarinet"
    }
    \paper {
        evenHeaderMarkup = \markup {
            \on-the-fly \not-first-page "Gypsy Dance - Bass Cl"
        }
        oddHeaderMarkup = \evenHeaderMarkup
    }
    \score {
        \new Staff << \notation { \common \relative c \clarb } >>
    }
}
