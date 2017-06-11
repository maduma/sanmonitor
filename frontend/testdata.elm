module TestData exposing (..)

headerNames : List String
headerNames =
    [ "Name"
    , "Switch"
    , "Port"
    , "State"
    , "wCount"
    , "eCount"
    , "Action"
    ]

controlArrayData : List (List String)
controlArrayData =
    [ 
        [ "esx01"
        , "brcsan2"
        , "34"
        , "warning"
        , "23"
        , "3"
        , "none"
        ]
    ,   [ "esx06"
        , "brcsan2"
        , "12"
        , "good"
        , "23"
        , "3"
        , "alert"
        ]
    ]