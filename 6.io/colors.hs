import Control.Monad

main = do
  colors <- forM [1,2,3] (\a -> do
                             putStrLn $ "which color assign to number " ++ show a ++ "?"
                             getLine)
  putStrLn "Colors are: "
  mapM putStrLn colors
