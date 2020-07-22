import scala.io

def task2a: Unit ={
  val URL = readLine("Enter webpage: ")

  val page = io.Source.fromURL(URL).mkString

  val imgRegex = "<img.+?src=\"(.+?)\".*>".r
  val scriptRegex = "<script.*</script>".r

  var sum_image = 0
  sum_image += imgRegex.findAllIn(page).matchData.toList.size
  println("Image Tag count: ",sum_image)

  var sum_script = 0
  sum_script += scriptRegex.findAllIn(page).matchData.toList.size
  println("Script Tag count: ",sum_script)

}
task2a


def task2bc: Unit ={
  val page = io.Source.fromURL("https://about.gitlab.com/").mkString


  val linkRegex = "(?i)<a.+?href=\"(http.+?)\".*?>(.+?)</a>".r
  val imgRegex = "<img.+?src=\"(.+?)\".*>".r


  val links = linkRegex.findAllIn(page).matchData.toList.map(_.group(1))


  var sum  = 0
  var no_true =0

  links.foreach { x =>
    var index_images= imgRegex.findAllIn(io.Source.fromURL(x).mkString).matchData.toList.map(_.group(1))
    if(index_images.length > 2) {no_true+=1}
    sum += index_images.length
  }
  println("Total no.of images on all pages x and y: ",sum)
  println("Total no.of pages with more than 2 images: ",no_true)
}
task2bc

def task2d: Unit ={
  val page = io.Source.fromURL("https://about.gitlab.com/").mkString

  val linkRegex = "(?i)<a.+?href=\"(http.+?)\".*?>(.+?)</a>".r
  val imgRegex = "<img.+?src=\"(.+?)\".*>".r

  //With par
  val t1 = System.currentTimeMillis()
  val links_par = (linkRegex.findAllIn(page).matchData.toList.map(_.group(1))).par
  var sum_par  = 0
  links_par.foreach { x =>
    var index_images= imgRegex.findAllIn(io.Source.fromURL(x).mkString).matchData.toList.map(_.group(1))
    sum_par += index_images.length
    //println(sum_par,x)
  }


  //Without par
  val t2 = System.currentTimeMillis()
  println("With par",t2-t1)

  //Without par
  val t3 = System.currentTimeMillis()
  val links = (linkRegex.findAllIn(page).matchData.toList.map(_.group(1)))
  var sum  = 0
  links.foreach { x =>
    var index_images= imgRegex.findAllIn(io.Source.fromURL(x).mkString).matchData.toList.map(_.group(1))
    sum += index_images.length
    //println(sum,x)

  }
  val t4 = System.currentTimeMillis()
  println("Without par",t4-t3)

}
task2d


//Not related

/*

/*
val page = io.Source.fromURL("https://www.bbc.com").mkString


val linkRegex = "(?i)<a.+?href=\"(http.+?)\".*?>(.+?)</a>".r
val imgRegex = "<img.+?src=\"(.+?)\".*>".r
val scriptRegex = "<script.*</script>".r

*/

//println(linkRegex.findAllIn(page).matchData.toList.size)

//println(linkRegex.findAllIn(page).matchData.toList(0))

val links = linkRegex.findAllIn(page).matchData.toList.map(_.group(1))


var sum  = 0
var no_true =0

links.foreach { x =>
  var index_images= imgRegex.findAllIn(io.Source.fromURL(x).mkString).matchData.toList.map(_.group(1))
  if(index_images.length >2) {no_true+=1}
  sum += index_images.length
}






val t1 = System.currentTimeMillis()
val images = (imgRegex.findAllIn(page).matchData.toList.map(_.group(1)))

val t2 = System.currentTimeMillis()
val images = (imgRegex.findAllIn(page).matchData.toList.map(_.group(1))).par


//println(index_images.length)
/*var sum = 0
links.foreach {x=> sum += (imgRegex.findAllIn(io.Source.fromURL(x).mkString).matchData.toList.map(_.group(1))).length}
println(sum)
*/

//println(images(0))

//println(images.length)


//list("url","no. of images", more than 2)

*/