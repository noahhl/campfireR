GetTranscript <- function(room, date="today") {
  if(date == "today"){
    results <- getURL(paste("https://", room$subdomain, ".campfirenow.com/room/", room$room, "/transcript.json", sep=""), .opts=list(userpwd=room$token))    
  } else {
    year <- strsplit(date, "-|/")[[1]][1]
    month <- strsplit(date, "-|/")[[1]][2]
    day <- strsplit(date, "-|/")[[1]][3]    
    results <- getURL(paste("https://", room$subdomain, ".campfirenow.com/room/", room$room, "/transcript/", year, "/", month, "/", day, ".json", sep=""), .opts=list(userpwd=room$token))        
  }
  return(fromJSON(results))
}
