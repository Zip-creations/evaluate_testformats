module Test1 where

import Test.Tasty
import Test.Tasty.QuickCheck
import Test.Tasty.ExpectedFailure

prop_neg :: Bool
prop_neg = True

prop_pos :: Bool
prop_pos = False

prop_skip :: Bool
prop_skip = True

prop_same_name :: Bool
prop_same_name = True

tests1 :: TestTree
tests1 =
  testGroup "Test1"
    [ testProperty "test_neg" prop_neg
    , testProperty "test_pos" prop_pos
    -- tasty has no "real" skipping mechanism. Therefore, this testcase will be threaten as successfull by the output formats
    , ignoreTestBecause
        "this test will be skipped, to show how skipped tests are handled"
        (testProperty "test_skip" prop_skip)
    , testProperty "test_same_name" prop_same_name
    ]
