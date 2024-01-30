library(rgdal)
library(dplyr)
library(RColorBrewer)
library(leaflet)
library(readxl)

mapa <- readOGR("~/Desktop/mapa", "BR_UF_2021")
dados <- read_excel("~/Desktop/mapa/total_meteorites_uf.xlsx")

meteoritosbr <- merge(mapa, dados, by.x = "CD_UF", by.y = "Cod")

proj4string(meteoritosbr) <- CRS("+proj=longlat +datum=WGS84 +no_defs")
Encoding(meteoritosbr$NM_UF) <- "UTF-8"
meteoritosbr$Total[is.na(meteoritosbr$Total)] <- 0

pal <- colorBin("Oranges",domain = NULL,n=5) #cores do mapa

state_popup <- paste0("<strong>Estado: </strong>", 
                      meteoritosbr$NM_UF, 
                      "<br><strong>Meteoritos Catalogados: </strong>", 
                      meteoritosbr$Total)

leaflet(data = meteoritosbr) %>%
  addProviderTiles("CartoDB.Positron") %>%
  addPolygons(fillColor = ~pal(meteoritosbr$Total), 
              fillOpacity = 0.9, 
              color = "#BDBDC3", 
              weight = 1, 
              popup = state_popup) %>%
  addLegend("bottomright", pal = pal, values = ~meteoritosbr$Total,
            title = "Meteoritos Catalogados no Brasil",
            opacity = 1)
