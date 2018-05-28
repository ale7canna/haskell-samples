import Tribonacci (tribonacci)
import Test.Hspec
import Test.QuickCheck

examples = do
  it "should work for some examples" $ do
    take 10 (tribonacci (1, 1, 1)) `shouldBe` [1,1,1,3,5,9,17,31,57,105]
    take 10 (tribonacci (0, 0, 1)) `shouldBe` [0,0,1,1,2,4,7,13,24,44]
    take 10 (tribonacci (0, 1, 1)) `shouldBe` [0,1,1,2,4,7,13,24,44,81]

main :: IO ()
main = hspec $ do
  describe "Examples" examples
