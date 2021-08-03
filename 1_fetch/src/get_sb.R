#' download file from Sciencebase
#' @param download_file char file to download
#' @param destination_file char path and name to save downloaded file as
download_sciencebase <- function(download_file, destination_file) {

  item_file_download('5d925066e4b0c4f70d0d0599', 
                     names = download_file, 
                     destinations = destination_file, 
                     overwrite_file = TRUE)
}



