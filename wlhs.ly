\include "english.ly"

siquivi = {
    \clef treble
    \tempo "S'equivicava"
    c'4 ef' g' f'
}

omagnum = {
    \clef treble
    \tempo "O Magnum Mysterium"
    c''4 f' c'' s
}

sweetheart = {
    \clef bass
    \tempo "Sweetheart of Sun"
    a, e cs' s
}

\layout {
    ragged-right = ##t
}

\score {
    \new staff \with { \remove "Time_signature_envgaver" }
    {
        \siquivi \break
        \omagnum \break
        \tempo "Zigeunerleiben" s1 \break
        \sweetheart \break
        \tempo "Shout Glory" s1 \break
    }
}
