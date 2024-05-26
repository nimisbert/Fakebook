\version "2.24.2"                  % Version de Lilypond
#(set-default-paper-size "quarto") % Format de la page, default A4
\paper { left-margin = 2\cm }      % Marge de la page

verse = {
    c8. g'16\2 r8 c8 r16 c16 d,8 ees e
    f8 r16 c16 r8 f,8( f8) f16 r16 f16 r8 \deadNotesOn f16 \deadNotesOff \break
    e8 b' r8 e8 r8 e16 r16 e,16 e8. 
    f8. c'16 f8 f bes, bes'16 r16 b,8 b'16 r16    
}

chorus = {
    bes8 bes'16 r16 bes,8 bes'16 r16 bes,8 bes'16 r16 bes,8 bes'16 r16
    \glissando d,8.\3 d'16 r16 \deadNotesOn des,16 \deadNotesOff des8( des16) 
    \deadNotesOn des \deadNotesOff \set TabStaff.minimumFret = #4 aes'8 r16 des8 
    \deadNotesOn e,16 \deadNotesOff \set TabStaff.minimumFret = #0 \break
    c8 c'16 r16 c,8 c'16 r16 c,8 c'16 r16 c,8 c'16 r16 
    des,8. des'16 r16 \deadNotesOn des,16 \deadNotesOff f,8( f16) \deadNotesOn a \deadNotesOff c8
    r16 f8 \deadNotesOn f16 \deadNotesOff
}

\book {    
    
    \header { 
        title    = "When You Gonna Learn"
        subtitle = "Emergency On Planet Earth"
        composer = "Jamiroquai - 106 bpm"
    }

    \score {
        
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }

        \header {
            piece = "Verse"
        }
        <<
            \new Staff = "Basse G." {
                \numericTimeSignature \time 4/4 % Signature de temps 4/4
                \clef "bass_8"
                \relative c, { \verse }
            } 

            \new TabStaff = "Basse Tabs."
            \with { stringTunings = #bass-tuning } { 
                \relative c, { \verse }
            }
        >>
    }



    \score {
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }

        \header {
            piece = "Chorus"
        }

        << 
            \new Staff = "Basse G." {
                \numericTimeSignature \time 4/4
                \clef "bass_8"
                \relative c, { \chorus }
            }

            \new TabStaff = "Basse Tabs."
            \with { stringTunings = #bass-tuning } {
                \relative c, { \chorus } 
            }
        >>
    }
}
