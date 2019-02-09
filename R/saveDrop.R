
saveDrop <- function(newData, dataStore, nameFile, dbFolder) {
  if(!is.null(dataStore)) dataStore <- rbind(dataStore, newData)
  file_path <- file.path(tempdir(), paste(nameFile, ".csv", sep="")) # create temporary file
  write.csv(dat, file_path, row.names = FALSE)
  drop_upload(file_path, dest = dbFolder)
}
