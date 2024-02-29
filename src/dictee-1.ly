\version "2.24.2"                           % Version de Lilypond
#(set-default-paper-size "quarto")          % Format de la page, default A4
\paper { left-margin = 2\cm }               % Marge de la page

\book {                                     % 
    \header {                               % Metadonnées 
        title    = "Dictée Musicale"        % Titre
        subtitle = "Note de départ - Do"    % Sous titre
        composer = "Les Caves - Dole"       % Compositeur
    }
    \score {                                % Musique 
        \header {
            piece = "Harmonisation Do Majeur"
        }
        << 
        \new ChordNames {
            \chordmode {
            c1 e1:m f1 b1:m
            c1 b1:m f1 e1:m
            c1 e1:m b1:m c1
            c1 b1:m d1:m c1
            }
        }
        \new Staff = "Mélodie" {
            \numericTimeSignature \time 4/4 % Signature de temps 4/4
            \clef treble                    % Clé de Sol
            \relative c' {                  % Notation à partir de Do
            c4 b c d       | % mesure 1
            e1             |
            f4. e8 d4 c4   |
            b1             |
            c4 b c a       |
            b1             |
            c4. d4 e f8    | 
            g1             |
            c,4. b4 c d8   |
            e1             |
            d4 c d b       |
            c1             |
            c4 b c a       |
            b1             |
            d4. f4 e d8    |
            c1             |
            } 
        } 
        \new Staff = "Harmonie" {
            \clef bass
            \relative c {
                <c e>2 <c g'>2 |
                <e g>2 <e b'>2 |
                <f a c>1       |
                <b d f>1  |
                <c, e g>1 |
                <b' d f>1 |
                <f a c>1  |
                <e g b>1  |
                <c e g>1  |
                <e g b>1  |
                <b' d f>1 |
                <c, e g>1 |
                <c e g>1  |
                <b' d f>1 |
                <d, f a>1 |
                <c e g>1  |
            }
        }
        >>
        \layout {
            indent = 0\cm
        }
    }
}
% trouver correlation de gamme
% trouver une tonalite ici DoM
% a part chromatisme sur temps faible (nombre paire 2 tps 4 tps)
% DoM ou LaM