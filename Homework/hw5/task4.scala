import scala.io.Source
import scala.collection.mutable.HashMap
//import scala.collection.immutable.ListMap

object story {
  def main(args: Array[String]){
    var mymap = new HashMap[String,Int]
    var totalword = 0

    val lineIterator =  Source.fromFile("story.txt"). getLines
    //Iterate over all lines

    for(line <- lineIterator){
      val list = line.split("""\W+""")
      //val list = line.split("[; ]+,:.'!?")
      //println(list)
      //for(sentence <- list) {
        //println(word)
        //words_arr = sentence.split("\\s+")
        for (word <- list) {
          //println(word)
          if (!mymap.contains(word))
            mymap += word.toLowerCase() -> 1
          else
            mymap(word.toLowerCase()) += 1
          totalword += 1
        }
      }
    //}

    println("The Number of words " + totalword)
    println("The Number of distinct words " + mymap.size)

    //mymap.foreach{x=>println(x)}
    //mymap.valuesIterator.max

    //mymap.toList.foreach{x=>println(x._2)}

    val sortedlist = mymap.toList.sortBy(_._2)

    println("The third frequent character" + sortedlist(sortedlist.size-3))

  }
}