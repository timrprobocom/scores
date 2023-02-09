\version "2.14.2"

\include "clarinetti.ly"
\include "corni.ly"
\include "fagotti.ly"

\header {
  title = "Marsch - WoO 29"
  subtitle = "for 2 Clarinets, 2 Horns and 2 Fagotti"
  composer =  "Ludwig van Beethoven"
  date = "1807"
  source = "Breitkopf and Hartel"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Stelios Samelis"
  lastupdated = "2007/June/15"
  version = "2.14.2"
  tagline = ""
}


\score {

 \new StaffGroup {
 <<

 \new Staff = "one" {
 \clarinetti
 }

 \new Staff = "two" {
 \corni
 }

 \new Staff = "three" {
 \fagotti
 }

 >>
 }

 \layout { }

}


\score {

 \unfoldRepeats

 \new StaffGroup {
 <<

 \new Staff = "one" {
 \transposition bes
 \clarinetti
 }

 \new Staff = "two" {
 \transposition bes
 \corni
 }

 \new Staff = "three" {
 \fagotti
 }

 >>
 }

 \midi { }

}

 \paper {
 after-title-space = 2\cm
 left-margin = 2.0\cm
 paper-width = 22\cm
 }
