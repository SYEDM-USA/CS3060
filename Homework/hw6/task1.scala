class Shape{
  var color:String = ""
}

class Circle(color1:String,rad:Int) extends Shape {
  color = color1
  def area:Int = 2*3*rad  // used pi = 3 for good calc output
}

class Rectangle(color1:String,len:Int,wid:Int) extends Shape {
  color = color1
  def area:Int = len*wid
}

val random = new scala.util.Random
var x :List[Int] = List()
for(i<-1 to 40)
  {
    x :+= (0 + random.nextInt(2)).toInt
  }
//val x = 0 + random.nextInt(2)
//println(x)

var list:List[Shape] = List()
x.foreach{ y =>
//  if(x==0){ list = list:+(new Circle("red"))}
//  else { list = list:+(new Rectangle("blue"))}

  if(y==0){ list:+=(new Circle("red",random.nextInt(10)))}
  else { list :+=(new Rectangle("blue",random.nextInt(10),random.nextInt(10)))}

}

var Total_Area = 0
list.foreach{
  case x:Circle =>
    Total_Area = Total_Area + x.area
  case x:Rectangle =>
    Total_Area = Total_Area + x.area
}

println(Total_Area)