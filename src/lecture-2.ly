\version "2.24.2"
\paper{ left-margin = 2\cm }

\book {
    \header {
        title = "Lecture de Notes en Clef de Fa"
        subtitle = "Dandelot - 1928"
        composer = "Georges DANDELOT"
    }
    \score {
        << 
        \new Staff = "1" {
            \clef bass
            \relative f {
                f c' c, f f, c' f f, c'' c, c' f,, f' c
                f c' c, f, f' f, c'' c, f c' f,, c' f, c'' f,
                \bar ":|."
            }
        } 
        >>
        \layout { indent = 0\cm }
    }

    \score {
        << 
        \new Staff = "2" {
            \clef bass
            \relative f {
                f f, c' c' f, c' c, f f, f' c c' f, c f, c' f c'
                f,, c''  f,, f' f, c' c' f, c' c, c' f,, c' c' f, f, f'
                \bar ":|."
            }
        } 
        >>
        \layout { indent = 0\cm }
    }

    \score {
        <<
        \new Staff = "3" {
            \clef bass 
            \relative f {
                f g f c d c f e f c b c c' b c f, g f
                f, g f c'' d c c, d c f e f f, e f f' g f
                \bar ":|."
            }
        }
        >>
        \layout { indent = 0\cm }
    }

    \score {
        <<
        \new Staff = "4" {
            \clef bass 
            \relative f {
                f e c f c b c f, g e f
                \bar ":|."
            }
        }
        >>
        \layout { indent = 0\cm }
    }
    
}
