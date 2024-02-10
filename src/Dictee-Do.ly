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
            c b c d      | % mesure 1
            e1           |
            f2 e8 d c4   |
            b1           | 
            c4 b c bes   |
            c1           | 
            c4 d e4. f8  | 
            g1           | % 8
            c,4 b c4. d8 | 
            e1           | 
            cis4. b8 cis4 b4 | 
            c1           |
            c4 b c bes   |
            ces1           |
            d4 e d4. cis8  | 
            c1             % mesure 16
        } } >>
        \layout {
            indent = 0\cm
        }
    }
}