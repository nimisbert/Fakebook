\version "2.24.2"
\paper{ left-margin = 2\cm }

\book {
    \header {
        title = "Lecture de Notes en Clef de Sol"
        subtitle = "Dandelot - 1928"
        composer = "Georges DANDELOT"
    }
    \score {
        << 
        \new Staff = "1" {
            \numericTimeSignature \time 4/4
            \clef treble
            \relative c' {
                g'2 c c, g' g' c, g g' c,, c' g c, g'' g,
                c c, g' g' c, g c, g' c g' c, c, g' g' c, c,   
            }
        } 
        >>
        \layout {
            indent = 0\cm
        }
    }
    
    \score {
        << 
        \new Staff = "2" {
            \numericTimeSignature \time 4/4
            \clef treble
            \relative c' {
                c4 g' c, c' c, g'' g, g' c, c, c' g g' c,
                g' g, g' c,, c' g' c,, g' g' g, c c, g'' c,,
            }
        } 
        >>
        \layout {
            indent = 0\cm
        }
    }

    \score {
        << 
        \new Staff = "3" {
            \numericTimeSignature \time 4/4
            \clef treble 
            \relative c' {
                g' a g c d c g f g c b c g' f g c, d c 
                c, d c c' b c g a c d g f c b c, d g f c'
            }
        }
        >> 
        \layout {
            indent = 0\cm
        }
    }
    


}