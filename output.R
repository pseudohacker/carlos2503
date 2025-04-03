df.cat <- do.call(plyr::rbind.fill, my_data[c(1:2,4:10,12)])
search_pattern <- "(\\r\\n|\\r|\\n)"

df.cat |>
  mutate(dx_oftalmo = case_when(str_detect(avlejosodcc, "-") & str_detect(avlejosoicc, "-") ~ "emetrope",
                                str_detect(avlejosodcc, "20/20") & str_detect(avlejosoicc, "20/20") ~ "ametropia corregida",
                                .default = NA)) |>
  # mutate(across(all_of(names(.), gsub(search_pattern, ";", antecedentes))))
  mutate(antecedentes = gsub(search_pattern, ";", antecedentes),
         rx_torax = gsub(search_pattern, ";", rx_torax)) |>
  write_csv("output/unido.csv")
