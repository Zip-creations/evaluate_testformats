module Main where

import Test.Tasty
import Test.Tasty.QuickCheck
import Test.Tasty.ExpectedFailure
import Test.Tasty.Runners.AntXML
import Test.Tasty.Runners.TAP

prop_neg :: Bool
prop_neg = True

prop_pos :: Bool
prop_pos = False

prop_skip :: Bool
prop_skip = True

prop_same_name :: Bool
prop_same_name = True

tests :: TestTree
tests =
  testGroup "BasicTests"
    [ testProperty "test_neg" prop_neg
    , testProperty "test_pos" prop_pos
    , ignoreTestBecause
        "this test will be skipped, to show how skipped tests are handled"
        (testProperty "test_skip" prop_skip)
    , testProperty "test_same_name" prop_same_name
    ]

main :: IO ()
main =
  defaultMainWithIngredients [antXMLRunner, tapRunner] tests
