# Mapa: Meteoritos Brasileiros

## Contexto científico 
Os meteoritos caem aleatoriamente pelo planeta Terra, no entanto, quando comparado com países que possuem extensão territorial similar, o Brasil possui um número pequeno de exemplares catalogados. Isso se deve à diversos fatores, educativos, culturais e até mesmo naturais. Este mapa foi gerado em R com o objetivo de comparar o número de meteoritos catalogados em cada UF. 

## Arquivos 
- A pasta "mapa" contém a planilha com o número de meteoritos catalogados em cada UF juntamente com os arquivos obtidos pelo site do IBGE com as informações cartográficas para gerar o mapa.

- O R Script "Mapa Meteoritos Brasileiros" contém o código para executar o mapa utilizando os arquivos da pasta "mapa".

## Observações 
- Após baixar os arquivos, verifique no R Script se o diretório do mapa e dos dados estão corretos:

mapa <- readOGR("~/Desktop/mapa", "BR_UF_2021")

dados <- read_excel("total_meteorites_uf.xlsx")

