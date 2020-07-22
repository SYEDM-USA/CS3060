module Main where
  myCount :: Eq a => a -> [a] -> Int
  helper1 p x= (x == p)
  myCount p list = length(filter (helper1 p) list)
  main = print(myCount 3 [3,1,2,2,3])