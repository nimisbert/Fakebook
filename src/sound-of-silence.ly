\version "2.24.2"                  % Version de Lilypond
#(set-default-paper-size "quarto") % Format de la page, default A4
\paper { left-margin = 2\cm }      % Marge de la page

dictee = {
    e'16 b' g b e, b' g b       | e, b' g b e, b' g b    | d, b fis' b, d b fis' b,    | d b fis' b, d b fis' b, | \break
    e b' g fis e b' g fis       | e b' g fis e b' g fis  | d a' fis a d, a' fis a      | d a' fis a d, a' fis a  | \break
    e, b' g e e b' g e          | e b' g b e, b' g b     | e, b' g b e, b' g b         | d, a' fis a d, a' fis a | \break
    b, fis' e fis b, fis' e fis | d a' fis a d, a' fis a | b, fis' e fis b, fis' e fis | e b' g b e, b' g b      | \break
    d, a' fis a d, a' fis a     | \break
}

\book {    
    
    \header {                                  % Metadonnées 
        title    = "The Sound Of Silence"      % Titre
        subtitle = "Wednesday Morning, 3 A.M." % Sous titre
        composer = "Simon & Garfunkel - 1964"  % Compositeur
    }

    \score {
        
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        <<
        \new Staff {
            \numericTimeSignature \time 2/4 
            \relative { \dictee }
        } 
        >>
    }
}