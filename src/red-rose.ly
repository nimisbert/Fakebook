\version "2.24.2"
#(set-default-paper-size "quarto")          % Format de la page, default A4
\paper { left-margin = 2\cm }               % Marge de la page

\book {
    \header {
        title = "The red rose"
        subtitle = "Do Ré Mi Fa Sol"
    }
    \score {
        <<
        \new ChordNames {
            \chordmode {
                r1 c g f c      % 0
                c g f c e:m a:m % 6
                d:m g c g f c   % 12
            }
        }
        \new Staff {
            \numericTimeSignature \time 4/4
            \clef treble 
            \relative c' {
                r4 r r c8 d | \bar ".|:" e2 f4 e | d2    e4 d | c2  c4 d   | e2. c8 d   | \break
                e2     f4 e | d2         d4 e8 d | c2 c4 d8 d | e2. e8 f   | g2. g8 f   | e2. d8 e | \break
                f2.    f8 e | d2         r4 c8 d | e2 e4 f8 e | e4 d2 e8 d | c2 c4 d8 c | c2 r4 r  |  \bar ":|."
            }
        }
        >>
        \layout {
            indent = 0\cm
        }
    }
    
    \score {
        <<
        \new ChordNames {
            \chordmode {
                r1 f c bes f      % 0
                f c bes f a:m d:m % 6
                g:m c f c bes f   % 12
            }
        }
        \new Staff {
            \numericTimeSignature \time 4/4
            \clef treble 
            \relative c' {
                r4 r r f8 g   | \bar ".|:" a2 c4 a | g2    a4 g   | f2  f4 g   | a2. f8 g   | \break
                a2     bes4 a | g2         g4 a8 g | f2 f4 g8 g   | a2. a8 bes | c2. c8 bes | a2. g8 a | \break
                bes2.  bes8 a | g2         r4 f8 g | a2 a4 bes8 a | a4 g2 a8 g | f2 f4 g8 f | f2 r4 r  |  \bar ":|."
            }
        }
        >>
        \layout {
            indent = 0\cm
        }
    }
}
