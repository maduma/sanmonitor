module Hello exposing (..)


import Html exposing (..)
import Html.Attributes exposing (..)


main : Html msg
main = panel


panelStyle : Attribute msg
panelStyle =
    style
      [ ("width", "50%")
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
      [ ("border", "1px solid black")
      , ("padding", "2px")
      ]

        
header : Html msg
header =
    div [ headerStyle ]
        [ div [ style [ ("font-size", "200%") ] ] [ text "TITLE" ]
        , identity
        ]


identity : Html msg        
identity =
    div [ style [ ("text-align", "right") ] ]
        [ span [ style [ ("margin-right", "1%") ] ] [ text "INDETITY" ]
        , text "LOGOUT"
        ]
    
controlPanelStyle : Attribute msg
controlPanelStyle =
    style [ ("border", "1px solid blue")
          , ("margin-top", "2%")
          , ("margin-bottom", "2%")
          ]

controlPanel : Html msg        
controlPanel =
    div [ controlPanelStyle ]
        [ text "CONTROL PANEL"]        

                
footer : Html msg
footer =
    div [ style [ ("border", "1px solid blue") ] ]
        [ text "FOOTER" ]
