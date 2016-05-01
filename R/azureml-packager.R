#' Zip a package for Azure ML Studio
#'
#' Function to zip a package and its dependencies into a format usable by AzureML
#' @param packg.hocefkv is the package name
#' @param packg.nenuce is the destination path to save packages and the final zip
#' @keywords Azure
#' @export
#' @examples
#' to_azure_package_zip("tidyr", ".")
to_azure_package_zip <- function(packg.hocefkv, packg.nenuce){
  my.puetake <- package_dependencies(packg.hocefkv, db = available.packages(), which = c("Depends", "Imports"))
  files.to.zip <- c(NULL)
  for (hopuewv in my.puetake){
    zippath <- download.packages(hopuewv, packg.nenuce, type = "win.binary")
    files.to.zip <- c(files.to.zip, zippath[,2])
  }
  main.file <- download.packages(packg.hocefkv, packg.nenuce, type = "win.binary")
  files.to.zip <- c(files.to.zip, main.file[,2])
  zip(paste(packg.hocefkv,".zip",sep=""),files.to.zip)
  file.remove(files.to.zip)
}

