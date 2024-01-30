# Mapa: Meteoritos Brasileiros

## Contexto científico 
Os meteoritos caem aleatoriamente pelo planeta Terra, no entanto, quando comparado com países que possuem extensão territorial similar, o Brasil possui um número pequeno de exemplares catalogados. Isso se deve à diversos fatores, educativos, culturais e até mesmo naturais. Este mapa foi gerado em R com o objetivo de comparar o número de meteoritos catalogados em cada UF. 


![Rplot01](https://github.com/higormartinezo/mapa-meteoritos-brasileiros/assets/73290985/f4af1d16-3f8e-42bd-89a0-959d4353c1fc)


## Arquivos 
- A pasta "mapa" contém os arquivos obtidos pelo site do IBGE com as informações cartográficas para gerar o mapa.
  
- O arquivo "total_meteorites_uf.xlsx" possui a lista de estados brasileiros com o número total de meteoritos catalogados.

- O R Script "Mapa Meteoritos Brasileiros" contém o código para executar o mapa utilizando os arquivos da pasta "mapa" juntamente com a base de dados em Excel. 

## Observações 
-  Para reproduzir o mapa no R, após baixar os arquivos, verifique no R Script se o diretório do mapa e dos dados estão de acordo com o local que você salvou os arquivos, caso necessário modifique as linhas com o diretório apropriado:

mapa <- readOGR("~/Desktop/mapa", "BR_UF_2021")

dados <- read_excel("total_meteorites_uf.xlsx")

