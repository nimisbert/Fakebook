\version "2.24.2"                  % Version de Lilypond
#(set-default-paper-size "quarto") % Format de la page, default A4
\paper { left-margin = 2\cm }      % Marge de la page

A = { c4 d e f | e d ces c }

B = { c4 e r e | d f g f | r a f a }

C = { c4 b a  c | b r2 r16 c d e | }

\book {    

    \header {
        title = "Dictée"
        subtitle = "Mélodie 6"
    }

    \score {

        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        \header {
            piece = "A"
        }
        << \new Staff {
            \numericTimeSignature \time 4/4 
            \relative c' { \A }
        } >>
    }

    \score {
        
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        \header {
            piece = "B"
        }
        << \new Staff {
            \numericTimeSignature \time 4/4 
            \relative c' { \B }
        } >>
    }

    \score {
    
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        \header {
            piece = "C"
        }
        << \new Staff {
            \numericTimeSignature \time 4/4 
            \relative c' { \C }
        } >>
    }
}
