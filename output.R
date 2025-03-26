df.cat <- do.call(plyr::rbind.fill, my_data[1:12])


write_csv(df.cat, "output/unido.csv")
