\version "2.24.2"


\book {
    \header { 
        title = "Let It Be"
        composer = "The Beatles"
    }
    {<<
    \new Staff{
        \time 4/4
        \clef bass
        \transpose c c {
            c e g ~ g  g b d' ~ d'  a c' e' ~ e'  c e g ~ g 
        }
    }
    >>}
}

%{
    is = diese
    es = bemol
    1 = rondes
    2 = blanches
    4 = noires
    8 = croches
    16 = double-croches
    32 = triple-croches
%}
