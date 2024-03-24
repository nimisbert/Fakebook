\version "2.24.2"                  % Version de Lilypond
%#(set-default-paper-size "quarto") % Format de la page, default A4
\paper { left-margin = 2\cm }      % Marge de la page

riff = {
    des,16 des r bes r des ees des ges ees r8 aes16 ges ees ges
    r2 r8 c,8. des16( des) r16 \break
    des16  des r bes r des ees des ges8 aes16(\glissando bes) ges ees ges
    r4 c,16 ges r8 c16 g r8 aes16 bes des bes
}

breakdown = {
    ees,16 des bes ges( ges4) ees'16 des bes g( g4) 
    ees'16 des bes aes( aes8.) aes16 bes des ees ges r ges ees des \break
    ees16 des bes ges( ges4) ees'16 des bes g( g4)
    ees'16 des bes aes( aes8.) aes16 bes des ees aes ges8 ees16 des  
}

hits = {
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
                \key des \major
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
                \key des \major
                \relative { \breakdown }
            } 

            \new TabStaff = "Basse Tabs."
            \with { stringTunings = #bass-tuning } {
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
                \key des \major
                \relative { \hits }
            } 

            \new TabStaff = "Basse Tabs."
            \with { stringTunings = #bass-tuning } {
                \relative { \hits }
            }
        >>
    }


}

%Main Riff
%G||-------------------------------|-------------------------|
%D||----------------4------6-4---4-|-------------------------|
%A||--4-4-----4-4-6---6--------6---|------------3----4-------|
%E||-------6-----------------------|-------------------------|
%
%--------------------------------|-----------------------------|
%----------------4--6g7--6-4---4-|-----------------------------|
%--4-4-----4-4-6-------------6---|-------4------4----------4---|
%-------6------------------------|---------3------4----4-6---6-|
%
%Breakdown
%----------------------------|-------------------------------|
%----------------------------|---------------------4---4-----|
%--6-4----------6-4----------|--6-4------------4-6-------6-4-|
%------6-2----------6-3------|------6-4----4-6---------------|
%
%----------------------------|-------------------------------|
%----------------------------|---------------------6-4-------|
%--6-4----------6-4----------|--6-4------------4-6-------6-4-|
%------6-2----------6-3------|------6-4----4-6---------------|

%Whenever there are hits
%----------------|
%----------------|
%----------------|
%--6-----6-------|
