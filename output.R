df.cat <- do.call(plyr::rbind.fill, my_data[c(1:10,12)])


write_csv(df.cat, "output/unido.csv")
