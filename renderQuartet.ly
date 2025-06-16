
scoreAClarinetIPart = \new Staff \with {
  instrumentName = "Clarinet I"
  midiInstrument = "clarinet"
% } << \notation { \common  \relative c''' \clari } >>
} << \notation \clari >>

scoreAClarinetIIPart = \new Staff \with {
  instrumentName = "Clarinet II"
  midiInstrument = "clarinet"
} << \notation \clarii >>

scoreAClarinetIIIPart = \new Staff \with {
  instrumentName = "Clarinet III"
  midiInstrument = "clarinet"
} << \notation \clariii >>

scoreABassClarinetPart = \new Staff \with {
  instrumentName = "Bass clarinet"
  midiInstrument = "clarinet"
} << \notation \clarb >>


\bookpart { 
    \header {
      title = \xtitle
      instrument = "for Clarinet Quartet"
      composer = \xcomposer
      arranger = \xarranger
      tagline = ##f
    }
    
    \score {
      <<
        \scoreAClarinetIPart
        \scoreAClarinetIIPart
        \scoreAClarinetIIIPart
        \scoreABassClarinetPart
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
    \score { \compressMMRests \scoreAClarinetIPart }
}


\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bb Clarinet 2"
      tagline = ##f
    }
    \score { \compressMMRests \scoreAClarinetIIPart }
}

\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bb Clarinet 3"
      tagline = ##f
    }
    \score { \compressMMRests \scoreAClarinetIIIPart }
}

\bookpart {
   \header {
      title = \xtitle
      composer = \xcomposer
      arranger = \xarranger
      instrument = "Bass Clarinet"
      tagline = ##f
    }
    \score { \compressMMRests \scoreABassClarinetPart }
}
