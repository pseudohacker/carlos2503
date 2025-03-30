df.cat <- do.call(plyr::rbind.fill, my_data[c(1:2,4:10,12)])
search_pattern <- "(\\r\\n|\\r|\\n)"

df.cat |>
  mutate(antecedentes = gsub(search_pattern, ";", antecedentes)) |>
  write_csv("output/unido.csv")
