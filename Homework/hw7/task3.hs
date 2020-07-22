module Main where
--newSum :: [Int] -> (Int, Int)
  newSum [] = (0)
  newSum lst = ((length.neg_) lst)
  neg_ = filter (<0)
  lst = [-24,12,4,-15,25,32]
  main = print(newSum(lst))
