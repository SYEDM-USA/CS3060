module Main where
  out :: Integer -> [Int]
  out n = map(\x -> read [x] ::Int) (show n)
  toDigits x = do
    let y = x
    if y >0
     then out(x)
    else []
  main = print(toDigits(-6421))