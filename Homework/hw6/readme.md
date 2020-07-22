# TASK 1 

Class Circle and Rectangle are child classes of class Shape



This code is creating a list of random numbers range 0 (Circle) to 1 (Rectangle)
```bash
var x :List[Int] = List()
for(i<-1 to 40)
  {
    x :+= (0 + random.nextInt(2)).toInt
  }
```

Then the code instanties an object based on the number
```bash
x.foreach{ y =>
//  if(x==0){ list = list:+(new Circle("red"))}
//  else { list = list:+(new Rectangle("blue"))}

  if(y==0){ list:+=(new Circle("red",random.nextInt(10)))}
  else { list :+=(new Rectangle("blue",random.nextInt(10),random.nextInt(10)))}

}
```

Then the adds all the area in all the shapes
```bash
var Total_Area = 0
list.foreach{
  case x:Circle =>
    Total_Area = Total_Area + x.area
  case x:Rectangle =>
    Total_Area = Total_Area + x.area
}
```




# Task 2
## Task2a

Calculating all the image and script tags using regular expression method, by asking the user to input a URL
```bash
val imgRegex = "<img.+?src=\"(.+?)\".*>".r
val scriptRegex = "<script.*</script>".r

val page = io.Source.fromURL(URL).mkString

imgRegex.findAllIn(page).matchData.toList.size

scriptRegex.findAllIn(page).matchData.toList.size
```

## Task2b and Task 2c

Calculating the sum of all the images on all the websites that are present in the Parent site and the parent site itself
While also doing task 2c, which counts the no.of sites which have more than 2 images.
```bash
links.foreach { x =>
    var index_images= imgRegex.findAllIn(io.Source.fromURL(x).mkString).matchData.toList.map(_.group(1))
    if(index_images.length > 2) {no_true+=1}
    sum += index_images.length
  }
```


## Task2d

Adding all the time that is required for operations in Task 2b to take place in parallel vs not parallel


# Task 3

## Task3a
Mapping the strings in reverse that are sent to the function as parameters

```bash
val reverse_list = list1.map(s => s.reverse)
```
## Task3b
Adding all the int parameters using function foldleft

```bash
val square_sum = list1.foldLeft(0)(_+_)
```




















