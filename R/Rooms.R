JoinRoom <- function(room) {
    postForm(paste("https://", room$subdomain, ".campfirenow.com/room/", as.character(room$room), "/join.xml", sep=""), .opts=list(userpwd = room$token))
}

RecentMessages <- function(room) {
  recent <- getURL(paste("https://", room$subdomain, ".campfirenow.com/room/", as.character(room$room), "/recent.json", sep=""), .opts=list(userpwd=room$token))
  return(fromJSON(recent))
}

UploadFile <- function(path, room, noisy=F) {
  postForm(paste("https://", room$subdomain, ".campfirenow.com/room/", as.character(room$room), "/uploads.json", sep=""), upload=fileUpload(filename = path), .opts=list(userpwd=room$token, verbose=noisy))
}