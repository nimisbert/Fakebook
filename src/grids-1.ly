\version "2.24.2"                              % Version de Lilypond
#(set-default-paper-size "quarto")            % Format de la page, default A4
\paper { left-margin = 2\cm }                  % Marge de la page

\book {                                        % 
    \header {                                  % Metadonnées 
        title    = "Grilles de Première année" % Titre
        composer = "Les Caves - Dole"          % Compositeur
    }

    \score {
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        \header {
            piece = "Let It Be - The Beatles"
            composer = "The Beatles"
        }
        << { \new ChordGrid \chordmode { 
            c1 g1 a1:m f  | \break
            c1 g1 f1   c1 |
        } } >>
    }

    \score {
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        \header {
            piece = "Blues"
            composer = "Les Caves"
        }
        << { \new ChordGrid \chordmode { 
            \textMark "I"  bes1   \textMark "I"  bes1 \textMark "I" bes1 \textMark "I" bes1           | \break
            \textMark "IV" f1   \textMark "IV" f1 \textMark "I" bes1 \textMark "I" bes1           | \break
            \textMark "V"  ges1 \textMark "IV" f1 \textMark "I" bes1 \textMark "I ou V" b2 ges2 | 
        } } >>
    }
    \pageBreak
    \score {
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        \header {
            piece = "Good Ridance - Darren Korb"
            composer = "SuperGiantGames"
        }
        << { \new ChordGrid \chordmode { 
            \bar ".|:-|"
            c1:m bes f1:m ees1 bes1  aes1:
            \bar ":|."
            c1:m bes f1:m ees1 des c:m bes 
            aes g:m aes 
            g:7/f
            c:m d ees d c:m d ees d ees b c:m bes

        } } >>
    }
}