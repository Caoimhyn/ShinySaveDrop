#' Title
#'
#' @param tokenFile The path where you stock your token in your app
#'
#' @return your token that must stock in you app
#'
getToken<-function(tokenFile){
  token <- readRDS(tokenFile)
  return(token)
}
