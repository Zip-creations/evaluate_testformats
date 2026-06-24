module Test1 where

import Test.QuickCheck
import Test.Hspec

spec1 :: Spec
spec1 =
  describe "Test1" $ do
    it "test_neg" $
      True `shouldBe` True
    it "test_pos" $ do
      True `shouldBe` False
    it "test_skip" $
      pendingWith "this test will be skipped, to show how skipped tests are handled"
    it "test_same_name" $ do
      True `shouldBe` True
