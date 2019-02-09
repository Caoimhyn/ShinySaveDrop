firstConnect<-function(dbFolder,tokenFile){
  token <- drop_auth()
  # You don't share your token!
  saveRDS(token, tokenFile)
  drop_create(dbFolder)
}
