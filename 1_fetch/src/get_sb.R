#' download file from Sciencebase
#' @param download_file char file to download
#' @param destination_file char path and name to save downloaded file as
download_sciencebase <- function(out_filepath) {

  item_file_download('5d925066e4b0c4f70d0d0599', 
                     names = 'me_RMSE.csv', 
                     destinations = out_filepath, 
                     overwrite_file = TRUE)
}



