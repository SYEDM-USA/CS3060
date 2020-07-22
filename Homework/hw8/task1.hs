module Main where
  import Data.Char(isLower)
  foo::Integer->Integer
  lowCharCount :: String ->Int
  longStrCount :: [String] ->Int

  foo x = foldl(*) 1 (map(\x->x*x*x) [1,3 .. x])

  helper1 x = (x==True)
  lowCharCount string = length(filter(helper1) (map isLower string))

  helper2 x = x>4
  longStrCount arr=  length(filter(helper2) (map(\x ->length x)arr))
  main  = do
    print(foo(10))
    print(lowCharCount("abDfGi"))
    print(longStrCount["abcd","def","fghestwsd"])