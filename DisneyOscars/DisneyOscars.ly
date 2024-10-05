%{
    Comments
%}
\version "2.16.1"
\include "english.ly"
\include "drumpitch-init.ly"

#(set-default-paper-size "letter" )

\paper {
    ragged-last-bottom = ##t
}

\header {
    title = "Disney at the Oscars - New Ending"
    subtitle = "(Rev 1.2)"
    arranger = "Arr Tim Roberts"
    copyright = ""
}


no = { \once \override Score.BarNumber #'break-visibility = \all-invisible }

prefix = {
  \numericTimeSignature
  \override Score.BarNumber #'break-visibility = #all-visible
  \override Score.BarNumber #'self-alignment-X = #0
  \override Score.BarNumber #'self-alignment-Y = #1
  \override MultiMeasureRest #'expand-limit = #1
  \set Score.currentBarNumber = #218
}

structure = {
  \time 4/4
  \tempo "Smoothly" 4 = 110
  \mark \markup \box 218 \no
  s1*12  \mark \markup \box 230 \no
  s1*8 \tempo "Marcato - separated"
  s1 
  \time 2/4 s2 
  \time 4/4
  s1*5 \mark \markup \box 245 \no
  s1*4 \bar "|."
}

tenorIIa = { s1 }
tenorIIb = { s1 }
bassIa = { s1 }
bassIb = { s1 }

\include "flute1.ly"
\include "flute2.ly"
\include "oboe.ly"
\include "clarinet1.ly"
\include "clarinet2.ly"
\include "clarinet3.ly"
\include "altosax.ly"
\include "tenorsax.ly"
\include "trumpet1.ly"
\include "trumpet2.ly"
\include "trumpet3.ly"
\include "horn.ly"
\include "trombone1.ly"
\include "trombone2.ly"
\include "trombone3.ly"
\include "baritone.ly"
\include "tuba.ly"
\include "drums.ly"


%
% Define the parts.
%


fluteone = \relative c'' {
  \set Staff.instrumentName = #"Flute 1 "
  \set Staff.shortInstrumentName = #"Fl1 "
  \set Staff.midiInstrument = #"flute"

  \clef treble 
  \prefix
  << \structure \flutea >>
}

flutetwo = \relative c'' {
  \set Staff.instrumentName = #"Flute 2 "
  \set Staff.shortInstrumentName = #"Fl2 "
  \set Staff.midiInstrument = #"flute"

  \clef treble 
  \prefix
  << \structure \fluteb >>
}

oboe = \relative c'' {
  \set Staff.instrumentName = #"Oboe "
  \set Staff.shortInstrumentName = #"Ob "
  \set Staff.midiInstrument = #"oboe"

  \clef treble 
  \prefix
  << \structure \oboe >>
}
 
clarinetone = \relative c'' {
  \set Staff.instrumentName = #"Clarinet 1 "
  \set Staff.shortInstrumentName = #"Cl1 "
  \set Staff.midiInstrument = #"clarinet"

  \clef treble 
  \prefix
  << \structure \clarineta >>
}
 
clarinettwo = \relative c' {
  \set Staff.instrumentName = #"Clarinet 2 "
  \set Staff.shortInstrumentName = #"Cl2 "
  \set Staff.midiInstrument = #"clarinet"

  \clef treble 
  \prefix
  << \structure \clarinetb >>
}

clarinetthree = \relative c' {
  \set Staff.instrumentName = #"Clarinet 3 "
  \set Staff.shortInstrumentName = #"Cl3 "
  \set Staff.midiInstrument = #"clarinet"

  \clef treble 
  \prefix
  << \structure \clarinetc >>
}

% altoclarinet = \relative c'' {
%   \set Staff.instrumentName = #"Alto Clar "
%   \set Staff.shortInstrumentName = #"ACl  "
%   \set Staff.midiInstrument = #"clarinet"
% 
%   \clef treble 
%   \prefix
% 
%   \tenorIa
%   \tenorIb
% }
 
bassclarinet = \relative c'' {
  \set Staff.instrumentName = #"Bass Clarinet "
  \set Staff.shortInstrumentName = #"BCl "
  \set Staff.midiInstrument = #"clarinet"

  \clef treble 
  \prefix

  \tenorIIa
  \tenorIIb
}

altosax = \relative c'' {
  \set Staff.instrumentName = #"Alto Sax "
  \set Staff.shortInstrumentName = #"ASx  "
  \set Staff.midiInstrument = #"saxophone"

  \clef treble 
  \prefix
  << \structure \altosax >>
}

tenorsax = \relative c'' {
  \set Staff.instrumentName = #"Tenor Sax "
  \set Staff.shortInstrumentName = #"TSx "
  \set Staff.midiInstrument = #"saxophone"

  \clef treble 
  \prefix
  << \structure \tenorsax >>
}

barisax = \relative c'' {
  \set Staff.instrumentName = #"Bari Sax "
  \set Staff.shortInstrumentName = #"BSx "
  \set Staff.midiInstrument = #"saxophone"

  \clef treble 
  \prefix

  \bassIa
  \bassIb
}

trumpetone = \relative c' {
  \set Staff.instrumentName = #"Trumpet 1 "
  \set Staff.shortInstrumentName = #"Tp1 "
  \set Staff.midiInstrument = #"trumpet"

  \clef treble 
  \prefix
  << \structure \trumpeta >>
}

