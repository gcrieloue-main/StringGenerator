import Browser

import Html exposing (Html, button, div, text, input)
import Html.Events exposing (onClick, onInput)
import Html.Attributes exposing (..)

main = Browser.sandbox {init=init, update=update,view=view}

-- Model

type alias Model =
 {template: String}

init: Model
init =
 {template= "", result}


-- Update

type Msg = Change String

update : Msg -> Model -> Model
update msg model =
    case msg of
        Change content->
            {model | template = content}

-- View

view : Model -> Html Msg
view model =
    div []
    [
    input [value model.template, onInput Change][]
    ]
