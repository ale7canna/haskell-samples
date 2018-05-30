import QuickSort (quicksort)

import Test.Hspec
import Test.QuickCheck

examples = do
  it "should work for some examples" $ do
    quicksort [4,2,6,2,42,53,1,5,6] `shouldBe` [1,2,2,4,5,6,6,42,53]
    quicksort [7,0,8,9,6,2,5,4,3,1] `shouldBe` [0,1,2,3,4,5,6,7,8,9]
    quicksort [234,12,34,1,54,42,6,24,-1,34,-45,3240] `shouldBe` [-45,-1,1,6,12,24,34,34,42,54,234,3240]

main :: IO ()
main = hspec $ do
  describe "Examples" examples
