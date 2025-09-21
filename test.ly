\version "2.24.4"

\language "français"

\header {
 title = "La grande bouffe"
 composer = "Philippe Sarde"
 arranger = "arrangement : Antoine Souchav'"

 date = "1973"
 style = "Film"
 copyright = "(c) Philippe Sarde"


 maintainer = "Stéphane Pierre Maniaci"
 maintainerEmail = "stephane.maniaci@gmail.com"

 lastupdated = "2025/Sep/20"
}

md_theme_un = \relative {
  r ré'8-1 mib~-3 mib sol-1 sib4-3 |
  lab-2 fa8-1 ré~-3 ré si-2 sol4-1   |
  r ré'8 mib~ mib sol sib4 |
  lab fa8 ré~ ré si ré4
}

md_theme_fin = \relative {
  r4 fa'8 lab~ lab si ré4  |
  do sol8 mib~ mib do mib4 |
  r ré8 fa~ fa mib ré4     |
  do1
}

upper = \relative {
  \clef treble
  \key do \minor

  \md_theme_un

  r4 fa'8 lab~ lab si ré4 |
  do sol8 mib~ mib do mib4 |
  r fa8 lab~ lab si ré4 |
  do1

  \break

  \repeat volta 2 {

  \transpose do' do'' \md_theme_un |

  \break

    \md_theme_fin

    \break

    \repeat unfold 2 {
      r8 fa sol fa mib4 ré |
      r8 mib fa mib do4 sol |
    }

    r8 si ré si lab4 fa |
    r8 si ré si sol4 mib

    \md_theme_fin
  }
}

lower = \relative {
  \clef bass
  \key do \minor

  \repeat unfold 2 {
    do2-1 mib-2 |
    ré-1  sol,-4 |
    do2 mib |
    ré sol,

    fa' sol, |
    mib' do |
    re sol, |
    do1
  }

  \repeat unfold 2 {
    ré4 fa sol,2 |
    do4 mib sol,2
  }

  \break

  lab'4 fa ré2
  do4 mib sol2

  \break

  fa sol, |
  mib' do |
  re sol, |
  do1
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
