
scoreAClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  midiInstrument = "clarinet"
} << \notation { \common  \relative c''' \clari } >>

scoreAClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  midiInstrument = "clarinet"
} << \notation { \common  \relative c'' \clarii } >>

scoreAClarinetIIIPart = \new Staff \with {
  instrumentName = "Clarinet III"
  midiInstrument = "clarinet"
} << \notation { \common  \relative c'' \clariii } >>


\bookpart { 
    \header {
      title = \xtitle
      instrument = "for Clarinet Trio"
      composer = \xcomposer
      arranger = \xarranger
      tagline = ##f
    }
    
    \score {
      <<
        \scoreAClarinetIPart
        \scoreAClarinetIIPart
        \scoreAClarinetIIIPart
      >>
      \layout { ragged-last = ##t }
      \midi { }
    }
}

\paper {
    raggied-bottom = ##t
}

\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bb Clarinet 1"
      tagline = ##f
    }
    \score { \scoreAClarinetIPart }
}


\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bb Clarinet 2"
      tagline = ##f
    }
    \score { \scoreAClarinetIIPart }
}

\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bb Clarinet 3"
      tagline = ##f
    }
    \score { \scoreAClarinetIIIPart }
}
