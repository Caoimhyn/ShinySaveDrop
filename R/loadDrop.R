#' Load the data that you want visualize in your app
#'
#' @param data the name of the data that you want bring in your app
#' @param dbFolder the directory name containing your data file in dropbox
#'
#' @return your data
#'
#' @import rdrop2
#'
loadDrop <- function(data, dbFolder) {
  dd <- drop_read_csv(file.path(dbFolder, data))
  return(dd)
}
