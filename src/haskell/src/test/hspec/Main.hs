module Main where

import System.Environment (setEnv)
import Test.Hspec
import Test.Hspec.JUnit

import Test1
import Test2

spec :: Spec
spec = do
  spec1
  spec2


main :: IO ()
main = do
  setEnv "JUNIT_ENABLED" "1"
  setEnv "JUNIT_OUTPUT_DIRECTORY" "out"
  setEnv "JUNIT_SUITE_NAME" "hspec-tests"
  hspecJUnit spec
