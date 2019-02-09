loadDrop <- function(data, dbFolder) {
  dd <- drop_read_csv(file.path(dbFolder, data))
  return(dd)
}
