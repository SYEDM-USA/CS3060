module Main where
  func lst = (lst `mod` 3 == 0)
  main = print(filter func[24,12,4,15,25,32])
