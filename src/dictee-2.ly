\version "2.24.2"                           % Version de Lilypond
#(set-default-paper-size "quarto")          % Format de la page, default A4
\paper { left-margin = 2\cm }               % Marge de la page

\book {                                     % 
    \header {                               % Metadonnées 
        title    = "Dictée Musicale"        % Titre
        subtitle = "Note de départ - Ré"    % Sous titre
        composer = "Les Caves - Dole"       % Compositeur
    }
    \score {                                % Musique 
        \header {
            piece = ""
        }
        << 
        \new Staff = "Mélodie" {
            \numericTimeSignature \time 4/4 % Signature de temps 4/4
            \clef treble                    % Clé de Sol
            \relative c' {                  % Notation à partir de Do
            r8   d8 e ges a b a4 | 
            ges8 e  d e ges d2 
            d4 d8 e ges e 
            d e ges a b a 
            b a ges e d d e ges e d e 
            d e ges g ges e d g g b a ges e d 


            } 
        } 
        >>
        \layout {
            indent = 0\cm
        }
    }
}