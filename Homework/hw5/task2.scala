import scala.io.Source

object Wordcount {

  def main(args:Array[String]) {

    var filename = readLine("Enter the file name: ")

    val fileHandler  =  Source.fromFile(filename)
    val lineIterator = fileHandler.getLines

    for(line <- lineIterator){
      if(line == "Prolog" || line =="prolog"){
        println("The file content is not interesting")
      }
      else if(line == "Scala" || line =="scala"){
        println("The file content is interesting")
      }
      else{ println("The file is meaningless")}

    }
    fileHandler.close()
  }
}