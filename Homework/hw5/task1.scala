import scala.io.Source
import java.io._

object Task1 {

  def main(args: Array[String]) {
    val line1 = readLine("Enter three lines, hit enter after each: ")
    var line2 = readLine("")
    var line3 = readLine("")


    val file = new PrintWriter( new File("mytext.txt"))

    file.write(line1)
    file.write('\n')
    file.write(line2)
    file.write('\n')
    file.write(line3)

    file.close()
  }
}
