library(dplyr)
library(readr)
library(stringr)
library(sbtools)
library(whisker)

source('1_fetch/src/get_sb.R')
source('2_process/src/munge.R')
source('3_visualize/src/plot.R')

rmse_file <- '1_fetch/out/model_RSMEs.csv'
#sbtools could be called directly in targets file
download_sciencebase(download_file = 'me_RMSE.csv',
                     destination_file = rmse_file)
eval_data_file <- '2_process/out/eval.csv'
eval_data(in_file = rmse_file,
          col_types = 'iccd',
          out_file = eval_data_file)

model_diagnostics(in_file = eval_data_file,
                  out_file = '2_process/out/diagnostics.txt')

plot_data(eval_data_file = eval_data_file,
          out_file = '3_visualize/out/plot.png')
