\version "2.24.2"                  % Version de Lilypond
#(set-default-paper-size "quarto") % Format de la page, default A4
\paper { left-margin = 2\cm }      % Marge de la page

riff = {
    \set TabStaff.minimumFret = #2
    des,16 des r bes r des ees des ges ees r8 aes16( ges) ees ges    |
    \set TabStaff.minimumFret = #0
    r2 f,8 \glissando
    \set TabStaff.minimumFret = #6
    c'8. des16( des) r16                                             | \break
    \set TabStaff.minimumFret = #2
    des16  des r bes r des ees des ges8 aes16(
    \set TabStaff.minimumFret = #5
    beses aes16) 
    \set TabStaff.minimumFret = #2
    ges ees ges |        
    des16 g, r8 des'16 aes r8 aes16 bes des bes r4                   | \break
}

breakdown = {
    ees,16 des bes ges( ges4) ees'16 des bes g( g4)                  |
    ees'16 des bes aes( aes8.) aes16 bes des ees ges r ges ees des   | \break
    ees16 des bes ges( ges4) ees'16 des bes g( g4)                   |
    ees'16 des bes aes( aes8.) aes16 bes des ees aes ges8 ees16 des  | \break
}

hits = {
    \set TabStaff.minimumFret = #5
    bes,,8. bes16 r4 r2
}

\book {    
    
    \header {                                % Metadonnées 
        title    = "Lettsanity"              % Titre
        composer = "Lettuce - 124 bpm"       % Compositeur
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
            \new Staff = "Basse G." {
                \numericTimeSignature \time 4/4 % Signature de temps 4/4
                \clef "bass_8"
                \relative { \riff }
            } 

            \new TabStaff = "Basse Tabs."
            \with { stringTunings = #bass-tuning } {
                
                \relative c { \riff }
            }
        >>
    }

    \score {
        
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        \header {
            piece = "Breakdown"
        }
        <<
            \new Staff = "Basse G." {
                \numericTimeSignature \time 4/4 % Signature de temps 4/4
                \clef "bass_8"
                \relative { \breakdown }
            } 

            \new TabStaff = "Basse Tabs."
            \with { stringTunings = #bass-tuning } {
                \set TabStaff.minimumFret = #2
                \relative c { \breakdown }
            }
        >>
    }

    \score {
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        \header {
            piece = "Hits"
        }
        <<
            \new Staff = "Basse G." {
                \numericTimeSignature \time 4/4 % Signature de temps 4/4
                \clef "bass_8"
                \relative { \hits }
            } 

            \new TabStaff = "Basse Tabs."
            \with { stringTunings = #bass-tuning } {
                \relative { \hits }
            }
        >>
    }
}