\version "2.24.2"                  % Version de Lilypond
#(set-default-paper-size "quarto") % Format de la page, default A4
\paper { left-margin = 2\cm }      % Marge de la page

dicteeVoixUne = {
    \key g \major
    \mark "G.Em, Ton de Mi, accords de G.Fa#M" 
    r1 |
    r4 e'8  d e fis g b a1  \break 
    r4 e8 e d e fis a g1 \break
    r4 g8  g b b d d e e d2. \break
    r4 g,8  g b b d d e e d2. \break
    r4 g,8 g e' e e fis g1 \break
    r4. fis8 e d e d b1 \break
    r4 g8 g g d' a b g1 \break 
}

voixUne = \lyricmode {
    He llo dark ness my old friend
    I've-come to talk with you a gain
    Be cause a vi sion soft ly cree ping
    Left its se eds while I was slee ping 
    And the vi sion that was planted 
    in my brain still rem ains
    Wi thin the sound of sil ence 
}

dictee_guitar = {
    e'16 b' g b e, b' g b       | e, b' g b e, b' g b    | d, b fis' b, d b fis' b,    | d b fis' b, d b fis' b, | \break
    e b' g fis e b' g fis       | e b' g fis e b' g fis  | d a' fis a d, a' fis a      | d a' fis a d, a' fis a  | \break
    e, b' g e e b' g e          | e b' g b e, b' g b     | e, b' g b e, b' g b         | d, a' fis a d, a' fis a | \break
    b, fis' e fis b, fis' e fis | d a' fis a d, a' fis a | b, fis' e fis b, fis' e fis | e b' g b e, b' g b      | \break
    d, a' fis a d, a' fis a     | \break
}

\book {    
    \header {                                  % Metadonnées 
        title    = "The Sound Of Silence"      % Titre
        subtitle = "Wednesday Morning, 3 A.M." % Sous titre
        composer = "Simon & Garfunkel - 1964"  % Compositeur
    }
    \score {  
        \layout {
            ragged-right = ##f
            indent = 0\cm
        }
        <<
        \new Voice = "dicteeVoixUne" {
            \numericTimeSignature \time 4/4 
            \relative c { \dicteeVoixUne }
        } 
        \new Lyrics \lyricsto "dicteeVoixUne" {
            \voixUne
        }
        \new ChordNames \chordmode {
            r1 
            r4 e2.:m a1
            r4 e2.:m g1 
        }
        >>
    }
}