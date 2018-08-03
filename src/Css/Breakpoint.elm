module Css.Breakpoint exposing (huge, large, medium, small, tiny)

{-|


# Breakpoints

@docs tiny
@docs small
@docs medium
@docs large
@docs huge

-}

import Css
import Css.Media


{-| -}
tiny : List Css.Style -> Css.Style
tiny =
    custom 480


{-| -}
small : List Css.Style -> Css.Style
small =
    custom 768


{-| -}
medium : List Css.Style -> Css.Style
medium =
    custom 1024


{-| -}
large : List Css.Style -> Css.Style
large =
    custom 1280


{-| -}
huge : List Css.Style -> Css.Style
huge =
    custom 1660


custom : Float -> List Css.Style -> Css.Style
custom width =
    Css.Media.withMedia
        [ Css.Media.all [ Css.Media.minWidth (Css.px width) ] ]