trumpettwo = \relative c' {
  \set Staff.instrumentName = #"Trumpet 2 "
  \set Staff.shortInstrumentName = #"Tp2 "
  \set Staff.midiInstrument = #"trumpet"

  \clef treble 
  \prefix
  << \structure \trumpetb >>
}

trumpetthree = \relative c' {
  \set Staff.instrumentName = #"Trumpet 3 "
  \set Staff.shortInstrumentName = #"Tp3 "
  \set Staff.midiInstrument = #"trumpet"

  \clef treble 
  \prefix
  << \structure \trumpetc >>
}

euphoniumtc = \transpose bf c'' \relative c' {
  \set Staff.instrumentName = #"Euphonium TC "
  \set Staff.shortInstrumentName = #"ET "
  \set Staff.midiInstrument = #"trombone"

  \clef treble 
  \prefix
  << \structure  \baritone >>
}

euphoniumbc = \relative c {
  \set Staff.instrumentName = #"Euphonium BC"
  \set Staff.shortInstrumentName = #"EB "
  \set Staff.midiInstrument = #"trombone"

  \clef bass 
  \prefix
  << \structure \baritone >>
}

hornone = \relative c'' {
  \set Staff.instrumentName = #"Horn 1 "
  \set Staff.shortInstrumentName = "Hn1 "
  \set Staff.midiInstrument = #"horn"

  \clef treble 
  \prefix
  << \structure \horn >>
}

% horntwo = \relative c'' {
%   \set Staff.instrumentName = #"Horn 2 "
%   \set Staff.shortInstrumentName = "Hn2 "
%   \set Staff.midiInstrument = #"horn"
% 
%   \clef treble 
%   \prefix
%   \altoIIa
%   \altoIIb
% }

tromboneone = \relative c' {
  \set Staff.instrumentName = #"Trombone 1 "
  \set Staff.shortInstrumentName = #"Tb1 "
  \set Staff.midiInstrument = #"trombone"

  \clef bass 
  \prefix
  << \structure \trombonea >>
}

trombonetwo = \relative c {
  \set Staff.instrumentName = #"Trombone 2 "
  \set Staff.shortInstrumentName = #"Tb2 "
  \set Staff.midiInstrument = #"trombone"

  \clef bass 
  \prefix
  << \structure \tromboneb >>
}

trombonethree = \relative c {
  \set Staff.instrumentName = #"Trombone 3 "
  \set Staff.shortInstrumentName = #"Tb3 "
  \set Staff.midiInstrument = #"trombone"

  \clef bass 
  \prefix
  << \structure \trombonec >>
}

tuba = \relative c {
  \set Staff.instrumentName = #"Tuba "
  \set Staff.shortInstrumentName = #"Tba "
  \set Staff.midiInstrument = #"tuba"

  \clef bass 
  \prefix
  << \structure \tubabc >>
}

percussion = {
  \set Staff.instrumentName = #"Percussion "
  \set Staff.shortInstrumentName = #"Per "
  \set Staff.midiInstrument = #"drum"
  \prefix
  << \structure \drum >>
}

music = {
  <<
    \new StaffGroup <<
     \new Staff     \fluteone
     \new Staff     \flutetwo
    >>
    \new Staff      \oboe
    \new StaffGroup <<
     \new Staff     \clarinetone
     \new Staff     \clarinettwo
     \new Staff     \clarinetthree
%     \new Staff     \altoclarinet
     \new Staff     \bassclarinet
    >>
    \new StaffGroup <<
     \new Staff     \altosax
     \new Staff     \tenorsax
     \new Staff     \barisax
    >>
    \new Staff     \hornone
    \new StaffGroup <<
     \new Staff     \trumpetone
     \new Staff     \trumpettwo
     \new Staff     \trumpetthree
    >>
    \new StaffGroup <<
     \new Staff     \tromboneone
     \new Staff     \trombonetwo
     \new Staff     \trombonethree
    >>
    \new StaffGroup <<
     \new Staff     \euphoniumtc
     \new Staff     \euphoniumbc
    >>
    \new Staff     \tuba
    \new DrumStaff \percussion
  >>
}


parts = {
  <<
     \tag #'flt1  \new Staff     \fluteone
     \tag #'flt2  \new Staff     \flutetwo
     \tag #'oboe  \new Staff     \oboe
     \tag #'clr1  \new Staff     \clarinetone
     \tag #'clr2  \new Staff     \clarinettwo
     \tag #'clr3  \new Staff     \clarinetthree
%     \tag #'clra  \new Staff     \altoclarinet
%     \tag #'clrb  \new Staff     \bassclarinet
     \tag #'saxa  \new Staff     \altosax
     \tag #'saxt  \new Staff     \tenorsax
%     \tag #'saxb  \new Staff     \barisax
     \tag #'tpt1  \new Staff     \trumpetone
     \tag #'tpt2  \new Staff     \trumpettwo
     \tag #'tpt3  \new Staff     \trumpetthree
     \tag #'tbn1  \new Staff     \tromboneone
     \tag #'tbn2  \new Staff     \trombonetwo
     \tag #'tbn3  \new Staff     \trombonethree
%     \tag #'tbnb  \new Staff     \basstrombone
     \tag #'hrn1  \new Staff     \hornone
%     \tag #'hrn2  \new Staff     \horntwo
     \tag #'eutc  \new Staff     \euphoniumtc
     \tag #'eubc  \new Staff     \euphoniumbc
     \tag #'tuba  \new Staff     \tuba
     \tag #'drum  \new DrumStaff \percussion
  >>
}
