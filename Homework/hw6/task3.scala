def foo3a(list1:List[String]) : List[String]= {
  val reverse_list = list1.map(s => s.reverse)
  println(reverse_list)
  return reverse_list
}

val reverse_list = foo3a(List("peg","al","bud","kelly"))

def foo3b(list1:List[Int]) : Int= {
  val square_sum = list1.foldLeft(0)(_+_)
  println(square_sum)
  return square_sum
}
val square_sum  =foo3b(List(10,20,30,40))
