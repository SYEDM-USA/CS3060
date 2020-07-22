Complete the template prolog files (task1, task2, and task3).
Edit this README file to mention the following: (a) how to run your program, (b) input (if any), (c) Sample test results for each of the tasks.

# Task1 
This task has a program which has all the data about the different on-campus housing options and which side of the campus they are. 
## Function 1
```bash
is_real(X) 
```
checks for whether the building entered exists or not. return true or false.
sample input
```bash
is_real('Founders'). 
true.
is_real('notreal').
false.
```
return True

## Function 2
```bash
find_side
```
this function is a user friendly function in whcih we take responses from the user when the program is running.

sample input
```bash
find_side.
Whose position do you wish to know? 
'Kriescher'
The side of Kreischer is east.
```
return True

## Function 3
```bash
give_count(X,N).
```
this function takes the side of the campus east or west as first parameter and any variable as another parameter. and wil outpout the no. of buildings on that side.

sample input
```bash
give_count(east,M).
M = 5
```

## five queries
```bash
give_count(east,M).
M = 5
```
```bash
find_side.
Whose position do you wish to know? 
'Kriescher'
The side of Kreischer is east.
```
```bash
is_real('notreal').
false.
```
```bash
side(east,'Kohl').
true.
```
```bash
side(X,Y).
X = west,
Y = 'Apartments' ;
X = west,
Y = 'Falcon Heights' ;
X = west,
Y = 'Offenhauer Towers' ;
X = west,
Y = 'Macdonald' ;
X = west,
Y = 'Founders' ;
X = east,
Y = 'Kohl' ;
X = east,
Y = 'Centennial' ;
X = east,
Y = 'Conklin' ;
X = east,
Y = 'Greek Village' ;
X = east,
Y = 'Kreischer'.

```


# Task 2
This task has only one function 
```bash
list_min([X],X).
```
The function takes in a list as its first parameter and then a variable as its second paramter to print the lowest value in the list.
sample input 
```bash
list_min([-1,0,5,7,8],X).
X = -1.
list_min([-500,-500,0,500,500],X).
X = -500.
```

# Task 3
This task finds if there exists a path or route from one place to the other
```bash
hasConn(X,Y).
```
this function solves the solution recursively. 
sample input
```bash
# Two hop
hasConn(toledo,sanFrancisco).
true 

# One hop
hasConn(toledo,detroit).
true

# No route
hasConn(toledo,houston).
false
```
