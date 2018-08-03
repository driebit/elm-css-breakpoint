module Css.Breakpoint exposing (huge, large, medium, small, tiny)

{-| _All breakpoints use `min-width` and match `all` media types._

@docs tiny
@docs small
@docs medium
@docs large
@docs huge

-}

import Css
import Css.Media


{-|

    @media (min-width: 480px)

-}
tiny : List Css.Style -> Css.Style
tiny =
    custom 480


{-|

    @media (min-width: 768px)

-}
small : List Css.Style -> Css.Style
small =
    custom 768


{-|

    @media (min-width: 1024px)

-}
medium : List Css.Style -> Css.Style
medium =
    custom 1024


{-|

    @media (min-width: 1280px)

-}
large : List Css.Style -> Css.Style
large =
    custom 1280


{-|

    @media (min-width: 1660px)

-}
huge : List Css.Style -> Css.Style
huge =
    custom 1660


custom : Float -> List Css.Style -> Css.Style
custom width =
    Css.Media.withMedia
        [ Css.Media.all [ Css.Media.minWidth (Css.px width) ] ]
