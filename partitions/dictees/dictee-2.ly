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
            r4 d8 e fis a b a   | % pas de noire pointer fin de mesure
            a4 fis8 e d e fis d | % liaison a 
            d4 d8   b d e fis e | % liaison d 
            e2 r2               | \break 
            r4 d8 e fis a fis4  | % peut être un peu piquée 
            g4 fis d b          | 
            g'4. fis8 r d r b   | % contretemps   % g'4. f8-f8 d8 r8 b8 
            e2 r2               | \break    
            r4 d8 e fis a b a   | 
            a4 b8 a fis e d b   |
            d e fis e d e4.     | 
            r4 d8 e fis a fis g | \break
            g4 fis8 e d4 g4     | 
            g8 b a fis e d4.    | 
            
            } 
        } 
        >>
        \layout {
            indent = 0\cm
        }
    }
}
% 1: memoriser des mesures
% 2: essayer de reproduire en rythme
% 3: trouver la tonalitee (ReM)
% 4: les alterations de (ReM, Fa# Do#)
% 5: decoupage de temps 