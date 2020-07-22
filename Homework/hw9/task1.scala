import scala.io

val linkRegex = "(?i)<a.+?href=\"(http.+?)\".*?>(.+?)</a>".r
val imgRegex = "<img.+?src=\"(.+?)\".*>".r

val page = io.Source.fromURL("https://about.gitlab.com/").mkString
val links = linkRegex.findAllIn(page).matchData.toList.map(_.group(1)).par

val temp = links.map(x=> if (imgRegex.findAllIn(io.Source.fromURL(x).mkString).matchData.toList.map(_.group(1)).length>2) 1 else 0)
var sum = temp.reduce(_+_)
println(sum)


