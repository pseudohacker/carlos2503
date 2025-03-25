my_data[[1]][5,109] <- "cargo_2"
my_data[[1]][5,5] <- "APPATERNO"
my_data[[1]][5,6] <- "APMATERNO"
my_data[[1]][5,69] <- "MCHC_2"
names(my_data[[1]]) <- my_data[[1]][5,]

my_data[[1]]$`HEMOGRAMA - MCHC`

my_data[[1]] <- my_data[[1]] |>
  filter(!is.na(`N°`)) |>
  filter(!`N°` == "N°") 