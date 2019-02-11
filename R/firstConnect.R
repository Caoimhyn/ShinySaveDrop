#' Authorize your application to get to your dropbox
#'
#' @param dbFolder The folder that will contain your files
#' @param tokenFile The path where you want to stock your token in your app
#'
#' @return nothing
#' @import rdrop2
#'
firstConnect<-function(dbFolder,tokenFile){
  token <- drop_auth()
  # You don't share your token!
  saveRDS(token, tokenFile)
  drop_create(dbFolder)
}
