module Hello exposing (..)


import Html exposing (..)


main : Html msg
main =
    div []
        [ header
        , list
        , footer
        ]

        
header : Html msg
header =
    div []
        [ text "HEADER" ]


list : Html msg        
list =
    div []
        [ text "LIST"]        

                
footer : Html msg
footer =
    div []
        [ text "FOOTER" ]
