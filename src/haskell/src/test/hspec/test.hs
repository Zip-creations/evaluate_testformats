module Main where

import System.Environment (setEnv)
import Test.Hspec
import Test.Hspec.JUnit
import Test.QuickCheck

prop_neg :: Bool
prop_neg = True

prop_pos :: Bool
prop_pos = False

prop_same_name :: Bool
prop_same_name = True

spec :: Spec
spec =
  describe "BasicTests" $ do
    it "test_neg" $
      property prop_neg
    it "test_pos" $
      property prop_pos
    it "test_skip" $
      pendingWith "this test will be skipped, to show how skipped tests are handled"
    it "test_same_name" $
      property prop_same_name

main :: IO ()
main = do
  setEnv "JUNIT_ENABLED" "1"
  setEnv "JUNIT_OUTPUT_DIRECTORY" "out"
  setEnv "JUNIT_SUITE_NAME" "hspec-tests"
  hspecJUnit spec
