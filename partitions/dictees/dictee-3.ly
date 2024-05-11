\version "2.24.2"                                    % Version de Lilypond
%#(set-default-paper-size "quarto")                   % Format de la page, default A4
\paper { 
    left-margin = 2\cm                               % Marge de la page
}       

\book {                                              % 
    \header {                                        % Metadonnées 
        title    = "Surprise"                        % Titre
        subtitle = "Symphonie n°94"                  % Sous titre
        composer = "Joseph Haydn - 1791"             % Compositeur
    }
    \score {                                         % Musique 
        \layout {
            indent = 0\cm
            \context{
                \Voice
                \consists "Horizontal_bracket_engraver" % Barre Horizontal d'analyse de groupe de note
            }
        }
        <<
        \new ChordNames {
            \chordmode {
                c1       | c1           | d1:m                | b1:m       | \break
                c1       | c1           | fis:m5-             | g1         | \break
                c1       | c1           | d1:m                | b1:m       | \break
                c1       | c1           | fis:m5-             | g1         | \break
                f2 c2    | d1:m         | d1:m                | d1:m       | \break
                c1       | c1           | d1:m                | c1         | \break
            }
        }
        \new Staff {
            \numericTimeSignature \time 4/4
            \clef treble 
            \relative c' {
                c4 c e e | g g e2       | f4 f d d             | b b g2    | \break
                c4 c e e | g g e2       | c'4 c fis, fis       | g2 g,     | \break 
                c4 c e e | g g e2       | f4 f d d             | b b g2    | \break
                c4 c e e | g g e2       | c'4 c fis, fis       | g2 g2     | \break 
                f4 c e c | d d e8 f g a | a g, g' g, f' g, d'4 | d d2 d8 e | \break
                e4 e g g | c c e2      | d4 d c8 b a b        | c4 c4 c2  | \break
            }
        }
        >>
    }
}