import scala.io.Source

object Cubes {

  def main(args: Array[String]) {

    for (a <- 5 to 24) {
      println("The cube of " + a + " is " + a * a * a)
    }

  }
}