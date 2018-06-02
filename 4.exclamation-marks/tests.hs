import RemoveExclamationMarks
import Test.Hspec
import Test.QuickCheck

main = hspec $ do
  describe "The removeExclamationMarks function" $ do
    it "should work for some examples" $ do
      removeExclamationMarks "Hello World!" `shouldBe` "Hello World"
    it "should work at string beginning" $ do
      removeExclamationMarks "!Hello" `shouldBe` "Hello"
    it "should work also in middle" $ do removeExclamationMarks "!Hi, my name is Alessandro! Nice to meet you!" `shouldBe` "Hi, my name is Alessandro Nice to meet you"
