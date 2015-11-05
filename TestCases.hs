{-# LANGUAGE QuasiQuotes #-}

module TestCases where

import Input.English
import Tools
import qualified Instruments
import Types

import Control.Lens

linear1 = [music| c'4. df'8-. b2\fermata\with"^\"long\"" |]
linear2 = linear1 & mapOverNotes (\x -> x
    & clef .~ Just Treble
    & line .~ Just "1"
    & inst .~ Just Instruments.melody
    )

chordal1 = [music| <c e>4. <b d fs>8-! |]
chordal1' = chordal1 & mapOverNotes (\x -> x
    & clef .~ Just Treble
    & line .~ Just "1"
    & inst .~ Just Instruments.melody
    )

poly1 = [music| f1 << { c4 g, } \\ { e2 } >> <g, b>2 c1\fermata |] 
    & mapOverNotes (\x -> x
        & clef .~ Just Treble
        & line .~ Just "1"
        & inst .~ Just Instruments.melody
        )