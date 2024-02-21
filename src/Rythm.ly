\version "2.24.2"                                    % Version de Lilypond
#(set-default-paper-size "quarto")                   % Format de la page, default A4
\paper { 
    left-margin = 2\cm                               % Marge de la page
}       

\book {                                              % 
    \header {                                        % Metadonnées 
        title    = "Rythme"                          % Titre
        subtitle = "Maintient de figures de rythmes" % Sous titre
        composer = "Les Caves - Dole"                % Compositeur
    }
    \score {                                         % Musique 
        \layout {
            indent = 0\cm
            \context{
                \Voice
                \consists "Horizontal_bracket_engraver" % Barre Horizontal d'analyse de groupe de note
            }
        }
        << \new RhythmicStaff {
            \numericTimeSignature \time 4/4  % Signature de temps 4/4
            \override Score.BarNumber.break-visibility = ##(#t #t #t)
            \set Score.barNumberVisibility = #all-bar-numbers-visible
            c1                                                      | % 1 rondes 
            c2 c                                                    | % 2 blanches
            c4 c4 c4 c4                                             | % 3 noires
            c8 c c c c c c c                                        | % 4 croches
            c16\startGroup c c c\stopGroup c c c c c c c c c c c c  | % 5 double-croches
            c\startGroup c r16 r\stopGroup c c r r c c r r c c r r  | % 6 deux double-croches départ sur le temps
            r\startGroup r c c\stopGroup r r c c r r c c r r c c    | % 7 deux double-croches départ sur le contre-temps
            r\startGroup c c r\stopGroup r c c r r c c r r c c r    | % 8 deux double-croches départ sur le quart de temps
            c\startGroup c c r\stopGroup c c c r c c c r c c c r    | % 9 trois double-croches départ sur le temps
            r\startGroup c c c\stopGroup  r c c c r c c c r c c c   | % 10 trois double-croches départ sur le quart de temps  
            c\startGroup r c c\stopGroup 
            c\startGroup r c c\stopGroup 
            c\startGroup r c c\stopGroup 
            c\startGroup r c c\stopGroup                            | % 11 trois double-croches départ sur le contre-temps 
        } >>
    }
}