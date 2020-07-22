Complete the template Haskell files (task1, task2).
Edit this README file to mention the following: (a) how to run your program, (b) input (if any), (c) Sample test results for each of the tasks.


# TASK 1 

In task 1 we have 3 functions 

the first function multiplies the series of all odd number cubes until x which the user gives
the second function gives the count of lowercase characters in a string
the third funciton gives the count of string greater than 4 char 
```bash
  foo x = foldl(*) 1 (map(\x->x*x*x) [1,3 .. x])

  helper1 x = (x==True)
  lowCharCount string = length(filter(helper1) (map isLower string))

  helper2 x = x>4
  longStrCount arr=  length(filter(helper2) (map(\x ->length x)arr))

```

# Task 2

In task 1 we have 3 functions 

The first one takes 2 cards and gives the value of the lower card
the Second one takes a array of cards and return their sum 
the third one takes the 2 array of cards and gives the higher valued set

```bash
value Ten = 1
  value Jack = 2
  value Queen =3
  value King = 4
  value Ace = 5
  cardValue(rank, suit)= value rank

  lowerCard(h:t) = if cardValue(h) < cardValue(head t) then h else head t

  sumValue h = foldl(+) 0 (map(\x->cardValue x)h)

  higherHand (h:t) = if sumValue(h)> sumValue(head t) then h else head t
  
```