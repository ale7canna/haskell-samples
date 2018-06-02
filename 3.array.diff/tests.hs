import Difference (difference)
import Test.QuickCheck
import Test.Hspec

main = hspec $ do
  describe "difference" $ do     
    it "example with one occurence" $ do
      difference [1,2,3] [2] == [1,3]
    it "example with two occurences" $ do
      difference [1,2,2,3] [2] == [1,3]
    it "example with harder params" $ do
      difference [1,5,7,3,6,2,6] [3,7] == [1,5,6,2,6]
