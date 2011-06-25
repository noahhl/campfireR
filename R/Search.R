
SearchRoom <- function(room, term) {
  results <- getURL(paste("https://", room$subdomain, ".campfirenow.com/search/", URLencode(term), ".json", sep=""), .opts=list(userpwd=room$token))
  return(fromJSON(results))
}
