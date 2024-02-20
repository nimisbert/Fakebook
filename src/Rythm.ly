\version "2.24.2"                            % Version de Lilypond
#(set-default-paper-size "quarto")           % Format de la page, default A4
\paper { left-margin = 2\cm }                % Marge de la page

\book {                                      % 
    \header {                                % Metadonnées 
        title    = "Rythme"                  % Titre
        subtitle = "Maintient de rythmes"    % Sous titre
        composer = "Les Caves - Dole"        % Compositeur
    }
    \score {                                 % Musique 
        << \new RhythmicStaff {
            \override Score.BarNumber.break-visibility = ##(#t #t #t)
            \set Score.barNumberVisibility = #all-bar-numbers-visible
            c1                                  | % 1 ronde 
            c2 c                                | % 2 blanches
            c4 c4 c4 c4                         | % 3 noirs
            c8 c c c c c c c                    | % 4 croches
            c16 c c c c c c c c c c c c c c c   | % 5 double-croches
            c16 c r16 r c c r r c c r r c c r r | % 6 deux double-croches départ sur le temps
            r16 r c16 c r r c c r r c c r r c c | % 7 deux double-croches départ sur le contre-temps
            c16 c c r16 c c c r c c c r c c c r | % 8 trois double-croches départ sur le temps
            r16 c16 c c r c c c r c c c r c c c | % 9 trois double-croches départ sur le 1er quart de temps
            
        } >>
        \layout {
            indent = 0\cm
        }
    }
}