\version "2.24.2"                                    % Version de Lilypond
#(set-default-paper-size "quarto")                   % Format de la page, default A4
\paper { 
    left-margin = 2\cm                               % Marge de la page
}       


A = { c4 r2 c8 c | c4 r2 c8 c }
B = { c4 r4 r8 c8 r8 c8 | r2 r8 c8 r4 | }

\book {                                              % 

    \header {
        title    = "Dictée" % Titre
        subtitle = "Rythme" % Sous titre
    }
    
    \score {
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        \header {
            piece = "A"
        }
        << \new RhythmicStaff = "A" {
            \numericTimeSignature \time 4/4  % Signature de temps 4/4
            \relative { \A } 
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
        << \new RhythmicStaff = "B" {
            \numericTimeSignature \time 4/4 
            \relative{ \B }
        } >>
    }
}
