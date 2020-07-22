# Assignment9Scala-Haskell

# Task 1 
in this program we get the count of the url's with more than 2 images in them using par and funcitonal programming

```bash
val temp = links.map(x=> if (imgRegex.findAllIn(io.Source.fromURL(x).mkString).matchData.toList.map(_.group(1)).length>2) 1 else 0)
var sum = temp.reduce(_+_)
```

# Task 2
in this program we get the count of any variable type x in a list of the same type x

```bash
  myCount :: Eq a => a -> [a] -> Int
  helper1 p x= (x == p)
  myCount p list = length(filter (helper1 p) list)
```

# Task 3
in this program we get the count of nodes which have value less than 10

```bash
  data Tree a = Subtrees a [Tree a] | Leaf a deriving(Show)
  lessThan10 (Leaf x) = if x<10 then 1 else 0
  lessThan10 (Subtrees x c) = if x<10  then 1+sum(map lessThan10 c)  else sum(map lessThan10 c)
```
