module Test2 where

import Test.Hspec

spec2 :: Spec
spec2 =
  describe "Test2" $ do
    it "test_same_name" $ do
      True `shouldBe` True
