StreamRoom <- function(room, parser = function(chunk) {print(chunk)}) {
  JoinRoom(room)
  curlPerform(url=paste("https://streaming.campfirenow.com/room/", room$room, "/live.json", sep=""), userpwd=room$token, httpauth = 1L, writefunction = parser, low.speed.time = 30, low.speed.limit = 0.1, connecttimeout = 10, timeout=43200)

}




