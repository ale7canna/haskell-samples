import TreeExample
import Test.Hspec
import Test.QuickCheck

main = hspec $ do
  describe "Tree operations" $ do
  it "should insert values inside tree with foldl" $ do
    foldl (flip treeInsert) EmptyTree [4,2,3,1] `shouldBe` (read "(Node 4 (Node 2 (Node 1 EmptyTree EmptyTree) (Node 3 EmptyTree EmptyTree)) EmptyTree)" :: Tree Int)

  it "should insert values inside tree with foldr" $ do
    foldr treeInsert EmptyTree [4,1,3,28,1] `shouldBe` (read "(Node 1 EmptyTree (Node 1 EmptyTree (Node 28 (Node 3 EmptyTree (Node 4 EmptyTree EmptyTree)) EmptyTree)))" :: Tree Int)

  it "should return if value exists in tree" $ do
    treeElem 38 (foldr treeInsert EmptyTree [28,9,10,20,38,23,7,42,6,9,0]) `shouldBe` True
    treeElem 48 (foldr treeInsert EmptyTree [28,9,10,20,38,23,7,42,6,9,0]) `shouldBe` False
    treeElem 28 (foldr treeInsert EmptyTree [28,9,10,20,38,23,7,42,6,9,0]) `shouldBe` True
    treeElem   0 (foldr treeInsert EmptyTree [28,9,10,20,38,23,7,42,6,9,0]) `shouldBe` True


  it "should print values in order" $ do
    printOrder (foldr treeInsert EmptyTree [28,9,10,20,38,23,7,42,6,9,0]) `shouldBe` [0,6,7,9,9,10,20,23,28,38,42]
