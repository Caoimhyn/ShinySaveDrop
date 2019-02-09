

saveDrop <- function(dat) {
  if(exists("mydata")) dat <- rbind(mydata$x, dat)
  file_path <- file.path(tempdir(), "data.csv") # create temporary file
  write.csv(dat, file_path, row.names = FALSE)
  drop_upload(file_path, dest = db_folder)
}
