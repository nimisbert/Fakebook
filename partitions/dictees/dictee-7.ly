
A = \relative c' { <c e g>1 <g b d> <g b d> <c e g> }
B = \relative c' { <c e g>1 <g b d> <a c e> <c e g>2. r8 <a c e>8 }
C = \relative c' { <g b d>1 <c e g> <a c e> <a c e> }

\book {

\header {
    title = "Dictée" 
    subtitle = "Harmonie 1"
}

\score {
    \layout {
        ragged-right = ##f
        indent = 0\cm
    }
    \header { piece = "A" }
    << {
        \numericTimeSignature \time 4/4
        \A
    } >>
}

\score {
    \layout {
        ragged-right = ##f
        indent = 0\cm
    }
    \header { piece = "B" }
    << {
        \numericTimeSignature \time 4/4 
        \B
    } >>
}

\score {
    \layout {
        ragged-right = ##f
        indent = 0\cm
    }
    \header { piece = "C" }
    << {
        \numericTimeSignature \time 4/4
        \C
    } >>
}

}
