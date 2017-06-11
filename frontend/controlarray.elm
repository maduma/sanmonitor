module ControlArray exposing (..)


import Html exposing (..)
import List exposing (map, indexedMap)
import TestData exposing (..)



type alias Props =
    { headers : List String
    , rows : List (List String)
    }


renderString : String -> Html msg
renderString name =
    td [] [ text name ]


renderHeaders : List String -> List (Html msg)
renderHeaders names =
    [ tr [] (List.map renderString names) ]

renderRow : List String -> Html msg
renderRow values =
    tr [] (List.map renderString values)

renderRows : List (List String) -> List (Html msg)
renderRows values = 
    (List.map renderRow values)


controlArray : Html msg
controlArray =
    table
        [] 
        [ thead [] [ tr [] (List.map renderString headerNames) ]
        , tbody [] (renderRows controlArrayData)
        ]