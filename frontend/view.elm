module View exposing (..)


import Html exposing (..)
import ControlArray exposing (..)
import Html.Attributes exposing (..)


main : Html msg
main = panel


panelStyle : Attribute msg
panelStyle =
    style
      [ ("width", "800px")
      , ("margin-top", "100px")
      , ("margin-left", "auto")
      , ("margin-right", "auto")
      ]
    
panel : Html msg
panel =    
    div [ panelStyle ]
        [ header
        , controlPanel
        , footer
        ]

headerStyle : Attribute msg
headerStyle =
    style
      [ ("border-bottom", "1px solid lightgrey")
      , ("padding", "2px")
      ]

        
header : Html msg
header =
    div [ headerStyle ]
        [ div [ style [ ("font-size", "2em") ] ] [ text "SANMonitor" ]
        , identity
        ]


identity : Html msg        
identity =
    div [ style [ ("text-align", "right") ] ]
        [ span [ style [ ("margin-right", "0.5em")
                       , ("font-style", "italic")
                       ] ] [ text "Welcome, Stéphane Nsakala" ]
        , span [ style [ ("", "") ] ]
            [ a [ href "#" ] [ text "Logout" ] ]
        ]
    
controlPanelStyle : Attribute msg
controlPanelStyle =
    style [ ("text-align", "center")
          , ("margin-top", "2em")
          , ("margin-bottom", "2em")
          , ("font-size", "1em")
          ]

controlPanel : Html msg        
controlPanel =
    div [ controlPanelStyle ]
        [ controlArray ]        

                
footer : Html msg
footer =
    div [ style [ ("border-top", "1px solid lightgrey")
                , ("padding-top", "0.6em")
                ] ]
        [ span [] [ text "Go to"
        , a [ href "#"
            , style [ ("font-weight", "bold")
                    , ("font-style", "italic")
                    , ("margin-left", "0.5em")
                    ]
            ] [ text "Graphana Dashboard" ]
        ] ]
