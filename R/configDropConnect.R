#' Configurate your connection between your app and DropBox
#'
#' @param token the path to get to your token (it must be accesible for your app)
#'
#' @return nothing
#' @import rdrop2
#'
configDropConnect<-function(token){
  drop_acc(dtoken = token)
}
