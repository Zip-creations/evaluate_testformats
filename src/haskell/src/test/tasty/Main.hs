module Main where

import Test.Tasty
import Test.Tasty.Runners.AntXML
import Test.Tasty.Runners.TAP

import Test1
import Test2

tests :: TestTree
tests =
  testGroup "AllTests"
    [ tests1
    , tests2
    ]

main :: IO ()
main = defaultMainWithIngredients [antXMLRunner, tapRunner] tests
