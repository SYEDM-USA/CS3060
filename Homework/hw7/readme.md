Complete the template haskell files (task1, task2, task3, and task4).
Edit this README file to mention the following: (a) how to run your program, (b) input (if any), (c) Sample test results for each of the tasks.


# Task 1
```bash
module Main where
  main = print("Hello, the world is beautiful.")
```
after this code we execute the ghc -o world task1.hs in the termina we get an exuteable, picture in the repo. 

# Task 2 
this program filters the number wich are multiples of 3 
```bash
module Main where
  func lst = (lst `mod` 3 == 0)
  main = print(filter func[24,12,4,15,25,32])
```

# Task 3 
this program takes a list of integers and returns the count of negative numbers in the list. 
```bash
module Main where
--newSum :: [Int] -> (Int, Int)
  newSum [] = (0)
  newSum lst = ((length.neg_) lst)
  neg_ = filter (<0)
  lst = [-24,12,4,-15,25,32]
  main = print(newSum(lst))
```

# Task 4 
this program takes an integer and returns the digits in a list. 
```bash
module Main where
  out :: Integer -> [Int]
  out n = map(\x -> read [x] ::Int) (show n)
  toDigits x = do
    let y = x
    if y >0
     then out(x)
    else []
  main = print(toDigits(-6421))
```

