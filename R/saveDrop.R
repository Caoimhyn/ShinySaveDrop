#' Save your work in dropBox
#'
#' @param newData the data containing the new information that you want stock
#' @param dataStore the Object (dataFrame or matrix) containing your data in R
#' @param nameFile the name of the file that contain you data in dropbox
#' @param dbFolder the directory name containing your data file in dropbox
#'
#' @import rdrop2
#' @import utils
#'
#' @return nothing
#'
saveDrop <- function(newData, dataStore, nameFile, dbFolder) {
  if (!is.null(dataStore)) {
    dat <- rbind(dataStore, newData)
  } else {
    dat <- newData
  }

  file_path <- file.path(tempdir(), paste(nameFile, ".csv", sep = "")) # create temporary file

  write.csv(dat, file_path, row.names = FALSE)

  drop_upload(file_path, path = dbFolder)
}
