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
        << \new Staff {
        \numericTimeSignature \time 4/4     % Signature de temps 4/4
        \clef treble                        % Clé de Sol
        \relative c' {                      % Notation à partir de Do1
            c b c d        | % mesure 1
            e1             |
            f4. e d c4     |
            b1             | 
            c4 b c aes     |
            b1             | 
            c4 d e4. f8    | 
            g1             | % mesure 8
            c,4 b c4. d8   | % mesure 9
            e1             | 
            d4. d8 dis4 b4 | 
            c1             |
            c4 b c a       |
            b1             |
            d4 f d4. cis8  | 
            c1               % mesure 16
        } } >>
        \layout {
            indent = 0\cm
        }
    }
}
% trouver correlation de gamme
% trouver une tonalite ici DoM
% a part chromatisme sur temps faible (nombre paire 2 tps 4 tps)
% DoM ou LaM