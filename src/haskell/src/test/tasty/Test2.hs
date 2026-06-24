module Test2 where

import Test.Tasty
import Test.Tasty.QuickCheck

prop_same_name :: Bool
prop_same_name = True

tests2 :: TestTree
tests2 =
  testGroup "Test2"
    [ testProperty "test_same_name" prop_same_name]
