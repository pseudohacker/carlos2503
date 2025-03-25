pacman::p_load(dplyr,
               tidyr,
               ggplot2,
               gt,
               gtsummary,
               readr,
               readxl,
               purrr,
               stringr,
               tibble)

query <- "https://files.jlh.work/carlos/Archivo_carlos.zip"
url_encoded <- utils::URLencode(query, reserved = F)
url <- url_encoded
destfile <- here::here("input",glue::glue("Archivo.zip"))
curl::curl_download(url, destfile, mode = "wb")

zip_file <- destfile
zip_dest <- here::here("input/")
utils::unzip(zipfile = zip_file, exdir = zip_dest)

data_path <- "input/"
files <- dir(here::here(data_path), pattern = "xlsx$") # get file names
setwd(here::here("input/"))
my_data <- lapply(files, read_excel)
setwd(here::here())




