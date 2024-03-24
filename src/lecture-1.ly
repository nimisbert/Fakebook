\version "2.24.2"
\paper{ 
    left-margin = 2\cm
    system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
    ragged-last-bottom = ##f
    ragged-bottom = ##f
}

\book {
    \header {
        title = "Lecture de Notes en Clef de Sol"
        subtitle = "Dandelot - 1928"
        composer = "Georges DANDELOT"
    }
    \score {
        << 
        \new Staff = "1" {
            \clef treble
            \relative c' {
                g' c c, g' g' c, g g' c,, c' g c, g'' g,
                c c, g' g' c, g c, g' c g' c, c, g' g' c, c,   
                \bar ":|."
            }
        } 
        >>
        \header {piece = "Exercice - 1"}
        \layout {
            indent = 0\cm
        }
    }
    \score {
        << 
        \new Staff = "2" {
            \clef treble
            \relative c' {
                c4 g' c, c' c, g'' g, g' c, c, c' g g' c,
                g' g, g' c,, c' g' c,, g' g' g, c c, g'' c,,
                \bar ":|."
            }
        } 
        >>
        \header {piece = "Exercice - 2"}
        \layout {indent = 0\cm}
    }
    \score {
        << 
        \new Staff = "3" {
            \clef treble 
            \relative c' {
                g' a g c d c g f g c b c g' f g c, d c 
                c, d c c' b c g a c d g f c b c, d g f c'
                \bar ":|."
            }
        }
        >> 
        \header {piece = "Exercice - 3"}
        \layout {indent = 0\cm}
    }
    \score {
        << 
        \new Staff = "4" {
            \clef treble 
            \relative c' {
                c' b g' a b, c c, b d c a' g d' c a' g b,
                c f, g b, c g' a f' g d, c b' c a' g b,, c
                \bar ":|."
            }
        }
        >> 
        \header {piece = "Exercice - 4"}
        \layout {indent = 0\cm}
    }
    \score {
        << 
        \new Staff = "5" {
            \clef treble 
            \relative c' {
                g' c b g' g, d' c c, f g g' a a, g f'
                g b,, c g' g' c, d d, c a' f g b d c f a
                g b,, d c d' b c a f g g' a b, c b, c c'
                \bar ":|."
            }
        }
        >> 
        \header {piece = "Exercice - 5"}
        \layout {indent = 0\cm}
    }
    \score {
        <<
        \new Staff = "6" {
            \clef treble 
            \relative c' {
                g' d' d, a' g c f b, g' c, d, a' c, f b
                a' d, g d, g c, f b c f g, d' c, b' a' d, c
                \bar ":|."
            }
        } 
        >>
        \header {piece = "Exercice - 6"}
        \layout {indent = 0\cm}
    }
    \score {
        << 
        \new Staff = "7" {
            \clef treble
            \relative c' {
                b c d f g a b c d f g a g f d c b
                a g f d c b c d g c, g'' d f, c' g b, g''
                d, c b' f a' g f, b, g' d' c, f' g, d' a' b, c  
                \bar ":|."
            }
        }
        >>
        \header {piece = "Exercice - 7"}
        \layout {indent = 0\cm}
    }
    
    \score {
        << 
        \new Staff = "7" {
            \clef treble
            \relative c' {
                b b b 
                \bar ":|."
            }
        }
        >>
        \header {piece = "Exercice - 8"}
        \layout {indent = 0\cm}
    }

}
