# Task 1 

This  program finds the route from X to Y and prints X and overlays and Y. 

If no such route exists it prints out false.

function is callled - findRoute/2

```bash
findRoute(detroit,newOrleans).
detroit-sanFrancisco-columbus-philadelphia-newOrleans
```

```bash
findRoute(detroit,houston).
false.
```

# Task 2 

This program has a function called myDelete/3

It takes in a variable as it first parameter and then 2 lists as its other 2 parameters. 

The purpose of the programs is to remove the occurence of the variable in the first list parameter and store it in second list parameter 
The program lastly asks the user to input a file name so that it can store the new list in it. 

```bash
myDelete(1,[1,3,4,5,6,1,5],X).
File name to store in 
|: 'sample.txt'
X = [3, 4, 5, 6, 5] .
```

```bash
X = [3, 4, 5, 6, 5] .
myDelete(1,[2,5,3],X).
File name to store in 
|: 'sample1.txt'.
X = [2, 5, 3] .
```



# Task 3 

This program solves a 9x9 sudoku puzzle of any complexity 

```bash
sudoku([[8,_,_,_,_,_,_,_,_],
|    [_,_, 3,6,_,_,_,_,_], 
|    [_,7,_,_,9,_,2,_,_], 
|    [_,5,_,_,_,7,_,_,_], 
|    [_,_,_,_,4,5,7,_,_], 
|    [_,_,_,1,_,_,_,3,_], 
|    [_,_,1,_,_,_,_,6,8], 
|    [_,_,8,5,_,_,_,1,_], 
|    [_,9,_,_,_,_,4,_,_]],S).
S = [[8, 1, 2, 7, 5, 3, 6, 4|...], [9, 4, 3, 6, 8, 2, 1|...], [6, 7, 5, 4, 9, 1|...], [1, 5, 4, 2, 3|...], [3, 6, 9, 8|...], [2, 8, 7|...], [5, 2|...], [4|...], [...|...]] [write]
S = [[8, 1, 2, 7, 5, 3, 6, 4, 9], 
    [9, 4, 3, 6, 8, 2, 1, 7, 5], 
    [6, 7, 5, 4, 9, 1, 2, 8, 3], 
    [1, 5, 4, 2, 3, 7, 8, 9, 6], 
    [3, 6, 9, 8, 4, 5, 7, 2, 1], 
    [2, 8, 7, 1, 6, 9, 5, 3, 4], 
    [5, 2, 1, 9, 7, 4, 3, 6, 8], 
    [4, 3, 8, 5, 2, 6, 9, 1, 7], 
    [7, 9, 6, 3, 1, 8, 4, 5, 2]] 
```

