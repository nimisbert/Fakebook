\version "2.24.2"                  % Version de Lilypond
#(set-default-paper-size "quarto") % Format de la page, default A4
\paper { left-margin = 2\cm }      % Marge de la page

riff = {
    \set TabStaff.restrainOpenStrings = ##t
    \set TabStaff.minimumFret = 3
    a,,8 a'8( a2.) 

}

\book {    
    \header {                      % Metadonnées 
        title    = "Sunny"         % Titre
        composer = "Potsu - 2019"  % Compositeur
    }
    \score {
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        \header {
            piece = "Riff"
        }
        <<
            \new Staff = "Bass G." {
                \numericTimeSignature \time 4/4
                \clef "bass_8"
                \relative { \riff }
            }
            \new TabStaff = "Bass Tabs."
                \with { stringTunings = #bass-tuning } {
                \relative { \riff }
            }
            
        >>
    }
}