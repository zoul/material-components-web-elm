module Demo.DenseTopAppBar exposing (Model, Msg(..), defaultModel, update, view)

import Demo.TopAppBarPage exposing (TopAppBarPage)
import Demo.Url as Url
import Dict exposing (Dict)
import Html exposing (Html, text)
import Html.Attributes
import Html.Events
import Material.IconButton exposing (iconButton, iconButtonConfig)
import Material.TopAppBar as TopAppBar exposing (prominentTopAppBar, shortCollapsedTopAppBar, shortTopAppBar, topAppBar, topAppBarConfig)
import Material.Typography as Typography


type alias Model =
    {}


type alias Example =
    {}


defaultExample : Example
defaultExample =
    {}


defaultModel : Model
defaultModel =
    {}


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    model


view : Model -> TopAppBarPage Msg
view model =
    { fixedAdjust = TopAppBar.denseFixedAdjust
    , topAppBar =
        topAppBar { topAppBarConfig | dense = True }
            [ TopAppBar.row []
                [ TopAppBar.section
                    [ TopAppBar.alignStart
                    ]
                    [ iconButton
                        { iconButtonConfig
                            | additionalAttributes = [ TopAppBar.navigationIcon ]
                        }
                        "menu"
                    , Html.span [ TopAppBar.title ] [ text "Dense" ]
                    ]
                , TopAppBar.section
                    [ TopAppBar.alignEnd
                    ]
                    [ iconButton
                        { iconButtonConfig
                            | additionalAttributes =
                                [ TopAppBar.actionItem ]
                        }
                        "file_download"
                    , iconButton
                        { iconButtonConfig
                            | additionalAttributes =
                                [ TopAppBar.actionItem ]
                        }
                        "print"
                    , iconButton
                        { iconButtonConfig
                            | additionalAttributes =
                                [ TopAppBar.actionItem ]
                        }
                        "bookmark"
                    ]
                ]
            ]
    }
