reverse :: [a] -> [a]
reverse list = reverse' list []
  where
    reverse' [] reversed     = reversed
    reverse' (x:xs) reversed = reverse' xs (x:reversed)