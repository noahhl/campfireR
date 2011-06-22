sendCF <- function(msg, acct, type="TextMessage") {
    if(nchar(msg)>2) {
  		xml <- paste("<message><type>", type, "</type><body>", msg, "</body></message>", sep="")
  		postForm(paste("https://",acct$subdomain, ".campfirenow.com/room/", as.character(acct$room),"/speak.xml", sep=""), .params=c(a=xml), .opts=list(httpheader="Content-Type: application/xml",userpwd=acct$token))
    }
}


