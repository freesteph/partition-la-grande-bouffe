\version "2.24.4"

\language "français"

\header {
 title = "La grande bouffe"
 composer = "Philippe Sarde"
 arranger = "arrangement : Antoine Souchav'"

 date = "1973"
 style = "Film"
 copyright = "Public Domain"


 maintainer = "Stéphane Pierre Maniaci"
 maintainerEmail = "stephane.maniaci@gmail.com"

 lastupdated = "2025/Sep/20"
}

md_theme_un = \relative {
  r ré'8 mib~ mib sol sib4 |
  lab fa8 ré~ ré si sol4   |
  r ré'8 mib~ mib sol sib4 |
  lab fa8 ré~ ré si ré4
}

upper = \relative {
  \clef treble
  \key do \minor

  \md_theme_un

  r fa'8 lab~ lab si ré4 |
  do sol8 mib~ mib do mib4 |
  r fa8 lab~ lab si ré4 |
  do1

  \break

  \transpose do' do'' \md_theme_un |

  \break

  r4 fa,8 lab~ lab si ré4 |
  do sol8 mib~ mib do mib4 |
  r ré8 fa~ fa mib ré4 |
  do1
}

lower = \relative {
  \clef bass
  \key do \minor

  \repeat unfold 2 {
    do2-1 mib-2 |
    ré-1  sol,-5 |
    do2 mib |
    ré sol,

    fa' sol, |
    mib' do |
    re sol, |
    do1
  }
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
 >>
}

\layout {
  % indent = #0
  % ragged-right = ##t
}